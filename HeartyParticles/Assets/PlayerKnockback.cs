using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerKnockback : MonoBehaviour {

	Rigidbody rb;
	PlayerMover pm;
	Animator anims;

	public float slideMag;
	public float pushMag;

	public float pushbackMod = 1.1f;

	void Start()
	{
		rb = GetComponent<Rigidbody>();
		pm = GetComponent<PlayerMover>();
		anims = GetComponent<Animator>();
	}

	public void Push(Vector3 _force)
	{
		print("knocking back player");
		anims.SetTrigger("Knockback");
	//	rb.AddForce(_force);
	//	rb.velocity += _force / pushbackMod; //send this to the animator......
	//	print(_force);
	//	print("Pushed! " + rb.velocity);
	}

	void OnCollisionEnter(Collision other)	//when something bumps into this object
	{
	//	print(other.relativeVelocity);
		if(rb.isKinematic)
		{
			CollisionCheck(other);
		}

	}

	void OnCollisionStay(Collision other)
	{
	//	CollisionCheck(other);
		if(rb.isKinematic)
		{
			CollisionCheck(other);
		}
	}

	//handles turning on rb from collision
	void CollisionCheck(Collision other)
	{
		Rigidbody collRB = other.rigidbody;
		LastFrameVelocity collNR = other.gameObject.GetComponent<LastFrameVelocity>();
		if(collRB != null || collNR != null) //if collider has a rigidbody
		{
			float collMag = collRB.velocity.magnitude; //get magnitude of collider

			//some kind of direction check

			if(other.relativeVelocity.magnitude > pushMag && collMag > rb.velocity.magnitude) //if relative magnitude is large enough, and the colliders mag is larger than this
			{
				//push this rigidbody
				Push(collRB.velocity);
				other.rigidbody.velocity = collNR.lfVelocity / pushbackMod;
			}
		}
	}

	bool VelocityCheck()
	{
		return rb.velocity.magnitude > slideMag;
	}
}
