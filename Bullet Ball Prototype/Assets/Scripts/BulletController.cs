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
		playerController.AddScore(1);
		playerController.Movement();
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		//transform.Translate(Vector3.forward * speed * Time.deltaTime);
		Invoke("spawnSmoke", lifetime);
	}

	void OnTriggerEnter(Collider other)
	{
		switch (other.gameObject.tag)
		{
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
		Instantiate(Smoke, transform.position, Smoke.transform.rotation);
		Destroy (gameObject);
	}

}
