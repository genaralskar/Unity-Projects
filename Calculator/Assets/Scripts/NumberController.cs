using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NumberController : MonoBehaviour {

	// used to spawn particles when the number is destroyed
	public ParticleSystem numbers;

	//value for this number, set in GameController when number is spawned
	public float numberValue;

	//how many points this number is worth
	public int scoreValue = 5;
	//how many points get lost when number hits bottom of the screen
	public int scoreLoseValue;


	// Use this for initialization
	void Start () {
		// if the numberValue is 10 or more that means there will be two objects for that number, digit one and digit two
		// if the number is a single digit number then the score is set to how many points we want a number to be worth
		// otherwise we set it to half that since there will be two digits, so two objects will spawn, two objects will be checked,
		// two objects will be destoryed, and two objects will add score, so just halve the value and we get the total we want
		if(numberValue < 10)
		{
			scoreValue = 100;
			scoreLoseValue = -50;
		}
		else
		{
			scoreValue = 50;
			scoreLoseValue = -25;
		}


	}
	
	// Update is called once per frame
	void Update () {

		//slowly moves number down over time
		transform.Translate(Vector3.up * -.5f * Time.deltaTime);
	}


	//when the number enter a trigger, which would be either the checker or the ender
	//the ender is used to tell if the number has hit the bottom of the screen
	void OnTriggerEnter(Collider other)
	{
		//checks the tag of the trigger object to see if the number hits the checker of the ender
		switch (other.tag)
		{
			case "Checker":

				// if the game has game overed, the number gets destroyed no matter what
				// this happens to all numbers so when the game ends all number are destroyed
				if(GameController.gameOver)
				{
					SpawnParticle();
					Destroy(gameObject);
				}
				
				//sets collNumber to the checker object's  number value, which is set from GameController
				float collNumber = other.gameObject.GetComponent<CheckerController>().number;
				Debug.Log("colliderNumber = " + collNumber);

				// if collider's number and this number are the same then calculator answer was correct and you get points and the number gets destroyed
				// yay you!
				if(numberValue == collNumber)
				{
					GameController.score += scoreValue;
					SpawnParticle();
					Destroy(gameObject);
				}
				break;
			case "Ender":
				// decrement score based on scoreLosevalue and destroy the number
				GameController.score += scoreLoseValue;
				SpawnParticle();
				Destroy(gameObject);

				//if using lives chaneg amount of lives based on number value
				//similar to what happened with score
				if(numberValue < 10 && GameController.useLives)
				{
					GameController.lives -= 1;
				}
				else if(numberValue > 9)
				{
					GameController.lives -= .5f;
				}

				break;
			case "TitleEnder":
				Destroy(gameObject);
				break;
			default:
				break;
		}
	}

	//spawns the particle system then destorys it after one second
	void SpawnParticle()
	{
		ParticleSystem newParticle = Instantiate(numbers, transform.position, transform.rotation) as ParticleSystem;
		Destroy(newParticle, 1);
	}
}
