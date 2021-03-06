// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 VARt8;
COMPAT_VARYING     vec4 VARt7;
COMPAT_VARYING     vec4 VARt6;
COMPAT_VARYING     vec4 VARt5;
COMPAT_VARYING     vec4 VARt4;
COMPAT_VARYING     vec4 VARt3;
COMPAT_VARYING     vec4 VARt2;
COMPAT_VARYING     vec4 VARt1;
COMPAT_VARYING     vec2 VARtexCoord;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 VARtexCoord;
    vec4 VARt1;
    vec4 VARt2;
    vec4 VARt3;
    vec4 VARt4;
    vec4 VARt5;
    vec4 VARt6;
    vec4 VARt7;
    vec2 VARt8;
};
vec4 _oPosition1;
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0023;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _ps;
    vec2 _tex;
    out_vertex _TMP17;
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _r0023 = VertexCoord.x*MVPMatrix[0];
    _r0023 = _r0023 + VertexCoord.y*MVPMatrix[1];
    _r0023 = _r0023 + VertexCoord.z*MVPMatrix[2];
    _r0023 = _r0023 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0023;
    _tex = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _TMP17.VARt1 = vec4(_tex.x, _tex.y, _tex.x, _tex.y) + vec4(-_ps.x, -_ps.y, 0.00000000E+00, -_ps.y);
    _TMP17.VARt2 = vec4(_tex.x, _tex.y, _tex.x, _tex.y) + vec4(_ps.x, -_ps.y, 2.00000000E+00*_ps.x, -_ps.y);
    _TMP17.VARt3 = vec4(_tex.x, _tex.y, _tex.x, _tex.y) + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    _TMP17.VARt4 = vec4(_tex.x, _tex.y, _tex.x, _tex.y) + vec4(2.00000000E+00*_ps.x, 0.00000000E+00, -_ps.x, _ps.y);
    _TMP17.VARt5 = vec4(_tex.x, _tex.y, _tex.x, _tex.y) + vec4(0.00000000E+00, _ps.y, _ps.x, _ps.y);
    _TMP17.VARt6 = vec4(_tex.x, _tex.y, _tex.x, _tex.y) + vec4(2.00000000E+00*_ps.x, _ps.y, -_ps.x, 2.00000000E+00*_ps.y);
    _TMP17.VARt7 = vec4(_tex.x, _tex.y, _tex.x, _tex.y) + vec4(0.00000000E+00, 2.00000000E+00*_ps.y, _ps.x, 2.00000000E+00*_ps.y);
    _TMP17.VARt8 = _tex + vec2(2.00000000E+00*_ps.x, 2.00000000E+00*_ps.y);
    VARtexCoord = _tex;
    VARt1 = _TMP17.VARt1;
    VARt2 = _TMP17.VARt2;
    VARt3 = _TMP17.VARt3;
    VARt4 = _TMP17.VARt4;
    VARt5 = _TMP17.VARt5;
    VARt6 = _TMP17.VARt6;
    VARt7 = _TMP17.VARt7;
    VARt8 = _TMP17.VARt8;
    gl_Position = _r0023;
    return;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 VARt8;
