using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class PostProcesScript : MonoBehaviour
{
    public Material m_postProcessMaerial;

    protected void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        Graphics.Blit(source, destination, m_postProcessMaerial);
    }
}
