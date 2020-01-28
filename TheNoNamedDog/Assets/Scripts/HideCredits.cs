using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HideCredits : MonoBehaviour
{

    public Animator anim;
    public GameObject canvasCreditos;

    public void Hide()
    {
        anim.SetBool("StartCredits", false);
        canvasCreditos.SetActive(false);
    }
}
