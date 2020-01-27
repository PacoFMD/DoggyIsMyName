using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
public class StarLevel : MonoBehaviour
{
    public int loadLevel;
    
    public void StartLevel()
    {
        SceneManager.LoadScene(loadLevel);
    }
}
