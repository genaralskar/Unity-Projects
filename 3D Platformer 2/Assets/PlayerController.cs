using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using UnityEditor;
using UnityEngine;

public class PlayerController : MonoBehaviour {

    public Rigidbody rb;
	//public float maxSpeed = 50;
	public float moveSpeed = 100;
	public float jumpForce = 400;
	public float fallSpeed = 10;
	[Range(0, 1)]
	public float groundedDrag = 0.9f;
	[Range(0, 1)]
	public float airDrag = 0.98f;
	public Transform lookAtThing;
	public Transform art;
	public Camera camera;
	public Transform lookAtThingTrans;

	public float raycastDistance = 1.1f;
	public LayerMask raycastCollisionMask;

	private float dragMultiplier;
	private PhysicMaterial pm;

	public Animator anims;
	[Range(0, 1)]
	public float animSpeedMod;

	public bool isSliding;

	// Use this for initialization
	void Start ()
	{
		rb = GetComponent<Rigidbody>();
		pm = GetComponent<SphereCollider>().material;
		dragMultiplier = groundedDrag;
	}
	
	// Update is called once per frame
	void FixedUpdate ()
	{
		//add sliding check
		//if grounded
		//rb mag > 0
		//player moving down
		
		
		
	//	print(rb.velocity);
		
		//Drag();
		//print("Grounded: " + IsGrounded());
		
		//if velocity is low, set physics mat to stick
		bool grounded = IsGrounded();
		
		
		if (grounded)
		{
			Move();
		}
		else
		{
			AirMove();
		}
		Drag();

		
		//rotation
//		float angle = Vector3.Dot(Vector3.forward, rb.velocity.normalized);
//		
//		Vector3 rotVector = new Vector3(0, (angle * 180) + 0, 0);
//		print(rotVector);
//		transform.rotation = Quaternion.Euler(rotVector);
		lookAtThing.position = new Vector3(transform.position.x + rb.velocity.x, art.position.y, transform.position.z + rb.velocity.z);
		if (Vector3.Distance(transform.position, lookAtThing.position) > .1)
		{
			//use rotate towards instead
			Vector3 rotDirection = lookAtThing.position - art.transform.position;
			rotDirection = rotDirection.normalized;

			
			
			lookAtThingTrans.LookAt(lookAtThing);
			
			art.transform.rotation = Quaternion.RotateTowards(art.transform.rotation, lookAtThingTrans.rotation, 10f);
			//art.LookAt(lookAtThing);
			//art.transform.rotation = Quaternion.Euler(rotDirection);
		}
		
		//Jump
		if (grounded && Input.GetButtonDown("Jump"))
		{
			Vector3 jumpVector = new Vector3(0, jumpForce, 0);
		//	print(jumpVector);
			rb.AddForce(jumpVector);
		}
		
		
		//do grounded check, then do this with like rb.velocity.y < 5 or something
		if (!grounded && rb.velocity.y < 1)
		{
			
			rb.AddForce(new Vector3(0, -fallSpeed, 0));
		}

		#region Animation
		//animation stuff
		
		anims.SetFloat("PlaybackSpeed", rb.velocity.magnitude * animSpeedMod);
		anims.SetBool("IsGrounded", grounded);
		anims.SetFloat("RBMag", rb.velocity.magnitude);
		

		#endregion
	}

	private void Drag()
	{
		Vector3 dragVel = rb.velocity;
		dragVel.x *= dragMultiplier;
		dragVel.z *= dragMultiplier;
		rb.velocity = dragVel;
		//print("velocity: " + rb.velocity + "/n dragVel: " + dragVel);
	}

	private void Move()
	{
		dragMultiplier = groundedDrag;
		//add force in direction of input based on camera
		//movement
		float xForce = Input.GetAxis("Horizontal");

		float yForce = Input.GetAxis("Vertical");
		
		Vector3 forceVector = new Vector3(xForce, 0, yForce);
		

		forceVector = camera.transform.TransformDirection(forceVector);
		forceVector.y = 0;
		if (forceVector.magnitude > 1)
		{
			forceVector = forceVector.normalized;
		}
		
		rb.AddForce(forceVector * moveSpeed);
		
		anims.SetFloat("InputMag", forceVector.magnitude);
		
	}

	private void AirMove()
	{
		dragMultiplier = airDrag;
		float xForce = Input.GetAxis("Horizontal");

		float yForce = Input.GetAxis("Vertical");
		
		Vector3 forceVector = new Vector3(xForce, 0, yForce);
		

		forceVector = camera.transform.TransformDirection(forceVector);
		forceVector.y = 0;
		if (forceVector.magnitude > 1)
		{
			forceVector = forceVector.normalized;
		}
		
		rb.AddForce(forceVector * moveSpeed * .25f);
	}

	private bool IsGrounded()
	{
		//return true;
		return Physics.Raycast(transform.position + (Vector3.up * .1f), Vector3.down, raycastDistance, raycastCollisionMask);
		
	}
}
