using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MeteorController : MonoBehaviour {

	Rigidbody rb;

	void Start()
	{
		rb = GetComponent<Rigidbody>();
		StartCoroutine(EnableArtCheck());
	}

	IEnumerator EnableArtCheck()
	{
		while(rb.velocity.y > 0)
		{
			yield return new WaitForFixedUpdate();
		}
		GetComponent<MeshRenderer>().enabled = true;
	}
	
}
