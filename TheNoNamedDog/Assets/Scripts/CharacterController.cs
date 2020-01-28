using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
public class CharacterController : MonoBehaviour
{

    public Text texto;
    public Image image;
    public float walkSpeed = 2, runSpeed = 6, turnSmoothTime = 0.2f, speedSmoothTime = 0.1f, decreaseForUnFillAmount = 100f;
    float turnSmoothVelocity, speeSmoothVelocty, currentSpeed;
    public GameObject panel, doggyPanel, doggyLovePanel, aux, person_aux, pauseCanvas;
    int auxTrash_id;
    public Sprite defaultSprite;
    public Image doggyLove;
    public bool haveOwner = false, touchPerson = false, touchTrash = false, actionAnim = false, lockCursor = true, objEntregado = false, isPause = false, win = false, setTrigger = false;

    public Transform cameraT, inNose;
    public int trashcount = 0;

    public Animator anim;
    // Start is called before the first frame update
    void Start()
    {
        pauseCanvas = GameObject.FindGameObjectWithTag("PauseCanvas");
        if(SceneManager.GetActiveScene().name == "Tutorial")
        {
            texto.text = "Luis Miguel";
        }
        else
        {
            texto.text = "";
        }
        
           
        
        
        if (lockCursor)
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;

        }
                       
    }

    // Update is called once per frame
    void Update()
    {
        if (!actionAnim)
        {
            PlayerMovement();
        }

        if (Input.GetKeyDown(KeyCode.P))
        {
            isPause = !isPause;
            if (isPause)
            {
                
                pauseCanvas.transform.GetChild(0).GetComponent<Animator>().SetBool("IsInPause", true);
                actionAnim = true;
                Cursor.lockState = CursorLockMode.None;
                Cursor.visible = true;
               
            }
            else
            {
                pauseCanvas.transform.GetChild(0).GetComponent<Animator>().SetBool("IsInPause", false);
                ActivateFromPause();
                
            }
        }

       /* if (Input.GetKeyDown(KeyCode.I))
        {
            // anim.SetBool("Sit", true);
           
        }*/

        if (Input.GetMouseButtonDown(1))
        {
            actionAnim = true;
            currentSpeed = 0;
            anim.SetTrigger("Bark");
        }

      /*  if (Input.GetKeyDown(KeyCode.E))
        {
            actionAnim = true;
            currentSpeed = 0;
            anim.SetTrigger("Duck");
        }*/


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
                Destroy(aux);
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
                    doggyLove.fillAmount += (trashcount*2) / 10f;
                    trashcount = 0;
                    doggyPanel.SetActive(false);
                }

                objEntregado = true;
                
            }
        }

        if(touchTrash && haveOwner)
        {
            if (Input.GetKeyDown("e") && trashcount == 0)
            {
                actionAnim = true;
                currentSpeed = 0;
                anim.SetTrigger("Duck");
                auxTrash_id = aux.GetComponent<Item>().GetId();
                
                //Destroy(aux);
                trashcount++;
                doggyPanel.SetActive(false);
                touchTrash = false;

            }
        }

        if (haveOwner && doggyLove.fillAmount <= 0.9)
        {
            doggyLove.fillAmount -= Time.deltaTime / decreaseForUnFillAmount;
            if (doggyLove.fillAmount <= 0.05) // condición para que pierda y sus consecuencias
            {

                NobodyLovesYou();

            }
        }
        else if (haveOwner && doggyLove.fillAmount >= 0.9)
        {
            win = true;
            person_aux.GetComponent<Animator>().SetTrigger("IHaveADog");
            //anim.SetBool("Sit", true);
            if(!setTrigger)
            {
                anim.SetTrigger("SitOnTrigger");
                setTrigger = true;
            }

            actionAnim = true;
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
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
            doggyPanel.transform.GetChild(0).GetComponent<Text>().text = "Presiona e para recolectar";
            
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
        Vector2 input = new Vector2(Input.GetAxisRaw("Horizontal"), Input.GetAxisRaw("Vertical"));
        Vector2 inputDir = input.normalized;

        if(inputDir != Vector2.zero)
        {
            float targetRotation = Mathf.Atan2(inputDir.x, inputDir.y) * Mathf.Rad2Deg + cameraT.eulerAngles.y;
            transform.eulerAngles = Vector3.up * Mathf.SmoothDampAngle(transform.eulerAngles.y, targetRotation, ref turnSmoothVelocity, turnSmoothTime);
            
             
            

        }
        bool IsRunning = Input.GetKey(KeyCode.LeftShift);
        float targetSpeed = ((IsRunning) ? runSpeed : walkSpeed) * inputDir.magnitude;
        currentSpeed = Mathf.SmoothDamp(currentSpeed, targetSpeed, ref speeSmoothVelocty, speedSmoothTime);

        transform.Translate(transform.forward * currentSpeed * Time.deltaTime, Space.World);
        anim.SetFloat("Walk", currentSpeed);
        float animtionSpeedPerc = ((IsRunning) ? 1 : .5f) * inputDir.magnitude;
        if(IsRunning)
        {
            anim.SetFloat("Walk", currentSpeed);
        }
        
    }
   
    public void SetParentAuxToNose()
    {
        aux.transform.position = inNose.position;
        aux.transform.SetParent(inNose);
    }

    void NobodyLovesYou()
    {
        haveOwner = false;
        doggyLove.fillAmount = 0.4f;
        doggyLovePanel.SetActive(false);
        doggyPanel.SetActive(false);
        touchTrash = false;
        texto.text = "____";
        image.GetComponent<Image>().sprite = defaultSprite;
        person_aux.GetComponent<PersonController>().ChangeState();
        trashcount = 0;     
    }

    public void ActivateFromPause()
    {
        actionAnim = false;
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        
    }
}
