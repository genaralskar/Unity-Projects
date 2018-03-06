using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using RoboRyanTron.Unite2017.Events;

public class OnAnimExit : StateMachineBehaviour {

	public string ID;
	public GameEvent Event;
	EventManager parent;

	override public void OnStateMachineEnter(Animator animator, int stateMachinePathHash)
	{
		Event = ScriptableObject.CreateInstance(typeof(GameEvent)) as GameEvent;
	}

	// OnStateExit is called when a transition ends and the state machine finishes evaluating this state
	override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		
	//	parent = animator.gameObject.GetComponent<EventManager>();
	//	foreach(var i in parent.events)
		{

		}
		//parent game object, run a script. GENERIC THO
		//runs scriptable object on parent, if its on this and parent
		//new scriptable object? probs, no, needs the event listener
		//new instance
	//	Event.Raise();
	}
}
