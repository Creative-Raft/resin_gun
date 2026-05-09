#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:config.glsl>

uniform sampler2D Sampler0;

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec4 vertexColor;
in vec4 vertexColorNoShadow;
in vec4 vertexColorEmissive;
in vec2 texCoord0;

out vec4 fragColor;

void main() {
    float sampled_alpha = textureLod(Sampler0, texCoord0, 0).a;
#ifdef ALPHA_CUTOUT
    if (sampled_alpha < ALPHA_CUTOUT) {
        discard;
    }
#endif

    vec2 no_shadow_vector = no_shadow_mapping(sampled_alpha);
    vec2 emissive_vector = emissive_mapping(sampled_alpha);
    vec2 transparent_vector = transparent_mapping(sampled_alpha);

    vec4 color = texture(Sampler0, texCoord0) * ColorModulator;
    bool has_no_shadow = roughly_equals(no_shadow_vector.x, 1.0);
    bool has_emissive = roughly_equals(emissive_vector.x, 1.0);

    if (has_no_shadow) color.a = no_shadow_vector.y;
    if (has_emissive) color.a = min(color.a, emissive_vector.y);

    if (has_no_shadow && has_emissive) {
        color *= vertexColorNoShadow * vertexColorEmissive;
    } else if (has_no_shadow) {
        color *= vertexColorNoShadow;
    } else if (has_emissive) {
        color *= vertexColorEmissive;
    } else {
        color *= vertexColor;
    }

    if (roughly_equals(transparent_vector.x, 1.0)) {
        color.a = transparent_vector.y;
        float fade_span = max(FADE_END_DISTANCE - FADE_START_DISTANCE, 0.0001);
        float fade_factor = clamp((sphericalVertexDistance - FADE_START_DISTANCE) / fade_span, 0.0, 1.0);
        color.a *= pow(fade_factor, FADE_RATE);
    }

    if (color.a < 0.1) {
        discard;
    }

    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}
