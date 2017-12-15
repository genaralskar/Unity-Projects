using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraRotate : MonoBehaviour {


	public Transform rotateAround;
	public float trackSpeed;
	public Vector3 rotation;
	public float rotateSpeed;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void LateUpdate () {
		transform.position = Vector3.Lerp(transform.position, rotateAround.position, trackSpeed);
	//	transform.position = rotateAround.position;

		if(Input.GetAxis("Horizontal") != 0)
		{
			rotation.y -= Input.GetAxis("Horizontal") * rotateSpeed * Time.deltaTime;
		}

		if(Input.GetAxis("Vertical") != 0 && rotation.x <= 90 && rotation.x >= 0)
		{
			rotation.x += Input.GetAxis("Vertical") * rotateSpeed * Time.deltaTime;
		}

		if(rotation.x > 90)
			rotation.x = 90;

		if(rotation.x < 0)
			rotation.x = 0;
		

		Quaternion tempRot = Quaternion.Euler(rotation);
		transform.rotation = tempRot;
	}
}
