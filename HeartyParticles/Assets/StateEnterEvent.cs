using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using RoboRyanTron.Unite2017.Events;

public class StateEnterEvent : StateMachineBehaviour {

	public GameEvent Event;
	bool instanceSet = false;

	void SetInstance(Animator animator)
	{
	//	Debug.Log("State Machine Entered");
	//	Debug.Log(this);

		GameEventListener[] tempListen = animator.gameObject.GetComponents<GameEventListener>();
		foreach(var i in tempListen)
		{
			if(i.Event.name == Event.name)
			{
				Event = ScriptableObject.CreateInstance(typeof(GameEvent)) as GameEvent;
				i.Event = Event;
				Debug.Log("Event set! " + i.Event + " : " + Event);
				Event.RegisterListener(i);
				instanceSet = true;
				return;
			}
		}
		instanceSet = true;
		Event = null;
		Debug.Log("No compatable GameEventListeners found on GameObject " + animator.gameObject);
	}

	 // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		if(!instanceSet)
		{
			SetInstance(animator);
		}

		if(Event != null)
		{
			Event.Raise();
			Debug.Log("Event raised on " + this);
		}
	}
}
