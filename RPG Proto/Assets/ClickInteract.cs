using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class ClickInteract : MonoBehaviour {

	public Transform destination;

	void Update()
	{
		if(Input.GetMouseButtonDown(0))
		{

			Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
			RaycastHit hit;
			if(Physics.Raycast(ray.origin, ray.direction, out hit, Mathf.Infinity, 1 << 9))
			{
				hit.collider.GetComponent<ClickedOn>().Clicked(gameObject);
				destination = hit.collider.transform;
				GetComponent<ClickToMove>().SetDestination(hit.collider.transform.position);
			//	print("clicked!");
			}
			else
			{
				destination = null;
			}
		}
	}
	
}
