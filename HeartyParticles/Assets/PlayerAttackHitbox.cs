using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttackHitbox : MonoBehaviour {

	public float knockbackAmount = 1;
	public Vector3 knockbackDirection;
	public float duration = 0.1f;

	// void OnTriggerEnter(Collider other)
	// {

	// 	Vector3 knockbackVector = transform.TransformDirection(transform.forward + knockbackDirection);

	// 	NavRigid navAgent = other.GetComponent<NavRigid>();
	// 	if(navAgent)
	// 	{
	// 		navAgent.Push(knockbackVector * knockbackAmount);
	// 	}
	// }

	void OnEnable()
	{
		
		Invoke("SetDisabled", duration);
	}

	void SetDisabled()
	{
		gameObject.SetActive(false);
	}
}
