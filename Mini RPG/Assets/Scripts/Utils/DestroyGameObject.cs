using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyGameObject : MonoBehaviour {

	public void Destroy(float time)
	{
		Destroy(gameObject, time);
	}
}
