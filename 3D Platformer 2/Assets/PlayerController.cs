using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using UnityEditor;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.Networking;

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

	public Animator anims;
	[Range(0, 1)]
	public float animSpeedMod;

	public bool isSliding;

	public bool grounded = true;
	public bool ledgeGrabbed = false;

	public CapsuleCollider bumperCollider;
	public SphereCollider groundedCollider;

	public Transform wallNormalRay;
	public Transform wallEndDetect;

	// Use this for initialization
	void Start ()
	{
		rb = GetComponent<Rigidbody>();
		dragMultiplier = groundedDrag;
	}

	private void Update()
	{
		//Jump
		if (grounded && Input.GetButtonDown("Jump"))
		{
			Vector3 jumpVector = new Vector3(0, jumpForce, 0);
			//	print(jumpVector);
			rb.AddForce(jumpVector);
		}
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
		grounded = IsGrounded();
		
		
		if (grounded && !ledgeGrabbed)
		{
			Move();
		}
		else if(!grounded && !ledgeGrabbed)
		{
			AirMove();
		}
		else if(!grounded && ledgeGrabbed)
		{
			LedgeMove();
			WallNormalRaycast();
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

	#region LedgeMoveStuff

	public void StartLedgeMove(Vector3 ledgePoint, Vector3 grabOffset, Quaternion ledgeRotation)
	{
		ledgeGrabbed = true;
		//disable colliders
		bumperCollider.enabled = false;
		groundedCollider.enabled = false;
		//rb kinematic
		rb.isKinematic = true;
		//move player to correct spot
		grabOffset = art.TransformDirection(grabOffset);
		art.rotation = ledgeRotation;
		
		transform.position = ledgePoint + grabOffset;
		
		//play grab animation
	}

	private void WallNormalRaycast()
	{
		RaycastHit hit;
		if(Physics.Raycast(wallNormalRay.position, art.forward, out hit, 1f, raycastCollisionMask))
		{
			Vector3 rotate = Vector3.RotateTowards(art.forward, hit.normal * -1, .1f, 0);
			art.rotation = Quaternion.LookRotation(rotate);
			//set players distance from the wall
			Vector3 newPos = new Vector3(hit.point.x, transform.position.y, hit.point.z);
			//print(art.TransformDirection(newPos));
			//newPos -= art.TransformDirection(newPos) - hit.point * .5f;
		//	print("wall normal = " + hit.normal);
			//newPos.x += hit.point.x * .5f;
			//newPos.z += hit.point.z * .5f;

			Vector3.Lerp(transform.position, newPos, .5f);
			
			//transform.position = newPos + (hit.normal * .5f);
//			print("Normal: " + hit.normal + " Rotate: " + rotate);
		}
	}

	private void LedgeMove()
	{
		//raycast wall face, snap rotation to that normal
		//raycast ledge on right and left side of character, move raycast backwards to find the edge
		//raycast wall of left and right side of character, to find the end of the walls
		
		
		//move left and right with controls (animation!)
		//rotate move direction to player direction
		//Vector3 sideMove = 
		float xForce = Input.GetAxis("Horizontal");

		float yForce = Input.GetAxis("Vertical");
		
		Vector3 forceVector = new Vector3(xForce, 0, yForce);
		forceVector.z = 0;
		forceVector = art.TransformDirection(forceVector);
		
//		print(forceVector);

		transform.position += forceVector * Time.deltaTime;
		//press jump play climb animation
		//press back ungrab ledge
		if (Input.GetAxis("Vertical") < 0)
		{
			EndLedgeMove();
		}

		if (Input.GetButtonDown("Jump"))
		{
			EndLedgeMove();
			rb.AddForce(Vector3.up * jumpForce * 1.5f);
		}
	}

	private bool WallEndCheck(Vector3 input)
	{
		Vector3 inp = input.normalized;
		

		return false;
	}

	public void EndLedgeMove()
	{
		ledgeGrabbed = false;
		//enable colliders
		bumperCollider.enabled = true;
		groundedCollider.enabled = true;
		//rb kinematic
		rb.isKinematic = false;
	}
	
	#endregion
	
	

	private bool IsGrounded()
	{
		//return true;
		if (ledgeGrabbed)
		{
			return false;
		}
		return Physics.Raycast(transform.position + (Vector3.up * .1f), Vector3.down, raycastDistance, raycastCollisionMask);
		
	}
}
