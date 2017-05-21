using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[AddComponentMenu("Camera-Control")]
public class FirstPersonController1 : MonoBehaviour {

	public enum RotationAxes {MouseXAndY = 0, MouseX = 1, MouseY = 2};
	public RotationAxes axes = RotationAxes.MouseXAndY;
	public float sensitivityX = 15f;
	public float sensitivityY = 15f;
	public float minimumX = -360;
	public float maximumX = 360;
	public float minimumY = -90;
	public float maximumY = 90;
	private float rotationX = 0f;
	private float rotationY = 0f;
	private Quaternion originalRotation;

	public Camera playerCamera;
	Rigidbody rb;
	Collider coll;
	public float moveSpeed = 100;
	public float slowDownSpeed = .9f;
	public float jumpHeight = 300;
	public bool playerGrounded;

	// Use this for initialization
	void Start () {
		rb = GetComponent<Rigidbody>();
		coll = GetComponent<Collider>();
		// if(rb)
		// 	rb.freezeRotation = true;
		originalRotation = transform.localRotation;
	}
	
	// Update is called once per frame
	void Update ()
	{
		MouseLook();
	}

	void FixedUpdate ()
	{
		PlayerMovement();
	}

	public void MouseLook()
	{
		if (axes == RotationAxes.MouseXAndY)
		{
			rotationY += Input.GetAxis("Mouse Y") * sensitivityY;
			rotationX += Input.GetAxis("Mouse X") * sensitivityX;

			rotationY = ClampAngle(rotationY, minimumY, maximumY);
			rotationX = ClampAngle(rotationX, minimumX, maximumX);

			Quaternion yQuat = Quaternion.AngleAxis(rotationY, Vector3.left);
			Quaternion xQuat = Quaternion.AngleAxis(rotationX, Vector3.up);

			transform.localRotation = originalRotation * xQuat;
			playerCamera.transform.localRotation = originalRotation * yQuat;
		}
		else if(axes == RotationAxes.MouseX)
		{

		}
		else
		{

		}
	}

	public static float ClampAngle (float angle, float min, float max)
	{
		angle = angle % 360;
		if((angle >= -360) && (angle <= 360))
		{
			if(angle < -360)
			{
				angle += 360;
			}
			if(angle > 360)
			{
				angle += 360;
			}
		}
		return Mathf.Clamp(angle, min, max);
	}

	public void PlayerMovement()
	{

		//Add a max speed thing. magnitude of velocity, it'd be one of those

		if(Input.GetButton("Forward"))
		{
			rb.AddForce(transform.forward * moveSpeed);
		}
		if(Input.GetButton("Backward"))
		{
			rb.AddForce(transform.forward * -moveSpeed);
		}
		if(Input.GetButton("Left"))
		{
			rb.AddForce(transform.right * -moveSpeed);
		}
		if(Input.GetButton("Right"))
		{
			rb.AddForce(transform.right * moveSpeed);
		}
		if(!Input.GetButton("Forward") && !Input.GetButton("Backward") && !Input.GetButton("Left") && !Input.GetButton("Right") && playerGrounded)
		{
			rb.velocity = rb.velocity * slowDownSpeed;
		}

		if(IsGrounded())
		{
			playerGrounded = true;
		}
		else
		{
			playerGrounded = false;
		}

		if(Input.GetButton("Jump"))
		{
			if(playerGrounded)
			{
				rb.AddForce(transform.up * jumpHeight);
			}
		}
	}

	public bool IsGrounded()
	{
		// return Physics.CheckCapsule(coll.bounds.center, new Vector3(coll.bounds.center.x, coll.bounds.min.y - 0.1f, coll.bounds.center.z), .18f, 8);
		return Physics.CheckCapsule(new Vector3(coll.bounds.center.x, coll.bounds.min.y - 0.2f, coll.bounds.center.z), new Vector3(coll.bounds.center.x, coll.bounds.min.y - 0.2f, coll.bounds.center.z), .1f);
	}
}
