using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyAfterTime : MonoBehaviour {

	[Tooltip("The amount of time it takes to destroy this object")]
	public float time = 5;

	// Use this for initialization
	void Start () {
		Invoke("Destroy", time);
	}
	
	void Destroy()
	{
		Destroy(gameObject);
	}
}
