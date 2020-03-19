using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BallMove : MonoBehaviour
{
   public Rigidbody ball;
    public GameObject ballobj;
    public float force;
    public void RollBall()
    {
        ballobj.transform.parent = null;
        ball.AddForce(Vector3.back * force);
    }
}
