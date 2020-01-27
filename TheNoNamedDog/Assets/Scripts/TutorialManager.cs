using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


public class TutorialManager : MonoBehaviour
{
    public GameObject canvasTutorial;
    public Text instrucciones;

    Gamemanager gamemanager;
    public CameraController cameraController;
    public CharacterController characterController;
    
    List<string> dialogos;
    public int i = 0;
    public float timer = 0, timeChange = 5f;
    bool InAction = true;
    // Start is called before the first frame update
    void Start()
    {
        
        characterController.enabled = false;
        dialogos = new List<string>();
        gamemanager = GameObject.FindGameObjectWithTag("Gamemanager").GetComponent<Gamemanager>();
        dialogos.Add("Hola soy " + gamemanager.GetDogName() + " un perro en busqueda de un buen hogar");
        cameraController.enabled = false;
        instrucciones.text = dialogos[i]; //0
        dialogos.Add("El es Luis Miguel mi proximo dueño, hay que ganarse la confianza de el para que me adopte");//1
        dialogos.Add("Antes de ganarme la confianza del dueño del hogar, te enseñeré a moverte");//2
        dialogos.Add("Toca las teclas WASD en el teclado para caminar y mueve el mouse para dirigir la cámara y acercate hacia el");//3
        dialogos.Add("");//4
        dialogos.Add("El indicador del lado derecho del nombre es el DoggyLovemetro");//5
        dialogos.Add("Te marca el nivel de amor del humano hacia el perro");//6
        dialogos.Add("Si se llena te adopta");//7
        dialogos.Add("Si no, tendrás que buscar otro dueño");//8
        dialogos.Add("Muy bien! Ahora mientras caminas presiona SHIFT izquierdo para correr");//9
        dialogos.Add("");//10
        dialogos.Add("Ve a la casa del dueño y dale la vasija que se encuentra cerca....");//11
        dialogos.Add("");//12
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.anyKeyDown && InAction)
        {           
            
            
             i++;
            
            
        }

        if (i == 4)
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
        else if (i == 10)
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
        }
        else if (i == 12)
        {
            InAction = false;
            canvasTutorial.SetActive(false);
            characterController.enabled = true;
            cameraController.enabled = true;
        }


        instrucciones.text = dialogos[i];
    }
}
