using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetVelocity : MonoBehaviour {

	public Vector3 velocity;

	void Start () {
		GetComponent<Rigidbody>().velocity = velocity;
	}
	
	
}
