using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetCCOnEnter : StateMachineBehaviour {

	CharacterController cc;
	public bool setTo;

	 // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		if(cc == null)
		{
			cc = animator.gameObject.GetComponent<CharacterController>();
		}

		cc.enabled = setTo;
	}
}
