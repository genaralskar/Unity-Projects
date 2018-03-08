﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMover : MonoBehaviour {


	CharacterController cc;
	Rigidbody rb;
	public Animator anims;
	public Camera characterCam;

	public float slopeAngle = 45;
	public float moveSpeed = 10;
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
	void Update () {
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
		cc.Move(moveVector + moveAdditional * Time.deltaTime);
		ccVelocity = cc.velocity;
	//	print(cc.isGrounded);
	//	rb.velocity = cc.velocity;
	}

	public void RBMove()
	{
		rb.AddForce(moveVector * 100);
		print("adding force");
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
		moveVector.y = -.1f;
	//	moveVector = new Vector3(anims.GetFloat("MoveX"), 0, anims.GetFloat("MoveZ")) * moveSpeed;
		//========================mouse stuff===============================\\
		mouseRotX += Input.GetAxis("Mouse X") * sensitivity; //rotation left and right
		mouseRotY += Input.GetAxis("Mouse Y") * sensitivity; //rotation up and down
		mouseRotY = Mathf.Clamp(mouseRotY, -90, 90);

		transform.rotation = Quaternion.Euler(0, mouseRotX, 0); //left and right, use Y axis
		characterCam.transform.localRotation = Quaternion.Euler(-mouseRotY, 0, 0); //up and down, use X axis
		
	}
}
