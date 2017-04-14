using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckerController : MonoBehaviour {

	public float number = Calculator.sum;

	// Use this for initialization
	void Start () {
		Destroy(gameObject, 1);
	}
	
	// Update is called once per frame
	void Update () {
		transform.Translate(Vector3.up * 100 * Time.deltaTime);
	}
}
