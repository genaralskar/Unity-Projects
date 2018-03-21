using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraTrackScript : MonoBehaviour {

	

	public float rotationAmount = 10;

	public float lightRotOffset = -10;

	Vector3 tempRot;

	public new GameObject light;

	public float moveSpeed;
	[Range(0, 1)]
	public float lerpAmount;

	public CamZoom camZoom;

	// Use this for initialization
	void Start () {
		tempRot = transform.rotation.eulerAngles;
	}
	
	// Update is called once per frame
	void LateUpdate () {
		Move();

		Rotate();
	}

	void Rotate()
	{
		
		
		if(Input.GetKey(KeyCode.Q))
		{
			tempRot.y += rotationAmount * Time.deltaTime;
		}
		if(Input.GetKey(KeyCode.E))
		{
			tempRot.y -= rotationAmount * Time.deltaTime;
		}

//		print(tempRot);

		transform.rotation = Quaternion.Euler(tempRot);
		
		light.transform.rotation = Quaternion.Euler(new Vector3(50, lightRotOffset + tempRot.y, 0));
	}

	void Move()
	{
		float horiz = Input.GetAxis("Horizontal");
		float vert = Input.GetAxis("Vertical");
		Vector3 moveVector = new Vector3(horiz, 0, vert);
	//	print(moveVector);
	//	Vector3 lerpMove = Vector3.Lerp(Vector3.zero, moveVector, lerpAmount);
	//	print(lerpMove);
	//	transform.Translate(lerpMove * moveSpeed * Time.deltaTime, Space.World);

	//	transform.position = Vector3.Lerp(transform.position, transform.InverseTransformPoint(moveVector + transform.position), lerpAmount);
		transform.Translate(moveVector * Time.deltaTime * camZoom.zoomDistance, Space.Self);
	}
}
