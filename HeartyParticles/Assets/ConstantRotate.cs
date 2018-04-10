using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConstantRotate : MonoBehaviour {

	public Vector3 rotateSpeed;

	void Update()
	{
		Rotate();
	}

	void Rotate()
	{
		Vector3 _rot = transform.rotation.eulerAngles;
		_rot += rotateSpeed * Time.deltaTime;
		transform.rotation = Quaternion.Euler(_rot);
	}
}
