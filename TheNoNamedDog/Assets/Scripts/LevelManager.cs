using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
public class LevelManager : MonoBehaviour
{

    GameObject CanvasLoadingScreen;
    public Animator animCanvasPausa;
    public GameObject regresar, continuar, salir, winMenu;
    public CharacterController characterController;
    // Start is called before the first frame update
    void Start()
    {
        CanvasLoadingScreen = GameObject.FindGameObjectWithTag("CanvasLoadingScreen");
        CanvasLoadingScreen.transform.GetChild(1).GetComponent<StarLevel>().loadLevel = 0;
        CanvasLoadingScreen.SetActive(false);

    }

    // Update is called once per frame
    void Update()
    {
        if (characterController.win)
        {
            winMenu.SetActive(true);
        }
    }

    // sistema de botones de pausa

    public void BackEnter()
    {
        regresar.transform.GetChild(0).GetComponent<Text>().text = "- Regresar";
    }

    public void BackExit()
    {
        regresar.transform.GetChild(0).GetComponent<Text>().text = "Regresar";
    }

    public void Back()
    {
        animCanvasPausa.SetBool("IsInPause", false);
        Time.timeScale = 1;
        characterController.ActivateFromPause();
        /*anim.SetBool("StartGame", false);
        doganim.SetBool("IsDog", false);*/
    }

    public void ContinuarEnter()
    {
        continuar.transform.GetChild(0).GetComponent<Text>().text = "- Continuar";
    }

    public void ContinuarExit()
    {

        continuar.transform.GetChild(0).GetComponent<Text>().text = "Continuar";
    }

    public void Contininuar()
    {
        animCanvasPausa.SetBool("IsInPause", false);
        Time.timeScale = 1;
        characterController.ActivateFromPause();
    }

    public void SalirEnter()
    {
        salir.transform.GetChild(0).GetComponent<Text>().text = "- Salir";
    }

    public void SalirExit()
    {
        salir.transform.GetChild(0).GetComponent<Text>().text = "Salir";
    }

    public void Salir()
    {
        animCanvasPausa.SetBool("IsInPause", false);
        Time.timeScale = 1;
        CanvasLoadingScreen.SetActive(true);
        /*anim.SetBool("StartGame", false);
        doganim.SetBool("IsDog", false);*/
    }
}
