// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34147,y:32218,varname:node_3138,prsc:2|custl-5578-OUT;n:type:ShaderForge.SFN_LightVector,id:2875,x:32056,y:32772,varname:node_2875,prsc:2;n:type:ShaderForge.SFN_Dot,id:9334,x:32255,y:32587,varname:node_9334,prsc:2,dt:1|A-8981-OUT,B-2875-OUT;n:type:ShaderForge.SFN_Multiply,id:5015,x:32474,y:32597,varname:node_5015,prsc:2|A-9334-OUT,B-4353-OUT;n:type:ShaderForge.SFN_If,id:9154,x:32040,y:33796,varname:node_9154,prsc:2|B-1482-OUT,GT-7487-OUT,EQ-1482-OUT,LT-1482-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9659,x:31746,y:33808,ptovrint:False,ptlb:ShadowThreshold,ptin:_ShadowThreshold,varname:node_9659,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_Vector1,id:1482,x:31746,y:33880,varname:node_1482,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Vector1,id:7487,x:31746,y:33959,varname:node_7487,prsc:2,v1:1;n:type:ShaderForge.SFN_LightAttenuation,id:4353,x:32278,y:32772,varname:node_4353,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:8981,x:32056,y:32587,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:4546,x:32673,y:32809,ptovrint:False,ptlb:ShadowSteps,ptin:_ShadowSteps,varname:node_4546,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Multiply,id:5375,x:32740,y:32576,varname:node_5375,prsc:2|A-5015-OUT,B-4546-OUT;n:type:ShaderForge.SFN_Floor,id:2742,x:32916,y:32638,varname:node_2742,prsc:2|IN-5375-OUT;n:type:ShaderForge.SFN_Divide,id:8097,x:33106,y:32638,varname:node_8097,prsc:2|A-2742-OUT,B-4546-OUT;n:type:ShaderForge.SFN_Posterize,id:4550,x:33106,y:32798,varname:node_4550,prsc:2|IN-5015-OUT,STPS-4546-OUT;n:type:ShaderForge.SFN_Set,id:2087,x:33322,y:32770,varname:SameResultAsAbove,prsc:2|IN-4550-OUT;n:type:ShaderForge.SFN_Tex2d,id:4618,x:32976,y:32300,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_4618,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalVector,id:1301,x:32046,y:33187,prsc:2,pt:False;n:type:ShaderForge.SFN_HalfVector,id:4999,x:32046,y:33355,varname:node_4999,prsc:2;n:type:ShaderForge.SFN_Dot,id:1277,x:32233,y:33213,varname:node_1277,prsc:2,dt:1|A-1301-OUT,B-4999-OUT;n:type:ShaderForge.SFN_Power,id:4924,x:32422,y:33213,varname:node_4924,prsc:2|VAL-1277-OUT,EXP-8417-OUT;n:type:ShaderForge.SFN_Exp,id:8417,x:32422,y:33353,varname:node_8417,prsc:2,et:0|IN-4197-OUT;n:type:ShaderForge.SFN_Slider,id:4197,x:32144,y:33541,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:node_4197,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.327953,max:5;n:type:ShaderForge.SFN_Multiply,id:1520,x:32626,y:33199,varname:node_1520,prsc:2|A-5015-OUT,B-4924-OUT;n:type:ShaderForge.SFN_Slider,id:6272,x:32907,y:33437,ptovrint:False,ptlb:SpecularIntensity,ptin:_SpecularIntensity,varname:node_6272,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1742668,max:1;n:type:ShaderForge.SFN_Posterize,id:7116,x:32839,y:33199,varname:node_7116,prsc:2|IN-1520-OUT,STPS-9279-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9279,x:32773,y:33358,ptovrint:False,ptlb:SpecularSteps,ptin:_SpecularSteps,varname:node_9279,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:3742,x:33064,y:33199,varname:node_3742,prsc:2|A-7116-OUT,B-6272-OUT;n:type:ShaderForge.SFN_Multiply,id:2021,x:33363,y:32370,varname:node_2021,prsc:2|A-4618-RGB,B-6683-OUT;n:type:ShaderForge.SFN_Add,id:5578,x:33548,y:32591,varname:node_5578,prsc:2|A-2021-OUT,B-3742-OUT;n:type:ShaderForge.SFN_Vector1,id:182,x:32297,y:32964,varname:node_182,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:981,x:32508,y:32930,varname:node_981,prsc:2|A-5015-OUT,B-182-OUT;n:type:ShaderForge.SFN_Tex2d,id:134,x:32702,y:32930,ptovrint:False,ptlb:ShadowGradient,ptin:_ShadowGradient,varname:node_134,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-981-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6683,x:32888,y:32930,ptovrint:False,ptlb:UseShadowGradient,ptin:_UseShadowGradient,varname:node_6683,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-4550-OUT,B-134-RGB;proporder:4546-4618-4197-6272-9279-134-6683;pass:END;sub:END;*/

