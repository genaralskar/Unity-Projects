using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour {

	public Transform cameraLookAtPoint;
	public float cameraDistance = 10;
	public float speed = 5;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		transform.LookAt(cameraLookAtPoint);
		if(Vector3.Distance(cameraLookAtPoint.position, transform.position) > cameraDistance)
		{
		//	transform.position = Vector3.MoveTowards(transform.position, new Vector3(cameraLookAtPoint.position.x, transform.position.y, cameraLookAtPoint.position.z), speed * Time.deltaTime);
			transform.position = Vector3.Lerp(transform.position, cameraLookAtPoint.position, 1 * Time.deltaTime);
		}
	}
}
