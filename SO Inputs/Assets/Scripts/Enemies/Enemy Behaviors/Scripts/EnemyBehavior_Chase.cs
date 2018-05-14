using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
[CreateAssetMenu(menuName = "Enemy Behaviors/Chase Target")]
public class EnemyBehavior_Chase : SO_EnemyBehavior {
	
	public override void Navigate(NavMeshAgent agent, EnemyBrain brain)
	{
		agent.SetDestination(brain.ChaseTarget.position);
	}
}
