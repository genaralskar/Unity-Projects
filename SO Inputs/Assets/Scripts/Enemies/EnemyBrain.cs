using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyBrain : MonoBehaviour
{

	public SO_EnemyBehavior Behavior;
	public Transform ChaseTarget;
	public NavMeshAgent Agent;

	private void Start()
	{
		Agent = GetComponent<NavMeshAgent>();
	}

	// Update is called once per frame
	void Update () {
		Behavior.Navigate(Agent, this);
	}
}
