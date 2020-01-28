using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
public class MovePlayerFromAnim : MonoBehaviour
{
    public CharacterController character;

    public AudioClip audioClip;
    public AudioSource audioSource;

    public void Change()
    {
        if(SceneManager.GetActiveScene().name == "Tutorial")
        {
            character.aux.transform.GetChild(0).gameObject.SetActive(false);
        }
        character.actionAnim = false;
        character.SetParentAuxToNose();
        Debug.Log("Entre en la animación");
    }


    public void Bark()
    {
       
        audioSource.PlayOneShot(audioClip,1.0f);
    }

    public void ChangeBark()
    {
        character.actionAnim = false;
    }

    
}
