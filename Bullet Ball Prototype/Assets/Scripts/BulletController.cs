﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletController : MonoBehaviour {

	public float speed;
	public float lifetime = 5f;
	public Vector3 velocity;
	public GameObject Smoke;
	private GameController gameController;
	public string bulletType = "1";
	

	// Use this for initialization
	void Start () {

		//get GameController to access score functions
		GameObject gameControllerObject = GameObject.FindWithTag("GameController");
		if(gameControllerObject != null)
		{
			gameController = gameControllerObject.GetComponent<GameController>();
		}
		else
		{
			Debug.Log("Cannot find 'GameController' script");
		}
		//increase score by one when object spawns
		gameController.AddScore(1);

		//wait lifetime, run spawnSmoke
		Invoke("spawnSmoke", lifetime);
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		//transform.Translate(Vector3.forward * speed * Time.deltaTime);
	}

	void OnTriggerEnter(Collider other)
	{
		//checks what kind of object the bullet is hitting
		switch (other.gameObject.tag)
		{
			//if the object is a target, disable the target
			//might move this onto the target itself
			case "Target":
				other.gameObject.SetActive(false);
				break;
			case "Wall":
				//Destroy (gameObject);
				break;
			default:
				break;
		}
	}
	void spawnSmoke ()
	{
		//Spawn smoke particle system and then destory object
		Instantiate(Smoke, transform.position, Smoke.transform.rotation);
		Destroy (gameObject);
	}
}
