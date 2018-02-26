using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(Rigidbody), typeof(NavMeshAgent))]
public class NavRigid : MonoBehaviour {

	Rigidbody rb;
	NavMeshAgent agent;

	public Transform destination;

	public float slideMag;
	public float pushMag;

	public float pushbackMod = 1.1f;

	public LayerMask groundMask;

	public bool isGrounded;

	public Vector3 lfVelocity;

	void Start()
	{

		print(Vector3.Dot(new Vector3(12, 15, 15), new Vector3(12, 15, -15)));

		rb = GetComponent<Rigidbody>();
		agent = GetComponent<NavMeshAgent>();
		agent.SetDestination(destination.position);
	}

	void FixedUpdate()
	{
		lfVelocity = rb.velocity;
	}

	public void Push(Vector3 _force)
	{
		agent.enabled = false;
		rb.isKinematic = false;
	//	rb.AddForce(_force);
		rb.velocity += _force / pushbackMod;
		print(_force);
		print("Pushed! " + rb.velocity);
		isGrounded = false;
		StopAllCoroutines();
		StartCoroutine(CheckGrounding());
	}

	void OnCollisionEnter(Collision other)	//when something bumps into this object
	{
	//	print(other.relativeVelocity);
		NavRigid collNR = other.gameObject.GetComponent<NavRigid>();
		if(collNR != null && rb.isKinematic == true) //if this rigidbody is kinimatic/has the agent enabled
		{
			//if relative magnitude is big enough
			if(other.relativeVelocity.magnitude > pushMag)
			{
				//push this rigidbody
				Push(collNR.lfVelocity);
				other.rigidbody.velocity = collNR.lfVelocity / pushbackMod;
			}

			
		}

	//	print(other.gameObject + " Collider velocity: "+ other.rigidbody.velocity);
	//	CollisionCheck(other);
	}

	void OnCollisionStay(Collision other)
	{
	//	CollisionCheck(other);
	}

	void CollisionCheck(Collision other) 
	{
		Rigidbody collRB = other.rigidbody;
		if(collRB != null && rb.isKinematic == true)
		{
			print("First check done");

			float collMag = collRB.velocity.magnitude;
			print("Relative mag: " + other.relativeVelocity.magnitude);
			print(gameObject + " This mag: " + rb.velocity.magnitude);
			print(other.gameObject +  "Collider mag: " + collMag);
			print(other.gameObject + " Collider velocity: "+ collRB.velocity);

			
			// if(Vector3.Dot(rb.velocity, collRB.velocity) < 0 && collMag > rb.velocity.magnitude + pushMag)
			// {
			// 	print(Vector3.Dot(rb.velocity, collRB.velocity));
			// 	Push(collRB.velocity);
			// 	rb.velocity = collRB.velocity;
			// }

			if(other.relativeVelocity.magnitude > pushMag && collMag > rb.velocity.magnitude)
			{
				print("Pushing!");
				print(other.gameObject + " Collider velocity: "+ collRB.velocity);
				Push(collRB.velocity);
				print(gameObject + " This velocity: "+ rb.velocity);
			//	rb.velocity = collRB.velocity;
			}

			
			// if(collMag > rb.velocity.magnitude + pushMag)
			// {
			
			// }
		}
	}

	// void OnCollisionEnter(Collision other)
	// {
	// 	Rigidbody tempRB = other.rigidbody;
	// 	if(tempRB != null)
	// 	{
	// 		if(tempRB.velocity.magnitude > rb.velocity.magnitude)
	// 		{
	// 			Push(tempRB.velocity * 10);
	// 			rb.velocity = tempRB.velocity;
	// 		}
				
	// 	//	if(tempRB.velocity > rb.velocity)
	// 	//	{
	// 			 //set velocity instead of add force <<<<<<<<<<
	// 	//	}
	// 	}
			
	// }

	IEnumerator CheckGrounding()
	{
		while(isGrounded == false || VelocityCheck())
		{
			yield return new WaitForSeconds(.1f);
			RaycastHit hit;
			if(Physics.SphereCast(transform.position, 0.1f, Vector3.down, out hit, agent.height/2, groundMask))
			{
				isGrounded = true;
			}
			else
			{
				isGrounded = false;
			}
		//	print("checking if grounded");
		}
		print("Slide check done!");
		rb.isKinematic = true;
		agent.enabled = true;
		agent.SetDestination(destination.position);

	}

	bool VelocityCheck()
	{
		return rb.velocity.magnitude > slideMag;
	}

}
