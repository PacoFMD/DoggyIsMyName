using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DisplacementBool : MonoBehaviour
{
   public void OnChange()
    {
        bool IsOn = gameObject.GetComponent<Toggle>().isOn;

        if (IsOn)
        {
            Shader.SetGlobalFloat("_Displacement", 0.50f);
        }
        else
        {
            Shader.SetGlobalFloat("_Displacement", -1.0f);
        }
    }


}
