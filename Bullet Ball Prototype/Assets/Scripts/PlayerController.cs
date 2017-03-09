using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour {

	private Rigidbody myRigidBody;
	public float moveSpeed;

	private Vector3 moveVelocity;

	private Camera mainCamera;

	public GunController Gun;

	// Use this for initialization
	void Start () {
		myRigidBody = GetComponent<Rigidbody>();
		mainCamera = FindObjectOfType<Camera>();
	}
	
	// Update is called once per frame
	void Update () {

		// Player Aim
		Ray cameraRay = mainCamera.ScreenPointToRay(Input.mousePosition);
		Plane groundPlane= new Plane(Vector3.up, Vector3.zero);
		float rayLength;

		if(groundPlane.Raycast(cameraRay, out rayLength))
		{
			Vector3 pointToLook = cameraRay.GetPoint(rayLength);
			Debug.DrawLine(cameraRay.origin, pointToLook, Color.blue);

			transform.LookAt(new Vector3(pointToLook.x, transform.position.y, pointToLook.z));
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
	}

	void FixedUpdate () {
		// Player Movement
		Ray cameraRay = Camera.main.ScreenPointToRay(Input.mousePosition);
		Plane groundPlane = new Plane(Vector3.up, Vector3.zero);
		float rayLength;
		
		if(groundPlane.Raycast(cameraRay, out rayLength))
		{
			Vector3 pointToLook = cameraRay.GetPoint(rayLength);
			Debug.Log(cameraRay.GetPoint(rayLength));
			if(Input.GetMouseButton(0))
			{
				myRigidBody.AddForce(Vector3.MoveTowards(transform.position, pointToLook, -moveSpeed));
			}
			if(Input.GetMouseButton(1))
			{
				
			}
		}
	}
}
