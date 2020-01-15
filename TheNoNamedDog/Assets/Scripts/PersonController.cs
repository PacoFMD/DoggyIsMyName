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
    float counter = 0, maxRange, CounterForADog = 0, maxWaitTime, counterAngry = 0, counterAngryMaxTime;
    GameObject player;
    [SerializeField]
    bool CanIHaveADog = true;
    public bool isAngry = false;
   
    
    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        maxRange = Random.Range(10, 25);
        maxWaitTime = Random.Range(1, 10);
        counterAngryMaxTime = Random.Range(15, 25);
    }

    // Update is called once per frame
    void Update()
    {
        if (!isAngry)
        {
            if (IamOwner)
            {
                counter += Time.deltaTime;
                if (counter >= maxRange)
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
        else
        {
            counterAngry += Time.deltaTime;
            if (counterAngry >= counterAngryMaxTime)
            {

                counterAngry = 0;
                counterAngryMaxTime = Random.Range(15, 25);
                isAngry = false;
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
  

    public void SetActiveCollisionPlayer()
    {
       
    }
}
