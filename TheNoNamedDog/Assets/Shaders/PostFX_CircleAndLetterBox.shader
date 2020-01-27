// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32740,y:33254,varname:node_2865,prsc:2|custl-7525-OUT;n:type:ShaderForge.SFN_TexCoord,id:4219,x:31938,y:33237,cmnt:Default coordinates,varname:node_4219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Relay,id:8397,x:32163,y:33237,cmnt:Refract here,varname:node_8397,prsc:2|IN-4219-UVOUT;n:type:ShaderForge.SFN_Relay,id:4676,x:32523,y:33354,cmnt:Modify color here,varname:node_4676,prsc:2|IN-7542-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31938,y:33424,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32339,y:33354,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-8397-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_TexCoord,id:9552,x:31813,y:33961,varname:node_9552,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:1647,x:31751,y:34156,ptovrint:False,ptlb:LetterBoxSize,ptin:_LetterBoxSize,varname:node_1647,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4386122,max:1;n:type:ShaderForge.SFN_Multiply,id:5609,x:32163,y:34156,varname:node_5609,prsc:2|A-1647-OUT,B-1020-OUT;n:type:ShaderForge.SFN_Vector1,id:1020,x:31908,y:34268,varname:node_1020,prsc:2,v1:0.5;n:type:ShaderForge.SFN_OneMinus,id:7423,x:32349,y:34156,varname:node_7423,prsc:2|IN-5609-OUT;n:type:ShaderForge.SFN_Step,id:790,x:32561,y:34055,varname:node_790,prsc:2|A-5609-OUT,B-9552-V;n:type:ShaderForge.SFN_Step,id:6459,x:32561,y:34186,varname:node_6459,prsc:2|A-9552-V,B-7423-OUT;n:type:ShaderForge.SFN_Multiply,id:6313,x:32791,y:34124,varname:node_6313,prsc:2|A-790-OUT,B-6459-OUT;n:type:ShaderForge.SFN_Multiply,id:7525,x:32533,y:33513,varname:node_7525,prsc:2|A-7542-RGB,B-5648-OUT,C-2384-OUT;n:type:ShaderForge.SFN_Length,id:2939,x:31169,y:33592,varname:node_2939,prsc:2|IN-8820-OUT;n:type:ShaderForge.SFN_Step,id:3071,x:31338,y:33592,varname:node_3071,prsc:2|A-2939-OUT,B-4710-OUT;n:type:ShaderForge.SFN_ScreenPos,id:1005,x:30780,y:33584,varname:node_1005,prsc:2,sctp:1;n:type:ShaderForge.SFN_Slider,id:6567,x:30549,y:33816,ptovrint:False,ptlb:EndingCircle,ptin:_EndingCircle,varname:node_6567,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5844466,max:1;n:type:ShaderForge.SFN_Vector1,id:1986,x:30887,y:33982,varname:node_1986,prsc:2,v1:2;n:type:ShaderForge.SFN_OneMinus,id:3409,x:30954,y:33801,varname:node_3409,prsc:2|IN-6567-OUT;n:type:ShaderForge.SFN_Multiply,id:4710,x:31139,y:33801,varname:node_4710,prsc:2|A-3409-OUT,B-1986-OUT;n:type:ShaderForge.SFN_Add,id:8820,x:30988,y:33584,varname:node_8820,prsc:2|A-7736-XYZ,B-1005-UVOUT;n:type:ShaderForge.SFN_Vector4Property,id:7736,x:30731,y:33399,ptovrint:False,ptlb:CircleOffset,ptin:_CircleOffset,varname:node_7736,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Set,id:7201,x:31501,y:33592,varname:Cricle,prsc:2|IN-3071-OUT;n:type:ShaderForge.SFN_Set,id:2219,x:33112,y:34079,varname:etterBox,prsc:2|IN-6313-OUT;n:type:ShaderForge.SFN_Get,id:2384,x:32281,y:33619,varname:node_2384,prsc:2|IN-7201-OUT;n:type:ShaderForge.SFN_Get,id:5648,x:32281,y:33549,varname:node_5648,prsc:2|IN-2219-OUT;proporder:4430-1647-6567-7736;pass:END;sub:END;*/

Shader "Shader Forge/PostFX" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _LetterBoxSize ("LetterBoxSize", Range(0, 1)) = 0.4386122
        _EndingCircle ("EndingCircle", Range(0, 1)) = 0.5844466
        _CircleOffset ("CircleOffset", Vector) = (0,0,0,0)
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZTest Always
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif //UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _LetterBoxSize;
            uniform float _EndingCircle;
            uniform float4 _CircleOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
////// Lighting:
                float2 node_8397 = i.uv0; // Refract here
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(node_8397, _MainTex));
                float node_5609 = (_LetterBoxSize*0.5);
                float etterBox = (step(node_5609,i.uv0.g)*step(i.uv0.g,(1.0 - node_5609)));
                float Cricle = step(length((_CircleOffset.rgb+float3(float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg,0.0))),((1.0 - _EndingCircle)*2.0));
                float3 finalColor = (node_1672.rgb*etterBox*Cricle);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
