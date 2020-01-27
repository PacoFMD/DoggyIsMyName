using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovePlayerFromAnim : MonoBehaviour
{
    public CharacterController character;

    public AudioClip audioClip;
    public AudioSource audioSource;

    public void Change()
    {
        character.actionAnim = false;

        character.SetParentAuxToNose();
        Debug.Log("Entre en la animación");
    }


    public void Bark()
    {
        audioSource.PlayOneShot(audioClip,1.0f);
    }

    
}
