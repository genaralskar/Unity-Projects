using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class NavRigidBehavior : MonoBehaviour {

	NavMeshAgent agent;
	NavRigid nv;
	public Transform destination;

	void Start()
	{
		agent = GetComponent<NavMeshAgent>();
		nv = GetComponent<NavRigid>();
	}

	void FixedUpdate()
	{
		if(agent.enabled)
			agent.SetDestination(destination.position);
	}
}
