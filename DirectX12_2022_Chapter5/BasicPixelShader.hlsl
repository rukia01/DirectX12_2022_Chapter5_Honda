#include "BasicShaderHeader.hlsli"

float4 BasicPS(Output input) : SV_TARGET{
	//return float4(input.uv, 1, 1);
	//return float4(tex.Sample(smp, input.uv));
	/*
	float c;
	if (input.uv.x * 15 % 2 < 1)
	{
		c = 1;
	}
	else
	{
		c = 0;
	}
	*/
	return float4(0,step(input.uv.x * 4 % 2, 1), 0, 1) + tex.Sample(smp, input.uv);
}