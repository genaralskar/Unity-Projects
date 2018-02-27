using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitBoxTest : MonoBehaviour {

	public Transform startPoint;
	public Transform endPoint;
	public float speed = 2.5f;

	void Start()
	{
		StartCoroutine(Move());
	}

	IEnumerator Move()
	{
		while(true)
		{
			transform.position = startPoint.position;
			yield return new WaitForSeconds(speed);
			transform.position = endPoint.position;
			yield return new WaitForFixedUpdate();
		}
	}
}
