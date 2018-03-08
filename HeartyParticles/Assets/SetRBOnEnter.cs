using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetRBOnEnter : StateMachineBehaviour {

	Rigidbody rb;
	public bool setTo;

	 // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		if(rb == null)
		{
			rb = animator.gameObject.GetComponent<Rigidbody>();
		}

		rb.isKinematic = !setTo;
	}
}
