using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Forcewall : MonoBehaviour {

	public Vector3 force;

	void OnTriggerEnter(Collider other)
	{
		other.GetComponent<NavRigid>().Push(force);
	}
}
