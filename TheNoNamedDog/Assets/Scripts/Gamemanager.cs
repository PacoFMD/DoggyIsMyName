using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Gamemanager : MonoBehaviour
{
   
    
    string DogName;
    bool PlayedTutorial = false;

    void Awake()
    {
        DontDestroyOnLoad(this.gameObject);
        if (FindObjectsOfType(GetType()).Length > 1)
        {
            Destroy(gameObject);

        }

    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public string GetDogName()
    {
        return DogName;
    }

    public void SetDogName(string _dogname)
    {
        DogName = _dogname;
    }

    public bool GetPlayedTutorial()
    {
        return PlayedTutorial;
    }

    public void SetPlayedTutorial()
    {
        PlayedTutorial = true;
    }


}
