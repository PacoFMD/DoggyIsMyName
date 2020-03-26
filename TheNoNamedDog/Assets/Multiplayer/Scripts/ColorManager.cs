using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ColorManager : MonoBehaviour
{

    public int player;
    public Renderer doggy;
    bool ready = false;
    int counter = 0;
    public Text texto;
    public ChangeCharacteMenu menu;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetButtonDown("Start" + player.ToString()))
        {
            ready = !ready;
            if (ready)
            {

                menu.playerReady++;
            }
            else
            {

                menu.playerReady--;
            }
        }

        if (!ready)
        {
            if (Input.GetButtonDown("LB" + player.ToString()))
            {
                counter--;
            }
            else if (Input.GetButtonDown("RB" + player.ToString()))
            {
                counter++;
            }

            if (counter < 0)
            {
                counter = 5;
            }
            else if (counter > 5)
            {
                counter = 0;
            }

            switch (counter)
            {
                case 0:
                    doggy.material.SetColor("_Color", Color.white);
                    break;
                case 1:
                    doggy.material.SetColor("_Color", Color.red);
                    break;
                case 2:
                    doggy.material.SetColor("_Color", Color.blue);
                    break;
                case 3:
                    doggy.material.SetColor("_Color", Color.green);
                    break;
                case 4:
                    doggy.material.SetColor("_Color", Color.yellow);
                    break;
                case 5:
                    doggy.material.SetColor("_Color", Color.black);
                    break;
            }
            texto.color = Color.white;

        }
        else
        {
            texto.color = Color.yellow;
        }     

            
        
    }
}