COMPAT_VARYING     vec4 VARt7;
COMPAT_VARYING     vec4 VARt6;
COMPAT_VARYING     vec4 VARt5;
COMPAT_VARYING     vec4 VARt4;
COMPAT_VARYING     vec4 VARt3;
COMPAT_VARYING     vec4 VARt2;
COMPAT_VARYING     vec4 VARt1;
COMPAT_VARYING     vec2 VARtexCoord;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 VARtexCoord;
    vec4 VARt1;
    vec4 VARt2;
    vec4 VARt3;
    vec4 VARt4;
    vec4 VARt5;
    vec4 VARt6;
    vec4 VARt7;
    vec2 VARt8;
};
vec4 _ret_0;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
out_vertex _VAR1;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0035;
vec4 _C0069;
vec4 _C0079[1];
vec4 _C0081;
float _C0091;
vec4 _C0093;
float _C0103;
vec4 _C0105;
float _C0115;
vec4 _TMP116;
vec4 _TMP117;
vec4 _TMP118;
vec4 _TMP119;
vec4 _TMP120;
vec4 _TMP121;
vec4 _TMP122;
vec4 _TMP123;
vec4 _TMP124;
vec4 _TMP125;
vec4 _TMP126;
vec4 _TMP127;
vec4 _TMP128;
vec4 _TMP129;
vec4 _TMP130;
vec4 _TMP131;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _fp;
    vec4 _TMP26[1];
    vec4 _TMP27;
    vec4 _TMP29[4];
    vec4 _TMP30[4];
    vec4 _TMP31[4];
    _x0035 = VARtexCoord*TextureSize;
    _fp = fract(_x0035);
    _TMP0 = COMPAT_TEXTURE(Texture, VARt1.xy);
    _TMP1 = COMPAT_TEXTURE(Texture, VARt1.zw);
    _TMP2 = COMPAT_TEXTURE(Texture, VARt2.xy);
    _TMP3 = COMPAT_TEXTURE(Texture, VARt2.zw);
    _TMP4 = COMPAT_TEXTURE(Texture, VARt3.xy);
    _TMP5 = COMPAT_TEXTURE(Texture, VARtexCoord);
    _TMP6 = COMPAT_TEXTURE(Texture, VARt3.zw);
    _TMP7 = COMPAT_TEXTURE(Texture, VARt4.xy);
    _TMP8 = COMPAT_TEXTURE(Texture, VARt4.zw);
    _TMP9 = COMPAT_TEXTURE(Texture, VARt5.xy);
    _TMP10 = COMPAT_TEXTURE(Texture, VARt5.zw);
    _TMP11 = COMPAT_TEXTURE(Texture, VARt6.xy);
    _TMP12 = COMPAT_TEXTURE(Texture, VARt6.zw);
    _TMP13 = COMPAT_TEXTURE(Texture, VARt7.xy);
    _TMP14 = COMPAT_TEXTURE(Texture, VARt7.zw);
    _TMP15 = COMPAT_TEXTURE(Texture, VARt8.xy);
    _TMP31[0] = vec4(_TMP0.x, _TMP1.x, _TMP2.x, _TMP3.x);
    _TMP31[1] = vec4(_TMP4.x, _TMP5.x, _TMP6.x, _TMP7.x);
    _TMP31[2] = vec4(_TMP8.x, _TMP9.x, _TMP10.x, _TMP11.x);
    _TMP31[3] = vec4(_TMP12.x, _TMP13.x, _TMP14.x, _TMP15.x);
    _TMP30[0] = vec4(_TMP0.y, _TMP1.y, _TMP2.y, _TMP3.y);
    _TMP30[1] = vec4(_TMP4.y, _TMP5.y, _TMP6.y, _TMP7.y);
    _TMP30[2] = vec4(_TMP8.y, _TMP9.y, _TMP10.y, _TMP11.y);
    _TMP30[3] = vec4(_TMP12.y, _TMP13.y, _TMP14.y, _TMP15.y);
    _TMP29[0] = vec4(_TMP0.z, _TMP1.z, _TMP2.z, _TMP3.z);
    _TMP29[1] = vec4(_TMP4.z, _TMP5.z, _TMP6.z, _TMP7.z);
    _TMP29[2] = vec4(_TMP8.z, _TMP9.z, _TMP10.z, _TMP11.z);
    _TMP29[3] = vec4(_TMP12.z, _TMP13.z, _TMP14.z, _TMP15.z);
    _TMP27[0] = _fp.x*_fp.x*_fp.x;
    _TMP27[1] = _fp.x*_fp.x;
    _TMP27[2] = _fp.x;
    _TMP116.x = _TMP27[0];
    _TMP116.y = _TMP27[1];
    _TMP116.z = _TMP27[2];
    _TMP116.w = 1.00000000E+00;
    _C0069[0] = dot(vec4( -1.66666672E-01, 5.00000000E-01, -3.33333343E-01, 0.00000000E+00), _TMP116);
    _TMP117.x = _TMP27[0];
    _TMP117.y = _TMP27[1];
    _TMP117.z = _TMP27[2];
    _TMP117.w = 1.00000000E+00;
    _C0069[1] = dot(vec4( 5.00000000E-01, -1.00000000E+00, -5.00000000E-01, 1.00000000E+00), _TMP117);
    _TMP118.x = _TMP27[0];
    _TMP118.y = _TMP27[1];
    _TMP118.z = _TMP27[2];
    _TMP118.w = 1.00000000E+00;
    _C0069[2] = dot(vec4( -5.00000000E-01, 5.00000000E-01, 1.00000000E+00, 0.00000000E+00), _TMP118);
    _TMP119.x = _TMP27[0];
    _TMP119.y = _TMP27[1];
    _TMP119.z = _TMP27[2];
    _TMP119.w = 1.00000000E+00;
    _C0069[3] = dot(vec4( 1.66666672E-01, 0.00000000E+00, -1.66666672E-01, 0.00000000E+00), _TMP119);
    _TMP26[0] = vec4(_fp.y*_fp.y*_fp.y, _fp.y*_fp.y, _fp.y, 1.00000000E+00);
    _C0079[0] = _TMP26[0].x*vec4( -1.66666672E-01, 5.00000000E-01, -5.00000000E-01, 1.66666672E-01) + _TMP26[0].y*vec4( 5.00000000E-01, -1.00000000E+00, 5.00000000E-01, 0.00000000E+00) + _TMP26[0].z*vec4( -3.33333343E-01, -5.00000000E-01, 1.00000000E+00, -1.66666672E-01) + _TMP26[0].w*vec4( 0.00000000E+00, 1.00000000E+00, 0.00000000E+00, 0.00000000E+00);
    _TMP120.x = _C0069[0];
    _TMP120.y = _C0069[1];
    _TMP120.z = _C0069[2];
    _TMP120.w = _C0069[3];
    _C0081[0] = dot(_TMP31[0], _TMP120);
    _TMP121.x = _C0069[0];
    _TMP121.y = _C0069[1];
    _TMP121.z = _C0069[2];
    _TMP121.w = _C0069[3];
    _C0081[1] = dot(_TMP31[1], _TMP121);
    _TMP122.x = _C0069[0];
    _TMP122.y = _C0069[1];
    _TMP122.z = _C0069[2];
    _TMP122.w = _C0069[3];
    _C0081[2] = dot(_TMP31[2], _TMP122);
    _TMP123.x = _C0069[0];
    _TMP123.y = _C0069[1];
    _TMP123.z = _C0069[2];
    _TMP123.w = _C0069[3];
    _C0081[3] = dot(_TMP31[3], _TMP123);
    _C0091 = _C0079[0].x*_C0081[0] + _C0079[0].y*_C0081[1] + _C0079[0].z*_C0081[2] + _C0079[0].w*_C0081[3];
    _TMP124.x = _C0069[0];
    _TMP124.y = _C0069[1];
    _TMP124.z = _C0069[2];
    _TMP124.w = _C0069[3];
    _C0093[0] = dot(_TMP30[0], _TMP124);
    _TMP125.x = _C0069[0];
    _TMP125.y = _C0069[1];
    _TMP125.z = _C0069[2];
    _TMP125.w = _C0069[3];
    _C0093[1] = dot(_TMP30[1], _TMP125);
    _TMP126.x = _C0069[0];
    _TMP126.y = _C0069[1];
    _TMP126.z = _C0069[2];
    _TMP126.w = _C0069[3];
    _C0093[2] = dot(_TMP30[2], _TMP126);
    _TMP127.x = _C0069[0];
    _TMP127.y = _C0069[1];
    _TMP127.z = _C0069[2];
    _TMP127.w = _C0069[3];
    _C0093[3] = dot(_TMP30[3], _TMP127);
    _C0103 = _C0079[0].x*_C0093[0] + _C0079[0].y*_C0093[1] + _C0079[0].z*_C0093[2] + _C0079[0].w*_C0093[3];
    _TMP128.x = _C0069[0];
    _TMP128.y = _C0069[1];
    _TMP128.z = _C0069[2];
    _TMP128.w = _C0069[3];
    _C0105[0] = dot(_TMP29[0], _TMP128);
    _TMP129.x = _C0069[0];
    _TMP129.y = _C0069[1];
    _TMP129.z = _C0069[2];
    _TMP129.w = _C0069[3];
    _C0105[1] = dot(_TMP29[1], _TMP129);
    _TMP130.x = _C0069[0];
    _TMP130.y = _C0069[1];
    _TMP130.z = _C0069[2];
    _TMP130.w = _C0069[3];
    _C0105[2] = dot(_TMP29[2], _TMP130);
    _TMP131.x = _C0069[0];
    _TMP131.y = _C0069[1];
    _TMP131.z = _C0069[2];
    _TMP131.w = _C0069[3];
    _C0105[3] = dot(_TMP29[3], _TMP131);
    _C0115 = _C0079[0].x*_C0105[0] + _C0079[0].y*_C0105[1] + _C0079[0].z*_C0105[2] + _C0079[0].w*_C0105[3];
    _ret_0 = vec4(_C0091, _C0103, _C0115, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
