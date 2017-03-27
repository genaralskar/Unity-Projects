using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletController : MonoBehaviour {

	public float speed;
	public float lifetime = 5f;
	public Vector3 velocity;
	public GameObject Smoke;
	private PlayerController playerController;

	// Use this for initialization
	void Start () {
		GameObject playerControllerObject = GameObject.FindWithTag("Player");
		if(playerControllerObject != null)
		{
			playerController = playerControllerObject.GetComponent<PlayerController>();
		}
		else
		{
			Debug.Log("Cannot find 'PlayerController' script");
		}
		//increase score by one when object spawns
		playerController.AddScore(1);
		//add force to the player when object spawns
		//this way the player only moves when a bullet gets spawned and it's not a constant force being applied
		playerController.Movement();
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		//transform.Translate(Vector3.forward * speed * Time.deltaTime);
		Invoke("spawnSmoke", lifetime);
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
