using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitBoxTest : MonoBehaviour {

	public Transform startPoint;
	public Transform endPoint;

	void Start()
	{
		StartCoroutine(Move());
	}

	IEnumerator Move()
	{
		while(true)
		{
			transform.position = startPoint.position;
			yield return new WaitForSeconds(5);
			transform.position = endPoint.position;
			yield return new WaitForFixedUpdate();
		}
	}
}
