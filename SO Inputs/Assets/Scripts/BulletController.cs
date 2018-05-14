using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletController : MonoBehaviour
{

	public float BulletSpeed = 10f;
	public float BulletLifetime = 5f;
	public Vector3 InheritVelocity;

	private Rigidbody rb;

	void Start()
	{
		rb = GetComponent<Rigidbody>();
		Vector3 tempNewVelocity = (transform.forward * BulletSpeed) + InheritVelocity;
		if (tempNewVelocity.magnitude < BulletSpeed)
		{
			rb.velocity = (transform.forward * BulletSpeed); //add left and right velocity to inherit
															 //convert world to local space and whatnot
			print("not inheriting velocity");
		}
		else
		{
			rb.velocity = (transform.forward * BulletSpeed) + InheritVelocity;
			print("inheriting velocity");
		}
		
		Invoke("DestroyThis", BulletLifetime);
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	private void DestroyThis()
	{
		Destroy(gameObject);
	}
	
	
}