Shader "Shader Forge/ToonShader" {
    Properties {
        _ShadowSteps ("ShadowSteps", Float ) = 10
        _MainTex ("MainTex", 2D) = "white" {}
        _SpecularPower ("SpecularPower", Range(0, 5)) = 2.327953
        _SpecularIntensity ("SpecularIntensity", Range(0, 1)) = 0.1742668
        _SpecularSteps ("SpecularSteps", Float ) = 2
        _ShadowGradient ("ShadowGradient", 2D) = "white" {}
        [MaterialToggle] _UseShadowGradient ("UseShadowGradient", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif //UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform float _ShadowSteps;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _SpecularPower;
            uniform float _SpecularIntensity;
            uniform float _SpecularSteps;
            uniform sampler2D _ShadowGradient; uniform float4 _ShadowGradient_ST;
            uniform fixed _UseShadowGradient;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_LIGHTING(o, float2(0,0));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_5015 = (max(0,dot(i.normalDir,lightDirection))*attenuation);
                float node_4550 = floor(node_5015 * _ShadowSteps) / (_ShadowSteps - 1);
                float2 node_981 = float2(node_5015,0.0);
                float4 _ShadowGradient_var = tex2D(_ShadowGradient,TRANSFORM_TEX(node_981, _ShadowGradient));
                float3 finalColor = ((_MainTex_var.rgb*lerp( node_4550, _ShadowGradient_var.rgb, _UseShadowGradient ))+(floor((node_5015*pow(max(0,dot(i.normalDir,halfDirection)),exp(_SpecularPower))) * _SpecularSteps) / (_SpecularSteps - 1)*_SpecularIntensity));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_FORWARDADD
            #define UNITY_PASS_FORWARDADD
            #endif //UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform float _ShadowSteps;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _SpecularPower;
            uniform float _SpecularIntensity;
            uniform float _SpecularSteps;
            uniform sampler2D _ShadowGradient; uniform float4 _ShadowGradient_ST;
            uniform fixed _UseShadowGradient;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_LIGHTING(o, float2(0,0));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_5015 = (max(0,dot(i.normalDir,lightDirection))*attenuation);
                float node_4550 = floor(node_5015 * _ShadowSteps) / (_ShadowSteps - 1);
                float2 node_981 = float2(node_5015,0.0);
                float4 _ShadowGradient_var = tex2D(_ShadowGradient,TRANSFORM_TEX(node_981, _ShadowGradient));
                float3 finalColor = ((_MainTex_var.rgb*lerp( node_4550, _ShadowGradient_var.rgb, _UseShadowGradient ))+(floor((node_5015*pow(max(0,dot(i.normalDir,halfDirection)),exp(_SpecularPower))) * _SpecularSteps) / (_SpecularSteps - 1)*_SpecularIntensity));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
