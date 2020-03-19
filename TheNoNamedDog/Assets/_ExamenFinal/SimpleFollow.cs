using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class SimpleFollow : MonoBehaviour
{
	public Transform target;
    
	void LateUpdate()
	{
		if(target)
	    transform.position = target.position;
    }
}
