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

	public LayerMask groundMask;

	public bool isGrounded;

	void Start()
	{
		rb = GetComponent<Rigidbody>();
		agent = GetComponent<NavMeshAgent>();
		agent.SetDestination(destination.position);
	}

	public void Push(Vector3 _force)
	{
		agent.enabled = false;
		rb.isKinematic = false;
	//	rb.AddForce(_force);
		rb.velocity += _force;
		isGrounded = false;
		StopAllCoroutines();
		StartCoroutine(CheckGrounding());
	}

	void OnCollisionStay(Collision other)
	{
		Rigidbody collRB = other.rigidbody;
		if(collRB != null && rb.isKinematic == true)
		{
			float collMag = collRB.velocity.magnitude;
			if(collMag > rb.velocity.magnitude + pushMag)
			{
				Push(collRB.velocity);
			//	rb.velocity = collRB.velocity;
			}
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
			print("checking if grounded");
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
