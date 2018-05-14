using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
[CreateAssetMenu(menuName = "Enemy Behaviors/Idle")]
public class EnemyBehavior_Idle : SO_EnemyBehavior {

	public override void Navigate(NavMeshAgent agent, EnemyBrain brain)
	{
		agent.SetDestination(agent.transform.position);
	}
	
}
