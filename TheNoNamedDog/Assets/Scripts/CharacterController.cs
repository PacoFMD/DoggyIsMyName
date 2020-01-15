using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class CharacterController : MonoBehaviour
{

    public Text texto;
    public Image image;
    public float speed;
    public GameObject panel, doggyPanel, doggyLovePanel, aux, person_aux;
    int auxTrash_id;
    public Sprite defaultSprite;
    public Image doggyLove;
    public bool haveOwner = false, touchPerson = false, touchTrash = false;

    public int trashcount = 0;

    // Start is called before the first frame update
    void Start()
    {
        texto.text = "______";
        
    }

    // Update is called once per frame
    void Update()
    {
        PlayerMovement();

        if (touchPerson && !haveOwner && !person_aux.GetComponent<PersonController>().isAngry)
        {
            if (Input.GetKeyDown("s"))
            {
                haveOwner = true;
                touchPerson = false;
                panel.SetActive(false);
                person_aux.GetComponent<PersonController>().IamOwner = true;
                doggyLovePanel.SetActive(true);
            }
            if (Input.GetKeyDown("n"))
            {
                haveOwner = false;
                touchPerson = false;
                texto.text = "____";
                image.GetComponent<Image>().sprite = defaultSprite;
                panel.SetActive(false);
            }
        }


        if(touchPerson && haveOwner && trashcount > 0)
        {

            if (Input.GetKeyDown("q"))
            {

                if (person_aux.GetComponent<PersonController>().GetId() != auxTrash_id)
                {
                    NobodyLovesYou();
                    //this.gameObject.GetComponent<Rigidbody>().detectCollisions = false;
                    person_aux.GetComponent<Animator>().SetTrigger("IsAngry");
                    person_aux.GetComponent<Animator>().SetBool("DogWithMe", false);
                    person_aux.GetComponent<PersonController>().isAngry = true;
                }
                else
                {
                    doggyLove.fillAmount += trashcount / 10f;
                    trashcount = 0;
                    doggyPanel.SetActive(false);
                }

                
            }
        }

        if(touchTrash && haveOwner)
        {
            if (Input.GetKeyDown("r") && trashcount == 0)
            {
                auxTrash_id = aux.GetComponent<Item>().GetId();
                Destroy(aux);
                trashcount++;
                doggyPanel.SetActive(false);
                touchTrash = false;

            }
        }
       
        if(haveOwner && doggyLove.fillAmount <= 0.9)
        {
            doggyLove.fillAmount -= Time.deltaTime / 100f;
            if(doggyLove.fillAmount <= 0.05) // condición para que pierda y sus consecuencias
            {

                NobodyLovesYou();
               
            }
        }
        else if(haveOwner && doggyLove.fillAmount >= 0.9    )
        {
            person_aux.GetComponent<Animator>().SetTrigger("IHaveADog");
        }

        //if (Input.GetKey(KeyCode.A))
        //{
        //    transform.Translate(Vector3.left * movementspeed * Time.deltaTime);
        //}
        //if (Input.GetKey(KeyCode.D))
        //{
        //    transform.Translate(Vector3.right * movementspeed * Time.deltaTime);
        //}
        //if (Input.GetKey(KeyCode.W))
        //{
        //    transform.Translate(Vector3.forward * movementspeed * Time.deltaTime);
        //}
        //if (Input.GetKey(KeyCode.S))
        //{
        //    transform.Translate(Vector3.back * movementspeed * Time.deltaTime);
        //}
        
    }

    public void OnCollisionEnter(Collision collision)
    {

        if (collision.gameObject.tag == "Owner")
        {
            if (collision.gameObject.GetComponent<PersonController>().DogBool())
            {
                touchPerson = true;

                collision.gameObject.transform.LookAt(new Vector3(this.gameObject.transform.position.x, collision.gameObject.transform.position.y, this.gameObject.transform.position.z));
                if (!haveOwner)
                {
                    texto.text = collision.gameObject.GetComponent<PersonController>().GetName();
                    image.GetComponent<Image>().sprite = collision.gameObject.GetComponent<PersonController>().image;

                    collision.gameObject.GetComponent<Animator>().SetBool("DogWithMe", true);
                    person_aux = collision.gameObject;
                    panel.SetActive(true);
                }
                if (collision.gameObject.GetComponent<PersonController>().IamOwner)
                {
                    if (trashcount > 0)
                    {
                        doggyPanel.SetActive(true);
                        doggyPanel.transform.GetChild(0).GetComponent<Text>().text = "Presiona q para entregar";
                    }

                    collision.gameObject.GetComponent<Animator>().SetBool("DogWithMe", true);
                }
            }
           
        }       
    }

    public void OnCollisionExit(Collision collision)
    {
        if (collision.gameObject.tag == "Owner")
        {
            if (collision.gameObject.GetComponent<PersonController>().IamOwner)
            {                   
               doggyPanel.SetActive(false);
                   
            }
            else
            {                
                /*texto.text = "____";
                image.GetComponent<Image>().sprite = defaultSprite;*/
            }
            touchPerson = false;           
            collision.gameObject.GetComponent<Animator>().SetBool("DogWithMe", false);
            panel.SetActive(false);

        }
       
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Trash" && haveOwner && trashcount == 0)
        {
            doggyPanel.transform.GetChild(0).GetComponent<Text>().text = "Presiona r para recolectar";
            
            touchTrash = true;
            aux = other.gameObject;
            doggyPanel.SetActive(true);
        }
    }


    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Trash" && haveOwner)
        {
            touchTrash = false;
            doggyPanel.SetActive(false);
        }
    }

    void PlayerMovement()
    {
        float _horizontal = Input.GetAxis("Horizontal");
        float _vertical = Input.GetAxis("Vertical");

        Vector3 playermov = new Vector3(_horizontal, 0f, _vertical)*speed*Time.deltaTime;
        transform.Translate(playermov, Space.Self);
    }
   

    void NobodyLovesYou()
    {
        haveOwner = false;
        doggyLove.fillAmount = 0.2f;
        doggyLovePanel.SetActive(false);
        doggyPanel.SetActive(false);
        touchTrash = false;
        texto.text = "____";
        image.GetComponent<Image>().sprite = defaultSprite;
        person_aux.GetComponent<PersonController>().ChangeState();
        trashcount = 0;     
    }
}
