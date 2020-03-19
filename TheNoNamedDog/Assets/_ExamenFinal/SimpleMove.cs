using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleMove : MonoBehaviour
{
	public float speed;
	
	private Vector3 direction;
    
    void Start()
    {
        
    }

    void Update()
	{
		direction = new Vector3(Input.GetAxis("Horizontal"),0,Input.GetAxis("Vertical"));
		direction = direction.magnitude>1? direction.normalized : direction;
		
		transform.Translate(direction*speed*Time.deltaTime );
    }
}
