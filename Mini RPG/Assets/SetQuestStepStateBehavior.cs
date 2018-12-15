using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetQuestStepStateBehavior : StateMachineBehaviour
{

	public Quest quest;
	public int newQuestStep;
	[Tooltip("If you only want to set the step when you are on another specific step")]
	public bool checkCurrentStep;
	public int currentStepToCheck;

	// OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		if (quest == null)
		{
			Debug.LogWarning(this + "'s quest is not set up properly!");
			return;
		}
		
		if (checkCurrentStep)
		{
			if (quest.currentQuestStep == currentStepToCheck)
			{
				quest.currentQuestStep = newQuestStep;
				return;
			}
			//if not on the proper quest step, do nothing
			Debug.Log("Quest step not set");
			return;
		}

		quest.currentQuestStep = newQuestStep;
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
