// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34147,y:32218,varname:node_3138,prsc:2|normal-4598-RGB,custl-8642-OUT,olwid-8807-OUT,olcol-7842-RGB;n:type:ShaderForge.SFN_ValueProperty,id:1935,x:33559,y:32768,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_1935,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.003;n:type:ShaderForge.SFN_Color,id:7842,x:34035,y:32993,ptovrint:False,ptlb:OutLineColor,ptin:_OutLineColor,varname:node_7842,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ObjectScale,id:7609,x:33559,y:32867,varname:node_7609,prsc:2,rcp:False;n:type:ShaderForge.SFN_Divide,id:6297,x:33776,y:32768,varname:node_6297,prsc:2|A-1935-OUT,B-7609-X;n:type:ShaderForge.SFN_Distance,id:4954,x:33749,y:33057,varname:node_4954,prsc:2|A-2058-XYZ,B-8174-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:2058,x:33559,y:33057,varname:node_2058,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:8174,x:33559,y:33191,varname:node_8174,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8807,x:33819,y:32890,varname:node_8807,prsc:2|A-6297-OUT,B-4954-OUT;n:type:ShaderForge.SFN_Tex2d,id:2661,x:32140,y:32854,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_6543,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4598,x:32363,y:32685,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_7433,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:5770,x:32140,y:33044,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_2512,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8642,x:32365,y:32953,varname:node_8642,prsc:2|A-2661-RGB,B-5770-RGB,C-7065-OUT;n:type:ShaderForge.SFN_NormalVector,id:4934,x:30984,y:32477,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:8683,x:31182,y:32595,varname:node_8683,prsc:2;n:type:ShaderForge.SFN_Dot,id:8397,x:31486,y:32561,varname:node_8397,prsc:2,dt:1|A-7189-OUT,B-8683-OUT;n:type:ShaderForge.SFN_Set,id:1989,x:31764,y:32742,varname:node_1989,prsc:2|IN-7360-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:377,x:31238,y:32967,varname:node_377,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3174,x:31452,y:32950,varname:node_3174,prsc:2|A-7360-OUT,B-377-OUT;n:type:ShaderForge.SFN_Set,id:6441,x:31887,y:32960,varname:node_6441,prsc:2|IN-8017-OUT;n:type:ShaderForge.SFN_Get,id:7065,x:32128,y:33259,varname:node_7065,prsc:2|IN-6441-OUT;n:type:ShaderForge.SFN_Slider,id:2712,x:31082,y:32847,ptovrint:False,ptlb:ShadowIntensity,ptin:_ShadowIntensity,varname:node_8961,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1548326,max:1;n:type:ShaderForge.SFN_Slider,id:209,x:31295,y:33191,ptovrint:False,ptlb:sombras,ptin:_sombras,varname:node_2477,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8373627,max:1;n:type:ShaderForge.SFN_Vector1,id:7662,x:31198,y:32741,varname:node_7662,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:7360,x:31505,y:32742,varname:node_7360,prsc:2|A-8397-OUT,B-7662-OUT,T-2712-OUT;n:type:ShaderForge.SFN_Lerp,id:8017,x:31678,y:32960,varname:node_8017,prsc:2|A-3174-OUT,B-4162-OUT,T-209-OUT;n:type:ShaderForge.SFN_Vector1,id:4162,x:31421,y:33080,varname:node_4162,prsc:2,v1:1;n:type:ShaderForge.SFN_Abs,id:7189,x:31182,y:32477,varname:node_7189,prsc:2|IN-4934-OUT;proporder:1935-7842-2661-5770-2712-209-4598;pass:END;sub:END;*/

Shader "Shader Forge/PEV_07_ToonShader" {
    Properties {
        _Outline ("Outline", Float ) = 0.003
        _OutLineColor ("OutLineColor", Color) = (1,1,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _MainColor ("MainColor", Color) = (1,1,1,1)
        _ShadowIntensity ("ShadowIntensity", Range(0, 1)) = 0.1548326
        _sombras ("sombras", Range(0, 1)) = 0.8373627
        _Normal ("Normal", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform float _Outline;
            uniform float4 _OutLineColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*((_Outline/objScale.r)*distance(mul(unity_ObjectToWorld, v.vertex).rgb,_WorldSpaceCameraPos)),1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                return fixed4(_OutLineColor.rgb,0);
            }
            ENDCG
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
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_7360 = lerp(max(0,dot(abs(normalDirection),lightDirection)),1.0,_ShadowIntensity);
                float node_6441 = lerp((node_7360*attenuation),1.0,_sombras);
                float3 finalColor = (_MainTex_var.rgb*_MainColor.rgb*node_6441);
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
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_7360 = lerp(max(0,dot(abs(normalDirection),lightDirection)),1.0,_ShadowIntensity);
                float node_6441 = lerp((node_7360*attenuation),1.0,_sombras);
                float3 finalColor = (_MainTex_var.rgb*_MainColor.rgb*node_6441);
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
