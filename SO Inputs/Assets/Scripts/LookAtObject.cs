using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LookAtObject : MonoBehaviour
{

	public Transform ObjectToLookAt;
	
	// Update is called once per frame
	private void Update () {
		transform.LookAt(ObjectToLookAt);
	}
}
