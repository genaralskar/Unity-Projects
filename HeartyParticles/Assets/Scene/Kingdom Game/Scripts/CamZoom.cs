using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CamZoom : MonoBehaviour {

	public float zoomSpeed = 10;
	public float zoomDistance;

	void Update()
	{
		float newZ = transform.localPosition.z;
		newZ += Input.GetAxis("Mouse ScrollWheel") * zoomSpeed;
		newZ = Mathf.Clamp(newZ, -110, -30);
		transform.localPosition = new Vector3(0, 0, newZ);
		zoomDistance = Mathf.Abs(newZ);
	}
}
