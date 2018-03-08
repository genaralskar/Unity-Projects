using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RBMove : StateMachineBehaviour {

	PlayerMover pm;

	 // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		if(pm == null)
		{
			pm = animator.gameObject.GetComponent<PlayerMover>();
		}
	}

	// OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
	override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		pm.RBMove();
	}
}
