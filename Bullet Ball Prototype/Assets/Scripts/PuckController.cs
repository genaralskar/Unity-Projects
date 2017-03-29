using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PuckController : MonoBehaviour {

	public float height;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

		void OnCollisionEnter(Collision collision)
	{
		//if player is hit by bullet, run PlayerHit()
		if(collision.gameObject.tag == "Wall")
		{
			transform.position = new Vector3(transform.position.x, height, transform.position.z);
		}
	}
}
