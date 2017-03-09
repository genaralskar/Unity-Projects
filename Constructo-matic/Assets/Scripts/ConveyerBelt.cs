using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConveyerBelt : MonoBehaviour {

	Rigidbody obj;
	public float speed = 3.0f;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		/*if(Input.GetKeyDown("space"))
		{
			transform.Rotate(transform.rotation.x, transform.rotation.y+90.000000000000000000f, transform.rotation.z);
		}
		*/
	}

	void OnCollisionStay(Collision obj)
	{
		float conveyorVelocity = speed * Time.deltaTime;
		obj.gameObject.GetComponent<Rigidbody>().velocity = conveyorVelocity * transform.forward;
	}
}
