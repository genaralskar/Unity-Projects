using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class ClickToMove : MonoBehaviour {

	NavMeshAgent agent;
	public Transform destination;
	public float minDistance;

	void Start()
	{
		agent = GetComponent<NavMeshAgent>();
	}

	void Update()
	{
		if(Input.GetMouseButtonDown(0) && !UnityEngine.EventSystems.EventSystem.current.IsPointerOverGameObject())
		{
			Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
			RaycastHit hit;
			if(Physics.Raycast(ray.origin, ray.direction, out hit))
			{
				if(hit.collider.GetComponent<ClickedOn>() != null)
				{
					hit.collider.GetComponent<ClickedOn>().Clicked(gameObject);
					destination = hit.collider.transform;
				//	GetComponent<ClickToMove>().SetDestination(hit.collider.transform.position);
				}
				else if(Vector3.Distance(hit.point, transform.position) > minDistance)
				{
					
					destination = null;
				}
				SetDestination(hit.point);			
			}
		}
	}

	public void SetDestination(Vector3 _destination)
	{
		agent.destination = _destination;
	}
}
