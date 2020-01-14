using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PersonController : MonoBehaviour
{
    // Start is called before the first frame update

    public string name;
    public Sprite image;
    public int MyItemId;
    public bool IamOwner = false;
    float counter = 0, maxRange;
    public float CounterForADog = 0, maxWaitTime;
    [SerializeField]
    bool CanIHaveADog = true;
   
    
    void Start()
    {
        maxRange = Random.Range(10, 25);
        maxWaitTime = Random.Range(1, 10);
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


        if (!CanIHaveADog)
        {
            CounterForADog += Time.deltaTime;
            if (CounterForADog >= maxWaitTime)
            {

                CounterForADog = 0;
                maxWaitTime = Random.Range(10, 30);
                CanIHaveADog = true;
            }
        }
    }

    public string GetName()
    {
        return name;
    }

    public void ChangeState()
    {
        CanIHaveADog = !CanIHaveADog;
        IamOwner = !IamOwner;
    }


    public bool DogBool()
    {
        return CanIHaveADog;
    }

    public int GetId()
    {
        return MyItemId;
    }
  
}
