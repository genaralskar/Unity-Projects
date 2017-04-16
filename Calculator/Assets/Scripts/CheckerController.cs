using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckerController : MonoBehaviour {

	// used to check against falling numbers, set externally
	public float number;


	// Use this for initialization
	void Start () {
		// used as a trigger, spawn object then destroy it
		Destroy(gameObject, 1f);
		Debug.Log("Checker.number = " + number);
	}
	
	// Update is called once per frame
	void Update () {
	}
}
