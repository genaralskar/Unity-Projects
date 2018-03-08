using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class LastFrameVelocity : MonoBehaviour {

	public Vector3 lfVelocity;

	void FixedUpdate()
	{
		lfVelocity = GetComponent<Rigidbody>().velocity;
	}

}
