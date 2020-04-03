using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;


public class ScriptGanar : MonoBehaviour
{

    public GameObject panel,ganar1,ganar2;
    public GameObject Player1, Player2;
    public float times;

    // Start is called before the first frame update
    private void Start()
    {
        panel.SetActive(false);
        ganar1.SetActive(false);
        ganar2.SetActive(false);

    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            Debug.Log("Entre");
            panel.SetActive(true);
            StartCoroutine(DoSomething(times));
            
            if (other.gameObject == Player1)
            {
                ganar1.SetActive(true);
                //if (Input.anyKey)
                //{
                //    SceneManager.LoadScene("Tutorial 1", LoadSceneMode.Additive);
                //}
            }
            if(other.gameObject == Player2)
            {
                ganar2.SetActive(true);
            }

            
        }

    }

    private IEnumerator DoSomething(float waitTime)
    {
        yield return new WaitForSeconds(waitTime);
        SceneManager.LoadScene("CharacterChoose");
    }
}
