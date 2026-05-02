bool roughly_equals(float value1, float value2){
    return abs(value1 - value2) < 0.000001;
}

vec2 no_shadow_mapping(float sampled_alpha){
    vec2 mask = vec2(0.0, 0.0);
    if(roughly_equals(sampled_alpha, 252.0/255.0)) mask = vec2(1.0, 255.0/255.0);
    if(roughly_equals(sampled_alpha, 250.0/255.0)) mask = vec2(1.0, 250.0/255.0);
    if(roughly_equals(sampled_alpha, 105.0/255.0)) mask = vec2(1.0, 105.0/255.0);
    return mask;
}

vec2 emissive_mapping(float sampled_alpha){
    vec2 mask = vec2(0.0, 0.0);
    return mask;
}

// 完全消失的距离
#define FADE_START_DISTANCE 2.0
// 衰减速率
#define FADE_RATE 4.0
// 衰减开始的距离
#define FADE_END_DISTANCE 4.0


vec2 transparent_mapping(float sampled_alpha){
    vec2 mask = vec2(0.0, 0.0);
    return mask;
}