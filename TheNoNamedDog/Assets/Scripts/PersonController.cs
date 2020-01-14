using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PersonController : MonoBehaviour
{
    // Start is called before the first frame update

    public string name;
    public Sprite image;

    public bool IamOwner = false;
    float counter = 0, maxRange;
    
    void Start()
    {
        maxRange = Random.Range(10, 25);
    }

    // Update is called once per frame
    void Update()
    {
        if (IamOwner)
        {
            counter += Time.deltaTime;
            if(counter >= maxRange)
            {
                this.gameObject.GetComponent<Animator>().SetTrigger("WhereIsDog");
                counter = 0;
                maxRange = Random.Range(10, 25);
            }
        }
    }

    public string GetName()
    {
        return name;
    }

  
}
