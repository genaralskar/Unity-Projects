using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using TMPro;
using UnityEditor;
using UnityEngine;

public class CameraController : MonoBehaviour
{

	public Transform player;
	public Camera cam;
	public float rotateSpeed = 1.5f;
	public float horizontalRotateSpeed = 1.5f;
	public float verticalRotateSpeed = 1f;
	public float zoomSpeed = 20f;
	public float maxCameraDist = 20f;

	private Vector3 offset;

	private void Start()
	{
		offset = transform.position - player.transform.position;
	}

	// Update is called once per frame
	void LateUpdate ()
	{
		transform.position = player.transform.position + offset;
		
		//camera rotation
		Vector3 newRot = transform.rotation.eulerAngles;
		newRot.x += Input.GetAxis("Vertical") * verticalRotateSpeed * Time.deltaTime;
		newRot.y += Input.GetAxis("Horizontal") * -horizontalRotateSpeed * Time.deltaTime;
		newRot.x = Mathf.Clamp(newRot.x, 1, 89);
//		print(newRot);
		transform.rotation = Quaternion.Euler(newRot);
		
		//camera zoom
		float cameraDist = cam.transform.localPosition.z + (Input.GetAxis("Mouse ScrollWheel") * zoomSpeed * Time.deltaTime);
//		print(cameraDist);
		cameraDist = Mathf.Clamp(cameraDist, -maxCameraDist, -2);
		Vector3 zoomTransform = new Vector3(cam.transform.localPosition.x, cam.transform.localPosition.y, cameraDist);
		cam.transform.localPosition = zoomTransform;
	}
}
