using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraControl : MonoBehaviour {

	new Camera camera;
	public float moveSpeed = 1;
	[Range(0, 1)]
	public float lerpAmount = 0.5f;
	

	// Use this for initialization
	void Start () {
		camera = Camera.main;
	}
	
	// Update is called once per frame
	void LateUpdate () {
		float horiz = Input.GetAxis("Horizontal");
		float vert = Input.GetAxis("Vertical");
		Vector3 moveVector = new Vector3(horiz/2 - vert/2, 0, vert/2 + horiz/2);

	//	print(moveVector);
		Vector3 lerpMove = Vector3.Lerp(Vector3.zero, moveVector, lerpAmount);
	//	print(lerpMove);
		transform.Translate(lerpMove * moveSpeed * Time.deltaTime, Space.World);

	}


	
}
