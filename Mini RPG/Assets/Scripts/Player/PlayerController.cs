using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class PlayerController : MonoBehaviour
{

	private NavMeshAgent agent;
	[SerializeField] private float interactDistance = 2;
	
	// Use this for initialization
	void Start ()
	{
		agent = GetComponent<NavMeshAgent>();
	}
	
	// Update is called once per frame
	void Update () {
		//on mouse down
		if (Input.GetMouseButtonDown(0))
		{
			MovePlayer();
		}	
	}

	private void MovePlayer()
	{
		//raycast down
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit hitInfo;
		if (Physics.Raycast(ray, out hitInfo))
		{
			//if IClickableObject
			IClickableObject obj = hitInfo.collider.GetComponent<IClickableObject>();
			if (obj != null)
			{
				Vector3 objCenter = hitInfo.transform.position;
					
				//if out of range of object
				if (Vector3.Distance(transform.position, objCenter) > interactDistance)
				{
					//move in range of object
					//do click action
					StopCoroutine(MoveInRange(objCenter, interactDistance, obj));
					StartCoroutine(MoveInRange(objCenter, interactDistance, obj));
				}
				//else interact with object
				else
				{
					obj.OnClicked();
				}
					
			}
			//else move there
			else
			{
				agent.SetDestination(hitInfo.point);
			}	
		}
	}
	
	
	//maybe just use stopping distance? different distances for different times though?
	private IEnumerator MoveInRange(Vector3 position, float range, IClickableObject obj)
	{
		agent.SetDestination(position);
		while (Vector3.Distance(transform.position, position) > range)
		{
			yield return new WaitForEndOfFrame();
		}
		
		agent.SetDestination(transform.position);
		obj.OnClicked();
	}
}
