using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using System;

public class ClickToMove : MonoBehaviour {

	NavMeshAgent agent;
	public Transform destination;
	Transform prevDestination;
	public float minDistance;
	bool destinationSet = false;

	public Action<GameObject> ClickedAction;
	public Action ChangeDestinationAction;

	void Start()
	{
		agent = GetComponent<NavMeshAgent>();
	}

	void Update()
	{
		if(Input.GetMouseButtonDown(0) && !UnityEngine.EventSystems.EventSystem.current.IsPointerOverGameObject()) //sends raycast when not over ui
		{
			Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
			RaycastHit hit;
			if(Physics.Raycast(ray.origin, ray.direction, out hit))
			{
				if(hit.collider.GetComponent<ClickedOn>() != null) //if clicked object as ClickedOn script
				{
					prevDestination = destination;
					if(!destinationSet || prevDestination != destination) //clicking on object mutliple times keeps one destination
					{
						SetDestination(hit.point);
						destinationSet = true;
					}
				//	print(prevDestination);
					hit.collider.GetComponent<ClickedOn>().Clicked(gameObject);
					destination = hit.collider.transform;
					ClickedAction(hit.collider.GetComponent<ClickedOn>().gameObject); //sends clicked object's transform through action

					
						
				//	GetComponent<ClickToMove>().SetDestination(hit.collider.transform.position);
				}
				else if(Vector3.Distance(hit.point, transform.position) > minDistance)
				{
					destination = null;
					SetDestination(hit.point);
					destinationSet = false;
				}
				// if(!destinationSet)
				// {
				// 	SetDestination(hit.point);
				// 	destinationSet = true;
				// }
						
			}
		}
	}

	public void SetDestination(Vector3 _destination)
	{
		agent.destination = _destination;
		print("new destination set" + _destination);
	}
}
