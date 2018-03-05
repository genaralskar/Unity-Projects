using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using RoboRyanTron.Unite2017.Events;

[RequireComponent(typeof(GameEventListener), typeof(Animator), typeof(GameEvent))]
public class AnimationEvent : MonoBehaviour {

	public Animator anims;
	public string ID;
	public GameEvent Event;
	public StateMachineBehaviour behave;

	void Awake()
	{
		Event = ScriptableObject.CreateInstance(typeof(GameEvent)) as GameEvent;
		//gameevent listener must be set to disabled in inspector
		GetComponent<GameEventListener>().Event = Event;
		GetComponent<GameEventListener>().enabled = true;
		anims = GetComponent<Animator>();
		anims.GetBehaviour<OnAnimExit>().Event = Event;
		print(behave.GetType());
	}

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
