#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:config.glsl>

uniform sampler2D Sampler0;

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
#ifdef PER_FACE_LIGHTING
in vec4 vertexPerFaceColorBack;
in vec4 vertexPerFaceColorFront;
#else
in vec4 vertexColor;
#endif
in vec4 lightMapColor;
in vec4 overlayColor;
in vec2 texCoord0;
in vec4 vertexColorNoShadow;

out vec4 fragColor;

void main() {
    float sampled_alpha = textureLod(Sampler0, texCoord0, 0).a;
    vec2 no_shadow_vector = no_shadow_mapping(sampled_alpha);
    vec2 emissive_vector = emissive_mapping(sampled_alpha);
    vec2 transparent_vector = transparent_mapping(sampled_alpha);
    
    vec4 color = texture(Sampler0, texCoord0);
    bool has_no_shadow = roughly_equals(no_shadow_vector.x, 1.0);
    bool has_emissive = roughly_equals(emissive_vector.x, 1.0);
    if(has_no_shadow) color.a = no_shadow_vector.y;
    if(has_emissive) color.a = max(color.a, emissive_vector.y);
    
    if(roughly_equals(transparent_vector.x, 1.0)){
        color.a = transparent_vector.y;
        float fade_span = max(FADE_END_DISTANCE - FADE_START_DISTANCE, 0.0001);
        float fade_factor = clamp((sphericalVertexDistance - FADE_START_DISTANCE) / fade_span, 0.0, 1.0);
        color.a *= pow(fade_factor, FADE_RATE);
    }

#ifdef ALPHA_CUTOUT
    if (color.a < ALPHA_CUTOUT) {
        discard;
    }
#endif
#ifdef PER_FACE_LIGHTING
    if(roughly_equals(no_shadow_vector.x, 0.0)) color *= (gl_FrontFacing ? vertexPerFaceColorFront : vertexPerFaceColorBack);
#else
    if(roughly_equals(no_shadow_vector.x, 0.0)){color *= vertexColor;}else{color *= vertexColorNoShadow;}
#endif
    color *= ColorModulator;
#ifndef NO_OVERLAY
    color.rgb = mix(overlayColor.rgb, color.rgb, overlayColor.a);
#endif
#ifndef EMISSIVE
    if(roughly_equals(emissive_vector.x, 0.0)) color *= lightMapColor;
#endif
    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
    // if(!has_emissive) fragColor = vec4(1.0, 0.0, 0.0, 1.0);
}
