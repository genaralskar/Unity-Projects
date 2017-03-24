using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {

	private Rigidbody myRigidBody;
	public float moveSpeed;

	private Vector3 moveVelocity;
	public Vector3 curVelocity;

	public GunController Gun;

	Vector3 mousePos;
	Plane groundPlane = new Plane(Vector3.up, Vector3.zero);

	// Use this for initialization
	void Start () {
		myRigidBody = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {

		// Player Aim
		Ray cameraRay = Camera.main.ScreenPointToRay(Input.mousePosition);
		float rayLength;

		if(groundPlane.Raycast(cameraRay, out rayLength))
		{
			mousePos = cameraRay.GetPoint(rayLength);
			Debug.DrawLine(cameraRay.origin, mousePos, Color.blue);
			Debug.DrawLine(transform.position, mousePos, Color.red);

			transform.LookAt(new Vector3(mousePos.x, transform.position.y, mousePos.z));
		}

		//Player Firing
		if(Input.GetMouseButtonDown(0))
		{
			Gun.isFiring = true;
		}
		if(Input.GetMouseButtonUp(0))
		{
			Gun.isFiring= false;
		}
		Debug.Log("mousePos = " + mousePos);
		Debug.Log("Position = " + transform.position);
	}

	void FixedUpdate () {
		// Player Movement
		Vector3 curPosition = transform.position;
		if(Input.GetMouseButton(0))
		{
			myRigidBody.AddForce(transform.forward * -moveSpeed);
			//myRigidBody.AddForce(Vector3.MoveTowards(curPosition, mousePos, -moveSpeed), ForceMode.Acceleration);
		}
		if(Input.GetMouseButton(1))
		{	
	
		}
		curVelocity = myRigidBody.velocity;
		//Vector3 oppositeForce = myRigidBody.velocity;
		//myRigidBody.AddRelativeForce(oppositeForce);
	}
}
