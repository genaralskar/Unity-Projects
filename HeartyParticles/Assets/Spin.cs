using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spin : MonoBehaviour {

	public Vector3 rotateAmount;
	public Vector3 startPot;

	// Update is called once per frame
	void FixedUpdate () {
		transform.Rotate (rotateAmount * Time.deltaTime);
		transform.Translate(new Vector3(Mathf.Sin(Time.time), 0, 0));
	}
}
