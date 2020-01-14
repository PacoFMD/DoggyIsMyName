using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    public float rotationSpeed = 1;
    public Transform target, player;
    float mouseX, mouseY;
    // Start is called before the first frame update
    void Start()
    {
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
    }

    private void LateUpdate()
    {
        CameraControl();
    }

    // Update is called once per frame
    void Update()
    {
        
    }


    void CameraControl()
    {
        mouseX += Input.GetAxis("Mouse X") * rotationSpeed;
        mouseY -= Input.GetAxis("Mouse Y") * rotationSpeed;
        mouseY = Mathf.Clamp(mouseY, -35, 60);

        transform.LookAt(target);

        if (Input.GetKey(KeyCode.LeftShift))
        {
            target.rotation = Quaternion.Euler(mouseY, mouseY, 0);
        }
        else
        {
            target.rotation = Quaternion.Euler(mouseY, mouseX, 0);
            player.rotation = Quaternion.Euler(0, mouseX, 0);
        }

        


    }
}
