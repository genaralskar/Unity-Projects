using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckerController : MonoBehaviour {

	// used to check against falling numbers, set in GameController when object is instantiated
	public float number;


	// Use this for initialization
	void Start () {
		// object gets destroyed after one second because we don't need it that long
		// it's just a trigger with a check value on, most checking is done in the NumberController script
		Destroy(gameObject, 1f);
		Debug.Log("Checker.number = " + number);
	}
	
	// Update is called once per frame
	void Update () {
	}
}
