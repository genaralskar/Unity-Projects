using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMover : MonoBehaviour {


	CharacterController cc;
	Rigidbody rb;
	public Animator anims;
	public Camera characterCam;

	public float slopeAngle = 45;
	public float moveSpeed = 10;
	public float accelRate = 2;
	public float decelRate = 1;
	public float slideFactor = 1;
	public Vector3 moveVector;
	public Vector3 moveAdditional;

	public Vector3 ccVelocity;
	public Vector3 rbVelocity;

	public float mouseRotY;
	public float mouseRotX;
	public float sensitivity = 1f;

	// Use this for initialization
	void Start () {
		cc = GetComponent<CharacterController>();
		rb = GetComponent<Rigidbody>();
		anims = GetComponent<Animator>();
		Cursor.lockState = CursorLockMode.Locked;
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		rbVelocity = rb.velocity;
		Inputs();
	//	print(cc.isGrounded);
		//walking state/falling state
		//if walking, use cc.isgrounded
		//if falling, use RBGrounded

		// if(RBGrounded())
		// {
		// 	CCMove();
		// //	print("ccmove");
		// }
		// else
		// {
		// 	RBMove();
		// //	print("rbmove");
		// }
	}

	public void CCMove()
	{
		// if(!cc.isGrounded)
		// {
		// 	RaycastHit hit;
		// 	if(Physics.Raycast(transform.position,Vector3.down, out hit))
		// 	{
		// 		transform.position = new Vector3(transform.position.x, hit.point.y + cc.height/2, transform.position.z);
		// 	}
		// }
		RBGroundMove();
	//	cc.Move(moveVector + moveAdditional * Time.deltaTime);
		ccVelocity = cc.velocity;
	//	print(cc.isGrounded);
	//	rb.velocity = cc.velocity;
	}

	public void RBGroundMove()
	{

		if(rb.velocity.magnitude < moveSpeed * Mathf.Sqrt(2))
		rb.velocity = moveVector;

		// if(rb.velocity.magnitude < moveSpeed)
		// {
		// 	rb.AddForce(moveVector * accelRate); //100 is accel rate
		// //	print("Moving");
		// }
		// else
		// {
			
		// }
	}

	void Decel()
	{
		rb.velocity /= decelRate;
	//	Vector3 decelVelocity = new Vector3(tempX, rb.velocity.y, tempZ);
	//	print("Decel : " + decelVelocity);
		print ("Decel");
	}

	public void RBMove() //air movement
	{
		rb.AddForce(moveVector * .9f);
	//	print("adding force");
	}

	public bool RBGrounded()
	{
		
		RaycastHit hit;
		if(Physics.SphereCast(transform.position, cc.radius, Vector3.down, out hit, 1 - (cc.radius/cc.height + .1f)))
		{
			if(Vector3.Angle(hit.normal, Vector3.up) < slopeAngle)
			{
				return true;
			}
		}
		return false;
	}

	public void SetRBVelocity()
	{
		rb.velocity = cc.velocity;
	}

	void Inputs()
	{
		
	//	moveVector.x = transform.right.x * Input.GetAxis("Horizontal");
	//	moveVector.z = transform.forward.z * Input.GetAxis("Vertical");

		moveVector = (transform.right * anims.GetFloat("MoveX") + transform.forward * anims.GetFloat("MoveZ")) * moveSpeed;

		if(moveVector == Vector3.zero && rb.velocity != Vector3.zero && anims.GetBool("RBGrounded"))
		{
			Decel();
		}

	//	moveVector.y = -.1f;
	//	moveVector = new Vector3(anims.GetFloat("MoveX"), 0, anims.GetFloat("MoveZ")) * moveSpeed;


		//========================   mouse stuff   ===============================\\
		mouseRotX += Input.GetAxis("Mouse X") * sensitivity; //rotation left and right
		mouseRotY += Input.GetAxis("Mouse Y") * sensitivity; //rotation up and down
		mouseRotY = Mathf.Clamp(mouseRotY, -90, 90);
		transform.rotation = Quaternion.Euler(0, mouseRotX, 0); //left and right, use Y axis
		characterCam.transform.localRotation = Quaternion.Euler(-mouseRotY, 0, 0); //up and down, use X axis
		
	}
}
