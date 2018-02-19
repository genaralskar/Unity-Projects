using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class NavAgentBehavoir : MonoBehaviour {

	public Transform point;
	NavMeshAgent agent;

	public bool updateUpAxis = false;

	// Use this for initialization
	void Start () {
		agent = GetComponent<NavMeshAgent>();
		ClickMove.MoveNavAgent += MoveAgent;
	}

	void MoveAgent(Vector3 _destination)
	{
		agent.SetDestination(_destination);
		agent.updateUpAxis = updateUpAxis;
	}

	void Update()
	{
		
	}
	
}
