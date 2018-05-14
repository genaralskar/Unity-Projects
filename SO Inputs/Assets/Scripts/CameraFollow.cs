using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{

	public Transform ObjectToFollow;
	private Vector3 _posOffset;
	
	// Use this for initialization
	void Start ()
	{
		_posOffset = transform.position;
		_posOffset.y -= 1;
	}
	
	// Update is called once per frame
	void LateUpdate ()
	{
		transform.position = ObjectToFollow.position + _posOffset;
	}
}
