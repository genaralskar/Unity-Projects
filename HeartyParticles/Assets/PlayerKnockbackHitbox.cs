using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerKnockbackHitbox : MonoBehaviour {

	public Vector3 knockbackForce;

	void OnTriggerEnter(Collider other)
	{
		other.GetComponent<PlayerKnockback>().Push(knockbackForce);
	}
}
