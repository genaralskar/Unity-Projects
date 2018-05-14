using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public abstract class SO_EnemyBehavior : ScriptableObject
{

	public abstract void Navigate(NavMeshAgent agent, EnemyBrain brain);
	
}
