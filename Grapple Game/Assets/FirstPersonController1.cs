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
	ConfigurableJoint configJ;
	public float moveSpeed = 100;
	public float slowDownSpeed = .9f;
	public float jumpHeight = 300;
	public bool playerGrounded;
	public Vector3 prevPos;

	public RopeController initialJoint;
	public float maxRopeDistance = 100;
	public bool ropeOut = false;
	public List<RopeController> ropeJoints;
	//used for checking distance between player and inital rope joint
	public Vector3 initialLocation;
	public float distanceToJoint;

	public float forwardCheck;

	public Vector3 localVelocity;

	// Use this for initialization
	void Start () {
		rb = GetComponent<Rigidbody>();
		coll = GetComponent<Collider>();
		configJ = GetComponent<ConfigurableJoint>();
		// GetComponent<FixedJoint>().connectedBody = null;
		// if(rb)
		// 	rb.freezeRotation = true;
		originalRotation = transform.localRotation;
	}
	
	// Update is called once per frame
	void Update ()
	{
		MouseLook();
		PlayerInputs();
		if(ropeOut)
		{
			distanceToJoint = Vector3.Distance(initialLocation, ropeJoints[ropeJoints.Count - 1].transform.position);
			if(Vector3.Distance(transform.position, ropeJoints[ropeJoints.Count - 1].transform.position) > distanceToJoint)
			{
				configJ.xMotion = ConfigurableJointMotion.Locked;
				configJ.yMotion = ConfigurableJointMotion.Locked;
				configJ.zMotion = ConfigurableJointMotion.Locked;
			}
		}
		forwardCheck = CheckMovementForward();
		localVelocity = transform.InverseTransformVector(rb.velocity);
	}

	void FixedUpdate ()
	{
		PlayerMovement();
	}
	void LateUpdate ()
	{
		prevPos = transform.position;
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
			if(playerGrounded)
			{
				rb.AddForce(transform.forward * moveSpeed);
			}
			else
			{
				rb.AddForce(transform.forward * moveSpeed / 2);
			}
		}

		if(Input.GetButton("Backward"))
		{
			if(playerGrounded)
			{
				if(localVelocity.z > 1.5f)
				{
					rb.velocity = rb.velocity * slowDownSpeed;
					Debug.Log("Backward stopping accessed");
				}
				else
				{
					rb.AddForce(transform.forward * -moveSpeed);
				}
			}
			else
			{
				rb.AddForce(transform.forward * -moveSpeed / 2);
			}

		}

		if(Input.GetButton("Left"))
		{
			if(playerGrounded)
			{
				rb.AddForce(transform.right * -moveSpeed);
			}
			else
			{
				rb.AddForce(transform.right * -moveSpeed / 2);
			}
		}

		if(Input.GetButton("Right"))
		{
			if(playerGrounded)
			{
				rb.AddForce(transform.right * moveSpeed);
			}
			else
			{
				rb.AddForce(transform.right * moveSpeed / 2);
			}
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

	public float CheckMovementForward()
	{
		return Vector3.Dot((transform.position - prevPos), transform.forward);
	}

	public float CheckMovementRight()
	{
		return Vector3.Dot((transform.position - prevPos), transform.right);
	}

	public void PlayerInputs()
	{
		if(Input.GetButtonDown("Fire1") && Cursor.lockState == CursorLockMode.Locked)
		{
			FireRope();
		}
		else if(Cursor.lockState != CursorLockMode.Locked)
		{
			Cursor.lockState = CursorLockMode.Locked;
		}
	}

	public bool IsGrounded()
	{
		// return Physics.CheckCapsule(coll.bounds.center, new Vector3(coll.bounds.center.x, coll.bounds.min.y - 0.1f, coll.bounds.center.z), .18f, 8);
		Debug.DrawLine(transform.position, new Vector3(coll.bounds.center.x, coll.bounds.min.y - 0.2f, coll.bounds.center.z), Color.red);
		return Physics.CheckCapsule(new Vector3(coll.bounds.center.x, coll.bounds.min.y - 0.2f, coll.bounds.center.z), new Vector3(coll.bounds.center.x, coll.bounds.min.y - 0.2f, coll.bounds.center.z), .1f);
	}

	public void FireRope()
	{
		if(ropeOut)
		{
			Debug.Log(ropeJoints.Count);
			configJ.connectedBody = null;
			for(int i = ropeJoints.Count -1; i > -1; --i)
			{
				Destroy(ropeJoints[i].gameObject);
			}
			ropeJoints.Clear();

			configJ.xMotion = ConfigurableJointMotion.Free;
			configJ.yMotion = ConfigurableJointMotion.Free;
			configJ.zMotion = ConfigurableJointMotion.Free;

			ropeOut = false;
		}
		else
		{
			Debug.Log(configJ.xMotion);
			initialLocation = transform.position;
			RaycastHit hit;
			if(Physics.Raycast(playerCamera.transform.position, playerCamera.transform.forward, out hit, maxRopeDistance))
			{
				RopeController newJoint = Instantiate(initialJoint, hit.point, Quaternion.Euler(0, 0, 0)) as RopeController;
				configJ.connectedBody = newJoint.GetComponent<Rigidbody>();
				// newJoint.GetComponent<FixedJoint>().connectedBody = rb;
				ropeJoints.Add (newJoint);
				ropeOut = true;
			}
		}

		Debug.Log("FireRope ran");
	}
}
