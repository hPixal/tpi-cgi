#version 330 core

const float colorOffsetIntensity = 1.3;
const float range = 0.05;
const float noiseQuality = 250.0;
const float noiseIntensity = 0.0088;
const float offsetIntensity = 0.02;

out vec4 fragColor;
in vec3 fragPosition;

uniform sampler2D screenTexture;
uniform float u_time;
uniform vec2 u_res;

float rand(vec2 co)
{
    return fract(sin(dot(co.xy ,vec2(12.9898,78.233))) * 43758.5453);
}

float verticalBar(float pos, float uvY, float offset)
{
    float edge0 = (pos - range);
    float edge1 = (pos + range);

    float x = smoothstep(edge0, pos, uvY) * offset;
    x -= smoothstep(pos, edge1, uvY) * offset;
    return x;
}

void main()
{
	vec2 uv = fragPosition.xy / u_res.xy;
    
    for (float i = 0.0; i < 0.71; i += 0.1313)
    {
        float d = mod(u_time * i, 1.7);
        float o = sin(1.0 - tan(u_time * 0.24 * i));
    	o *= offsetIntensity;
        uv.x += verticalBar(d, uv.y, o);
    }
    
    float uvY = uv.y;
    uvY *= noiseQuality;
    uvY = float(int(uvY)) * (1.0 / noiseQuality);
    float noise = rand(vec2(u_time * 0.00001, uvY));
    uv.x += noise * noiseIntensity;

    vec2 offsetR = vec2(0.006 * sin(u_time), 0.0) * colorOffsetIntensity;
    vec2 offsetG = vec2(0.0073 * (cos(u_time * 0.97)), 0.0) * colorOffsetIntensity;
    
    float r = texture(screenTexture, uv + offsetR).r;
    float g = texture(screenTexture, uv + offsetG).g;
    float b = texture(screenTexture, uv).b;

    vec4 tex = vec4(r, g, b, 1.0);
    fragColor = tex;
}