using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class MenuManager : MonoBehaviour
{
    // Start is called before the first frame update
    public Animator anim, doganim;
    public GameObject start, creditos, salir, regresar,rungame, CanvasLoadingScreen;
    public InputField inputField;
    Gamemanager gamemanager;
    void Start()
    {
        gamemanager = GameObject.FindGameObjectWithTag("Gamemanager").GetComponent<Gamemanager>();
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
        gamemanager.SetDogName(inputField.text);
        CanvasLoadingScreen.SetActive(true);
        
    }
}
