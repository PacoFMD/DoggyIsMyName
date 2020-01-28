using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


public class TutorialManager : MonoBehaviour
{
    bool InAction = true;
    List<string> dialogos;
    Gamemanager gamemanager;

    public int i = 0;
    public Text instrucciones;
    public Animator animCanvasPausa;
    public GameObject regresar, continuar, salir, canvasTutorial, canvasVasija;
    GameObject CanvasLoadingScreen;
    public float timer = 0, timeChange = 5f;
    public CameraController cameraController;
    public CharacterController characterController;
    
   
    // Start is called before the first frame update
    void Start()
    {
        CanvasLoadingScreen = GameObject.FindGameObjectWithTag("CanvasLoadingScreen");
        CanvasLoadingScreen.transform.GetChild(1).GetComponent<StarLevel>().loadLevel = 0;
        CanvasLoadingScreen.SetActive(false);
        characterController.enabled = false;
        dialogos = new List<string>();
        gamemanager = GameObject.FindGameObjectWithTag("Gamemanager").GetComponent<Gamemanager>();
        dialogos.Add("Hola soy " + gamemanager.GetDogName() + " un perro en busqueda de un buen hogar");
        cameraController.enabled = false;
        instrucciones.text = dialogos[i]; //0
        dialogos.Add("El es Luis Miguel mi proximo dueño, hay que ganarse la confianza de el para que me adopte");//1
        dialogos.Add("Antes de ganarme la confianza del dueño del hogar, te enseñaré a moverte");//2
        dialogos.Add("Toca las teclas WASD en el teclado para caminar y mueve el mouse para dirigir la cámara y acercate hacia el");//3
        dialogos.Add("");//4
        dialogos.Add("El indicador del lado derecho del nombre es el DoggyLovemetro");//5
        dialogos.Add("Te marca el nivel de amor del humano hacia el perro");//6
        dialogos.Add("Este indicador se llena, llevandole ciertos objetos y sí se completa te adopta");//7
        dialogos.Add("Si no, tendrás que buscar otro dueño");//8
        dialogos.Add("Muy bien! Ahora mientras caminas presiona SHIFT izquierdo para correr");//9
        dialogos.Add("Por cierto! Tienes un botón especial para ladrar, presiona Click Derecho cuando quieras");//10
        dialogos.Add("");//10 a 11--
        dialogos.Add("Ve a la casa del dueño y dale la vasija que se encuentra cerca....");//12
        dialogos.Add("");//12 a 13--
        dialogos.Add("Muy bien! Felicidades! Terminaste el tutorial, ahora inicia una nueva aventura!");//14
        dialogos.Add("");//14 a 15--
    }

    // Update is called once per frame

    void Update()
    {
        if (Input.anyKeyDown && InAction)
        {   
            i++; 
        }

        if (i == 4)// te enseño a caminar
        {
            InAction = false;
            canvasTutorial.SetActive(false);
            characterController.enabled = true;
            cameraController.enabled = true;

            if (characterController.haveOwner)
            {              
                  
                i++;
                canvasTutorial.SetActive(true);
                characterController.enabled = false;
                cameraController.enabled = false;                                     
                InAction = true;
                
            }
        }
        else if (i == 11)//te enseño a correr
        {
            InAction = false;
            canvasTutorial.SetActive(false);
            characterController.enabled = true;
            cameraController.enabled = true;

            if (characterController.walkSpeed >= 2)
            {
                timer += Time.deltaTime;
                if (timer >= timeChange)
                {
                    //characterController.walkSpeed = 0;
                    i++;
                    canvasTutorial.SetActive(true);
                    characterController.enabled = false;
                    cameraController.enabled = false;
                    timer = 0;
                  
                    InAction = true;
                }
            }
        }else if (i==12)
        {

            canvasVasija.SetActive(true);
        }
        else if (i == 13)
        {
            InAction = false;            
            canvasTutorial.SetActive(false);
            characterController.enabled = true;
            cameraController.enabled = true;
            if (characterController.objEntregado)
            {               
                i++;
                canvasTutorial.SetActive(true);
                characterController.enabled = false;
                cameraController.enabled = false;
                InAction = true;

            }
            
        }
        else if(i == 15)
        {
             
            CanvasLoadingScreen.SetActive(true);
            gamemanager.SetPlayedTutorial();
        }
       
        instrucciones.text = dialogos[i];
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
