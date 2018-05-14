using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
[CreateAssetMenu(menuName = "Enemy Behaviors/Flank")]
public class EnemyBehavior_Flank : SO_EnemyBehavior {
	public override void Navigate(NavMeshAgent agent, EnemyBrain brain)
	{
		Vector3 flankVector = brain.ChaseTarget.localPosition;
		flankVector.z -= 5;
		flankVector = brain.ChaseTarget.TransformPoint(flankVector);

		agent.SetDestination(flankVector);
	}
}
