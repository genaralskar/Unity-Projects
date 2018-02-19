using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class ClickMove : MonoBehaviour {

	public static UnityAction<Vector3> MoveNavAgent;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetMouseButtonDown(0))
		{
			Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
			RaycastHit hit;
			if(Physics.Raycast(ray.origin,ray.direction, out hit))
			{
				MoveNavAgent(hit.point);
			}
		}
	}

}
