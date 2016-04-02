precision mediump float;
uniform vec2  mouse;
uniform vec2  prevMouse;
uniform float time;
uniform vec2  resolution;
uniform sampler2D backBuffer;

const float PI = 3.141592;
const float PI2 = PI * 2.0;

void main(void){
  vec2 p = (gl_FragCoord.xy * 2.0 - resolution) / min(resolution.x, resolution.y);

  // float l = length(p);
  // float l = sin(length(p));
  // float l = sin(length(p * 50.0));
  // float l = 0.2 / abs(sin(length(p * 50.0) - time * 10.0));
  float r = 0.2 / abs(sin(length(p * 50.0) - time * 15.0));
  float g = 0.2 / abs(sin(length(p * 50.0) - time * 10.0));
  float b = 0.2 / abs(sin(length(p * 50.0) - time * 7.0));
  float t = sin((atan(p.x, p.y) + PI) / PI2 * 100.0);
  gl_FragColor = vec4(vec3(r, g, b) * t, 1.0);
}
