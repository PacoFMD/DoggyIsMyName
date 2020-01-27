// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32549,y:32712,varname:node_3138,prsc:2|normal-7433-RGB,emission-4896-OUT;n:type:ShaderForge.SFN_Tex2d,id:6543,x:32076,y:32790,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_6543,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7433,x:32299,y:32621,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_7433,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:2512,x:32076,y:32980,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_2512,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:4896,x:32301,y:32889,varname:node_4896,prsc:2|A-6543-RGB,B-2512-RGB,C-8111-OUT;n:type:ShaderForge.SFN_NormalVector,id:6959,x:30920,y:32413,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:6443,x:31118,y:32531,varname:node_6443,prsc:2;n:type:ShaderForge.SFN_Dot,id:5268,x:31422,y:32497,varname:node_5268,prsc:2,dt:1|A-4651-OUT,B-6443-OUT;n:type:ShaderForge.SFN_Set,id:7740,x:31700,y:32678,varname:LightData,prsc:2|IN-861-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:9878,x:31174,y:32903,varname:node_9878,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7428,x:31388,y:32886,varname:node_7428,prsc:2|A-861-OUT,B-9878-OUT;n:type:ShaderForge.SFN_Set,id:6449,x:31823,y:32896,varname:ShadowData,prsc:2|IN-515-OUT;n:type:ShaderForge.SFN_Get,id:8111,x:32064,y:33195,varname:node_8111,prsc:2|IN-6449-OUT;n:type:ShaderForge.SFN_Slider,id:8961,x:31018,y:32783,ptovrint:False,ptlb:ShadowIntensity,ptin:_ShadowIntensity,varname:node_8961,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1548326,max:1;n:type:ShaderForge.SFN_Slider,id:2477,x:31231,y:33127,ptovrint:False,ptlb:sombras,ptin:_sombras,varname:node_2477,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8373627,max:1;n:type:ShaderForge.SFN_Vector1,id:126,x:31134,y:32677,varname:node_126,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:861,x:31441,y:32678,varname:node_861,prsc:2|A-5268-OUT,B-126-OUT,T-8961-OUT;n:type:ShaderForge.SFN_Lerp,id:515,x:31614,y:32896,varname:node_515,prsc:2|A-7428-OUT,B-6021-OUT,T-2477-OUT;n:type:ShaderForge.SFN_Vector1,id:6021,x:31357,y:33016,varname:node_6021,prsc:2,v1:1;n:type:ShaderForge.SFN_Abs,id:4651,x:31118,y:32413,varname:node_4651,prsc:2|IN-6959-OUT;proporder:6543-7433-2512-8961-2477;pass:END;sub:END;*/

Shader "Shader Forge/Cartoon" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Normal ("Normal", 2D) = "white" {}
        _MainColor ("MainColor", Color) = (1,1,1,1)
        _ShadowIntensity ("ShadowIntensity", Range(0, 1)) = 0.1548326
        _sombras ("sombras", Range(0, 1)) = 0.8373627
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float4 _MainColor;
            uniform float _ShadowIntensity;
            uniform float _sombras;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                UNITY_LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_LIGHTING(o, float2(0,0));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float4 _Normal_var = tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_861 = lerp(max(0,dot(abs(normalDirection),lightDirection)),1.0,_ShadowIntensity);
                float ShadowData = lerp((node_861*attenuation),1.0,_sombras);
                float3 emissive = (_MainTex_var.rgb*_MainColor.rgb*ShadowData);
                float3 finalColor = emissive;
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float4 _MainColor;
            uniform float _ShadowIntensity;
            uniform float _sombras;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                UNITY_LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_LIGHTING(o, float2(0,0));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float4 _Normal_var = tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
