﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckQuestStepStateBehavior : StateMachineBehaviour
{

	public Quest quest;
	public int questStep;
	[Tooltip("false: if on or past questStep\ntrue: only if on questStep")]
	public bool checkIfOnStep;

	// OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		if (quest.complete)
		{
			animator.SetTrigger("Option 3");
			return;
		}

		if ((checkIfOnStep && quest.currentQuestStep == questStep) 
		    || (!checkIfOnStep && quest.currentQuestStep >= questStep))
		{
			animator.SetTrigger("Option 1");
		}
		else
		{
			animator.SetTrigger("Option 2");
		}
	}

	// OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
	//override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}

	// OnStateExit is called when a transition ends and the state machine finishes evaluating this state
	//override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}

	// OnStateMove is called right after Animator.OnAnimatorMove(). Code that processes and affects root motion should be implemented here
	//override public void OnStateMove(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}

	// OnStateIK is called right after Animator.OnAnimatorIK(). Code that sets up animation IK (inverse kinematics) should be implemented here.
	//override public void OnStateIK(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}
}
