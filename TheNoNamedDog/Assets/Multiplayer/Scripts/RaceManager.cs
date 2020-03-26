using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RaceManager : MonoBehaviour
{
    GameObject CanvasLoadingScreen;
    // Start is called before the first frame update
    void Awake()
    {
        CanvasLoadingScreen = GameObject.FindGameObjectWithTag("CanvasLoadingScreen");
        CanvasLoadingScreen.transform.GetChild(1).GetComponent<StarLevel>().loadLevel = 0;
        CanvasLoadingScreen.SetActive(false);

    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
