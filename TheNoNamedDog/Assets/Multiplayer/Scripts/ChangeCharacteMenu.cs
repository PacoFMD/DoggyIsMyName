using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeCharacteMenu : MonoBehaviour
{

    public int playerReady = 0;
    bool exit = true;
    public MenuManager menuManager;
    StarLevel level;
    // Start is called before the first frame update
    void Awake()
    {
        level = GameObject.FindGameObjectWithTag("LevelFoot").GetComponent<StarLevel>();
        level.loadLevel = 2;
    }

    // Update is called once per frame
    void Update()
    {
       
        if(playerReady >= 2 && exit)
        {
            menuManager.RunGame();
            exit = false;
        }
    }


    
}
