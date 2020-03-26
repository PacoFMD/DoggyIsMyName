using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    float mouseSensitivity = 5f;
    public Transform target;
    public float dstFromTarget = 2f, rotationSmoothTime = 1.2f;
    Vector2 pitchMinMax = new Vector2(-40, 85);
    Vector3 rotationSmoothVelocity, currrentRotation;
    

    bool lockCursor;

    float yawn, pitch;

    private void Start()
    {
        if (lockCursor)
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
        }
    }

    private void LateUpdate()
    {
        CameraCon();
    }



    void CameraCon()
    {
        yawn += Input.GetAxis("Mouse X") * mouseSensitivity;
        pitch += Input.GetAxis("Mouse Y") * mouseSensitivity;

        pitch = Mathf.Clamp(pitch, pitchMinMax.x, pitchMinMax.y);

        currrentRotation = Vector3.SmoothDamp(currrentRotation, new Vector3(pitch, yawn), ref rotationSmoothVelocity, rotationSmoothTime);
        transform.eulerAngles = currrentRotation;

        transform.position = target.position - transform.forward * dstFromTarget;
    }
}
