using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameController : MonoBehaviour {


	// Stuff for the timer
	public Text timerText;
	public float timerStartTime;

	// number will spawn every timerCheckTime seconds, try to use whole numbers
	public float timerCheckTime = 5;

	// Game's score
	public static float score;

	// Number objects
	public NumberController zero;
	public NumberController one;
	public NumberController two;
	public NumberController three;
	public NumberController four;
	public NumberController five;
	public NumberController six;
	public NumberController seven;
	public NumberController eight;
	public NumberController nine;
	public Transform numberSpawn;
	
	// Stuff from the number checker
	public CheckerController checker;
	public Transform checkerSpawn;


	public Text scoreText;

	// Used so the timer only spawns one object instead of a bunch
	private bool spawned = false;


	public Text gameOverText;
	public static bool gameOver = false;
	
	

	// Use this for initialization
	void Start () {
		//add one to start timer so it displays correctly because of how the timer works
		timerStartTime += 1;
	}
	
	// Update is called once per frame
	void Update () {
		if(gameOver)
		{
			//GameOver();
		}
		else
		{
			Timer();
			UpdateScore();
		}
	}

	void SpawnNumber()
	{
		Debug.Log("Number Spawned");
		float number;
		int firstDigit;
		int secondDigit;
		number = RandomNumber();
		//number = Random.Range(1, 99);
		Debug.Log(number);
		//if number was 78 firstDigit would be 8, secondDigit would be 7
		firstDigit = Mathf.RoundToInt(number % 10);
		// Debug.Log(firstDigit);
		secondDigit = Mathf.RoundToInt(Mathf.Floor(number/10));
		// Debug.Log(secondDigit);

		// Used for spawning numbers because declaring it in the switch doesn't work
		NumberController newDigit;

		// random x axis spawn between two points so it still spawns in the right side of the screen
		float xSpawn = Random.Range(.5f, 8.5f);

		// spawns proper number object for the firstDigit, and moves it a bit to make room for the second digit
		// also checks if the number is below 10 because if it is the front zero does not spawn
		// this affects the scoring because the score is split between the two numbers because it seemed easier to do it that way than to...
		// as i write this i realize the first digit will always spawn, so the score should be on that, and the second digit doesn't need any score
		// will have to impement this at some point
		switch (firstDigit)
		{
			
			case 0:
				newDigit = Instantiate(zero, new Vector3(xSpawn + .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				if(number < 10)
				{
					newDigit.scoreValue = 100;
					newDigit.scoreLoseValue = -50;
				}
				Debug.Log("firstDigit.scoreValue = " + newDigit.scoreValue);
				Debug.Log("firstDigit.numberValue = " + newDigit.numberValue);
				break;
			case 1:
				newDigit = Instantiate(one, new Vector3(xSpawn + .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				if(number < 10)
				{
					newDigit.scoreValue = 100; 
					newDigit.scoreLoseValue = -50;
				}
				Debug.Log("firstDigit.scoreValue = " + newDigit.scoreValue);
				Debug.Log("firstDigit.numberValue = " + newDigit.numberValue);
				break;
			case 2:
				newDigit = Instantiate(two, new Vector3(xSpawn + .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				if(number < 10)
				{
					newDigit.scoreValue = 100; 
					newDigit.scoreLoseValue = -50;
				}
				Debug.Log("firstDigit.scoreValue = " + newDigit.scoreValue);
				Debug.Log("firstDigit.numberValue = " + newDigit.numberValue);
				break;
			case 3:
				newDigit = Instantiate(three, new Vector3(xSpawn + .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				if(number < 10)
				{
					newDigit.scoreValue = 100; 
					newDigit.scoreLoseValue = -50;
				}
				Debug.Log("firstDigit.scoreValue = " + newDigit.scoreValue);
				Debug.Log("firstDigit.numberValue = " + newDigit.numberValue);
				break;
			case 4:
				newDigit = Instantiate(four, new Vector3(xSpawn + .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				if(number < 10)
				{
					newDigit.scoreValue = 100; 
					newDigit.scoreLoseValue = -50;
				}
				Debug.Log("firstDigit.scoreValue = " + newDigit.scoreValue);
				Debug.Log("firstDigit.numberValue = " + newDigit.numberValue);
				break;
			case 5:
				newDigit = Instantiate(five, new Vector3(xSpawn + .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				if(number < 10)
				{
					newDigit.scoreValue = 100; 
					newDigit.scoreLoseValue = -50;
				}
				Debug.Log("firstDigit.scoreValue = " + newDigit.scoreValue);
				Debug.Log("firstDigit.numberValue = " + newDigit.numberValue);
				break;
			case 6:
				newDigit = Instantiate(six, new Vector3(xSpawn + .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				if(number < 10)
				{
					newDigit.scoreValue = 100; 
					newDigit.scoreLoseValue = -50;
				}
				Debug.Log("firstDigit.scoreValue = " + newDigit.scoreValue);
				Debug.Log("firstDigit.numberValue = " + newDigit.numberValue);
				break;
			case 7:
				newDigit = Instantiate(seven, new Vector3(xSpawn + .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				if(number < 10)
				{
					newDigit.scoreValue = 100;
 					newDigit.scoreLoseValue = -50;
				}
				Debug.Log("firstDigit.scoreValue = " + newDigit.scoreValue);
				Debug.Log("firstDigit.numberValue = " + newDigit.numberValue);
				break;
			case 8:
				newDigit = Instantiate(eight, new Vector3(xSpawn + .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				if(number < 10)
				{
					newDigit.scoreValue = 100;
 					newDigit.scoreLoseValue = -50;
				}
				Debug.Log("firstDigit.scoreValue = " + newDigit.scoreValue);
				Debug.Log("firstDigit.numberValue = " + newDigit.numberValue);
				break;
			case 9:
				newDigit = Instantiate(nine, new Vector3(xSpawn + .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				if(number < 10)
				{
					newDigit.scoreValue = 100;
 					newDigit.scoreLoseValue = -50;
				}
				Debug.Log("firstDigit.scoreValue = " + newDigit.scoreValue);
				Debug.Log("firstDigit.numberValue = " + newDigit.numberValue);
				break;
			default:
				break;
		}

		// same as above but for second digit
		switch (secondDigit)
		{
			case 0:
				// the second digit doesn't have to appear if it's just a zero, which is what this case would be
				//newDigit = Instantiate(zero, new Vector3(xSpawn - .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				break;
			case 1:
				newDigit = Instantiate(one, new Vector3(xSpawn - .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				break;
			case 2:
				newDigit = Instantiate(two, new Vector3(xSpawn - .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				break;
			case 3:
				newDigit = Instantiate(three, new Vector3(xSpawn - .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				break;
			case 4:
				newDigit = Instantiate(four, new Vector3(xSpawn - .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				break;
			case 5:
				newDigit = Instantiate(five, new Vector3(xSpawn - .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				break;
			case 6:
				newDigit = Instantiate(six, new Vector3(xSpawn - .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				break;
			case 7:
				newDigit = Instantiate(seven, new Vector3(xSpawn - .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				break;
			case 8:
				newDigit = Instantiate(eight, new Vector3(xSpawn - .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				break;
			case 9:
				newDigit = Instantiate(nine, new Vector3(xSpawn - .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation) as NumberController;
				newDigit.numberValue = number;
				break;
			default:
				break;
		}


		//CheckNumber(number);
	}

	public void CheckNumber()
	{
		// spawns the number checker and sets the number it checks to the calculator sum
		// only gets called when the calculator hits equals so there shouldn't be any problems with how sum is used on the calculator
		// number check is just a box collider set as a trigger that spawns over the numbers and checks them
		// or to be more specific, the numbers check themselves when entering a trigger, ie, this checker
		CheckerController newChecker = Instantiate(checker, checkerSpawn.position, checkerSpawn.rotation) as CheckerController;
		newChecker.number = Calculator.total;
	}

	void Timer()
	{
		//decrements time
		timerStartTime -= Time.deltaTime;
		// displays the current time rounded down
		timerText.text = Mathf.FloorToInt(timerStartTime).ToString("f0");

		//if the timer hits zero(cause of the way it is 1 = 0), 
		if(timerStartTime <= 1)
		{
			gameOver = true;
			spawned = true;
			GameOver();
		}

		// if the timer ends in a 0, spawn a number, also check if already spawned so it only spawns one object
		// changing the 10 so something smaller will make numbers spawn faster
		// for example, setting it to 5 will make number spawn when the timer has a 5
		// but this doesn't mean the number after the % will always match the last digit of the timer, more a precentage thing
		// 10 % 10 is zero, 10 % 5 is zero, 10 % 2.5 is 0, 10 % 1.25 is 0. i think you get the point or something
		// lower number after % means faster spawns is really all that's important
		if(Mathf.Floor(timerStartTime % timerCheckTime) == 0 && spawned == false)
		{
			Debug.Log(timerStartTime);
			SpawnNumber();
			//sets spawned to true so it only spawns one object
			spawned = true;
			Debug.Log(spawned);
		}
		else if (Mathf.FloorToInt(timerStartTime % timerCheckTime) != 0)
		{
			//sets spawned to false when we leave the desiered spawn number so numbers can spawn again
			spawned = false;
		}

		
	}

	public bool IsPrime(float number) {

		if (number == 1) return false;
		if (number == 2) return true;

		if (number % 2 == 0) return false; // Even number     

		for (int i = 2; i < number; i++) // Advance from two to include correct calculation for '4'
		{
			if (number % i == 0) return false;
		}

		return true;
	}

	public float RandomNumber()
	{
		float newNumber = Random.Range(1, 99);
		if(IsPrime(newNumber))
		{
			return RandomNumber();
		}
		else
		{
			return newNumber;
		}
	}

	public void UpdateScore()
	{
		scoreText.text = "Score: " + score.ToString();
	}

	public void GameOver()
	{
		timerText.gameObject.SetActive(false);
		scoreText.gameObject.SetActive(false);
		gameOverText.gameObject.SetActive(true);
		CheckNumber();
		gameOverText.text = "Game Over\nYour Score Is:\n" + score;
	}
}
