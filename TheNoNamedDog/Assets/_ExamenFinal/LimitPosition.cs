using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LimitPosition : MonoBehaviour
{
	public Transform min,max;
	
	void LateUpdate()
	{
		float x = transform.position.x;
		float z = transform.position.z;
		
		x = Mathf.Max(min.position.x, x);
		x = Mathf.Min(max.position.x, x);
		
		z = Mathf.Max(min.position.z, z);
		z = Mathf.Min(max.position.z, z);
		
		transform.position = new Vector3(x, transform.position.y, z);
    }
}
