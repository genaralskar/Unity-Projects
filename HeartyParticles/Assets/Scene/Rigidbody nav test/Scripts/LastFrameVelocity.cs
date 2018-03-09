using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class LastFrameVelocity : MonoBehaviour {

	Rigidbody rb;
	public Vector3 lfVelocity;

	void Start()
	{
		rb = GetComponent<Rigidbody>();
	}

	void FixedUpdate()
	{
		lfVelocity = rb.velocity;
	}

}
