using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpinDog : MonoBehaviour
{
    public float spinSpeed = 2;

    // Update is called once per frame
    void Update()
    {
        this.transform.Rotate(Vector3.up * spinSpeed * Time.deltaTime);
    }
}
