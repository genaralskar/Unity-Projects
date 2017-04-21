using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NumberController : MonoBehaviour {

	public ParticleSystem numbers;

	//value for this number, set externally
	public float numberValue;

	//how many points this number is worth, set externally
	public int scoreValue = 5;
	public int scoreLoseValue;
	public bool useTimer;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

		//slowly moves number down over time
		transform.Translate(Vector3.up * -.5f * Time.deltaTime);
	}

	void OnTriggerEnter(Collider other)
	{
		switch (other.tag)
		{
			case "Checker":

				if(GameController.gameOver)
				{
					SpawnParticle();
					Destroy(gameObject);
				}
				// if collider's number and this number are the same then calculator answer was correct and you get points and the number gets destroyed
				// yay you!
				//add collider check tag to test if colliding with floor or number check
				float collNumber = other.gameObject.GetComponent<CheckerController>().number;
				Debug.Log("colliderNumber = " + collNumber);
				if(numberValue == collNumber)
				{
					GameController.score += scoreValue;
					SpawnParticle();
					Destroy(gameObject);
				}
				break;
			case "Ender":
				GameController.score += scoreLoseValue;
				SpawnParticle();
				Destroy(gameObject);
				if(numberValue < 10)
				{
					GameController.Lives -= 1;
				}
				else if(numberValue > 9)
				{
					GameController.Lives -= .5f;
				}

				break;
			default:
				break;
		}
	}

	void SpawnParticle()
	{
		ParticleSystem newParticle = Instantiate(numbers, transform.position, transform.rotation) as ParticleSystem;
		Destroy(newParticle, 1);
	}
}
