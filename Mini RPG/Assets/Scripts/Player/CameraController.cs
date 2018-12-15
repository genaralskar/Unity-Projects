using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;

public class CameraController : MonoBehaviour
{

	public CinemachineVirtualCamera camera;
	public float rotateSpeed = 5f;
	public float zoomSpeed = 20f;
	public float maxCameraDist = 20f;

	private CinemachineFramingTransposer framingTransposer;

	private void Start()
	{
		framingTransposer = camera.GetCinemachineComponent<CinemachineFramingTransposer>();
	}

	// Update is called once per frame
	void Update ()
	{
		//camera rotation
		Vector3 newRot = camera.transform.rotation.eulerAngles;
		newRot.x += Input.GetAxis("Vertical") * rotateSpeed;
		newRot.y += Input.GetAxis("Horizontal") * -rotateSpeed;
		newRot.x = Mathf.Clamp(newRot.x, 1, 89);
		camera.transform.rotation = Quaternion.Euler(newRot);
		
		//camera zoom
		framingTransposer.m_CameraDistance += Input.GetAxis("Mouse ScrollWheel") * -zoomSpeed;
		framingTransposer.m_CameraDistance = Mathf.Clamp(framingTransposer.m_CameraDistance, 2, maxCameraDist);
	}
}
