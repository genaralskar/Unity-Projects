using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LedgeFinder : MonoBehaviour
{

	public Transform ledgeRayPoint;
	public Vector3 ledgeGrabOffset;
	public LayerMask rayMask;
	public float rayLength = .5f;
	public bool ledgeFound;
	public float ledgePointYOffset;
	public float ledgeFinderDistance = .6f;
	public PlayerController pc;

	public bool ledgeGrabbed;
	
	// Update is called once per frame
	void Update ()
	{
		
		//move ray point to input direction
		float xForce = Input.GetAxis("Horizontal");

		float yForce = Input.GetAxis("Vertical");
		
		Vector3 forceVector = new Vector3(xForce, 0, yForce);
		

		forceVector = pc.camera.transform.TransformDirection(forceVector);
		forceVector = forceVector.normalized * ledgeFinderDistance;
		if(forceVector != Vector3.zero)
			ledgeRayPoint.transform.rotation = Quaternion.LookRotation(forceVector);
		
		forceVector.y = ledgePointYOffset;
		//forceVector += pc.transform.position;
		ledgeRayPoint.localPosition = forceVector;
		
		//raycasting downwards
		//if hits, its a ledge
		//if ungrounded, do grab
		RaycastHit hit;
		if (!pc.grounded && !pc.ledgeGrabbed && pc.rb.velocity.y < 0)
		{
			if (Physics.Raycast(ledgeRayPoint.position, Vector3.down, out hit, rayLength, rayMask))
			{
				ledgeFound = true;
				ledgeRayPoint.transform.position = new Vector3(ledgeRayPoint.position.x, transform.position.y, ledgeRayPoint.position.z);
				//rotate thing dont work fix it stupid
				transform.LookAt(ledgeRayPoint);
				pc.StartLedgeMove(hit.point, ledgeGrabOffset, transform.rotation);
			}
		}
		else if(!pc.ledgeGrabbed)
		{
			ledgeFound = false;
		}
	}
}
