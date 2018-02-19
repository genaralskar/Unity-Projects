using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraTrackScript : MonoBehaviour {

	public Transform trackPoint;

	[Range(0,1)]
	public float trackSpeed = 0.5f;
	public float rotationAmount = 10;

	Quaternion lightRotOffset;

	Vector3 tempRot;
	
	public Vector3 offset;

	public new GameObject light;

	// Use this for initialization
	void Start () {
		offset = transform.position - trackPoint.position;
		lightRotOffset = light.transform.rotation;
	}
	
	// Update is called once per frame
	void LateUpdate () {
		Vector3 tempPos = trackPoint.position + offset;

		transform.position = Vector3.Lerp(transform.position, tempPos, trackSpeed);

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

		print(tempRot);

		transform.rotation = Quaternion.Euler(tempRot);
		light.transform.rotation = Quaternion.Euler(tempRot) * lightRotOffset;
	}
}
