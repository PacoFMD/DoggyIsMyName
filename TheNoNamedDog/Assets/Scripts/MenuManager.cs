using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class MenuManager : MonoBehaviour
{
    // Start is called before the first frame update
    public Animator anim, doganim;
    public GameObject start, creditos, salir, regresar,rungame, CanvasLoadingScreen,canvasCreditos;
    public InputField inputField;
    public bool isClassicGame = true;
    Gamemanager gamemanager;

    void Start()
    {
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        CanvasLoadingScreen = GameObject.FindGameObjectWithTag("CanvasLoadingScreen");
        CanvasLoadingScreen.SetActive(false);
        gamemanager = GameObject.FindGameObjectWithTag("Gamemanager").GetComponent<Gamemanager>();
        if (isClassicGame)
        {
            if (gamemanager.GetPlayedTutorial())
            {
                CanvasLoadingScreen.transform.GetChild(1).GetComponent<StarLevel>().loadLevel = 2;
            }
            else
            {
                CanvasLoadingScreen.transform.GetChild(1).GetComponent<StarLevel>().loadLevel = 1;
            }
        }
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void StartGameEnter()
    {
        start.transform.GetChild(0).GetComponent<Text>().text = "- Empezar";
    }

    public void StartGameExit()
    {
        start.transform.GetChild(0).GetComponent<Text>().text = "Empezar";
    }

    public void StartGame()
    {
        anim.SetBool("StartGame", true);
        doganim.SetBool("IsDog", true);
    }
    public void CreditosEnter()
    {
        creditos.transform.GetChild(0).GetComponent<Text>().text = "- Creditos";
    }

    public void CreditosExit()
    {
        creditos.transform.GetChild(0).GetComponent<Text>().text = "Creditos";
    }

    public void Creditos()
    {
        anim.SetBool("StartCredits", true);
        canvasCreditos.SetActive(true);
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
        Application.Quit();
    }

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
        anim.SetBool("StartGame", false);
        doganim.SetBool("IsDog", false);
    }

    public void RunGameEnter()
    {
        rungame.transform.GetChild(0).GetComponent<Text>().text = "- Empezar";
    }

    public void RunGameExit()
    {
        rungame.transform.GetChild(0).GetComponent<Text>().text = "Empezar";
    }

    public void RunGame()
    {
        //gamemanager.SetDogName(inputField.text);
        CanvasLoadingScreen.SetActive(true);
        
    }
}
