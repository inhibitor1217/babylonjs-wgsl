struct __RANDOM_SINE_FRACT__RandomSeed {
  a: vec4<f32>,
  b: f32,
};

const __RANDOM_SINCE_FRACT__randomSeed: __RANDOM_SINE_FRACT__RandomSeed = __RANDOM_SINE_FRACT__RandomSeed(
  vec4<f32>(
    12.9898,
    78.233,
    37.719,
    63.137,
  ),
  43758.5453,
);

fn RANDOM_SINE_FRACT__random__f32(value: f32) -> f32 {
  return fract(sin(value * __RANDOM_SINCE_FRACT__randomSeed.a.x) * __RANDOM_SINCE_FRACT__randomSeed.b);
}

fn RANDOM_SINE_FRACT__random__f32_2d(value: vec2<f32>) -> f32 {
  return fract(sin(dot(value, __RANDOM_SINCE_FRACT__randomSeed.a.xy)) * __RANDOM_SINCE_FRACT__randomSeed.b);
}

fn RANDOM_SINE_FRACT__random__f32_3d(value: vec3<f32>) -> f32 {
  return fract(sin(dot(value, __RANDOM_SINCE_FRACT__randomSeed.a.xyz)) * __RANDOM_SINCE_FRACT__randomSeed.b);
}

fn RANDOM_SINE_FRACT__random__f32_4d(value: vec4<f32>) -> f32 {
  return fract(sin(dot(value, __RANDOM_SINCE_FRACT__randomSeed.a)) * __RANDOM_SINCE_FRACT__randomSeed.b);
}
