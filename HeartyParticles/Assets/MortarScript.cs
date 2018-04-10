using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MortarScript : MonoBehaviour {

	public GameObject mortarProjectile;
	public Transform mortarTarget;
	public float shootAngle = 30f;

	// Use this for initialization
	void Start () {
	//	shootAngle = transform.rotation.x;
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown("b"))
		{
			GameObject ball = Instantiate(mortarProjectile, transform.position, Quaternion.identity) as GameObject;
			ball.GetComponent<Rigidbody>().velocity = BallisticVelocity(mortarTarget, shootAngle);
		//	Destroy(ball, 10);
		}
	}


	Vector3 BallisticVelocity(Transform target, float angle)
 {
     Vector3 dir = target.position - transform.position; // get Target Direction
     float height = dir.y; // get height difference
     dir.y = 0; // retain only the horizontal direction
     float dist = dir.magnitude; // get horizontal distance
     float a = angle * Mathf.Deg2Rad; // Convert angle to radians
     dir.y = dist * Mathf.Tan(a); // set dir to the elevation angle.
     dist += height / Mathf.Tan(a); // Correction for small height differences
     
     // Calculate the velocity magnitude
     float velocity = Mathf.Sqrt(dist * Physics.gravity.magnitude / Mathf.Sin(2 * a));
     return velocity * dir.normalized; // Return the velocity vector.
 }
}
