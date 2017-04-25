using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameController : MonoBehaviour {


	// Stuff for the timer
	public Text timerText;
	// start time for the timer
	public float timerStartTime;
	// timer that we decrement
	float timerTime;

	// number will spawn every timerCheckTime seconds, try to use whole numbers
	public float timerCheckTime = 5;

	// Game's score
	public static float score;

	// Number objects
	// the number we will spawn. needs to have NumberController attched to it
	// this way of spawning the numbers is not nessesary if just using text on a 3d game object
	// using the text you would just have to make one NumberController prefab and change the text and number value on it when you instansiate it
	public NumberController[] numbers;
	// an object that we use to determine where the numbers will spawn
	public Transform numberSpawn;
	
	// the checker object we will spawn. needs to have CheckerController script attached to it
	public CheckerController checker;
	// like numberspawn, but for the checker
	public Transform checkerSpawn;

	// text used to display score
	public Text scoreText;
	// text used to display lives
	public Text livesText;

	// this is a ui panel that has buttons and stuff for when the game ends
	public Image gameOverScreen;

	// Used so the timer only spawns one object instead of a bunch
	private bool spawned = false;

	// bool to check if the game is over or not
	public static bool gameOver = false;

	// amount of lives the player starts with
	public static float Lives = 3;
	// used to check if we want to use lives or not
	public static bool useLives = false;
	
	

	// Use this for initialization
	void Start () {
		//add one to start timer so it displays correctly because of how the timer works
		timerStartTime += 1;
		
		//if using lives display the lives text and disable the score text
		if(useLives)
		{
			timerText.gameObject.SetActive(false);
			livesText.gameObject.SetActive(true);
		}
		//otherwise display the score text and disable the lives text
		else
		{
			timerText.gameObject.SetActive(true);
			livesText.gameObject.SetActive(false);
		}
		//set our timerTime to our timerStartTime so we can do time stuff but still have our initial start time
		timerTime = timerStartTime;
	}
	
	// Update is called once per frame
	void Update () {
		//if gameOver is false, ie the game is not over, then run timer and stuff
		if(!gameOver)
		{
			Timer();
			
			//if using lives we run check lives to keep the amount of lives updated
			if(useLives)
			{
				CheckLives();
			}
			UpdateScore();
		}
	}

	//this is called when we want to spawn a number
	//this would be different if spawning an object with some text attached to it
	//in that case we would just make one prefab of that, instatiate it, then set the text and a number value to the random number we get
	void SpawnNumber()
	{
		Debug.Log("Number Spawned");
		//initialize these here so we can use them but only in this method
		float number;
		int firstDigit;
		int secondDigit;
		//this is the number we are going to spawn, which will be a random number between 2 and 99 excluding primes
		//check the RandomNumber method for more info, line 384
		number = RandomNumber();
		Debug.Log(number);

		//set first and second digit
		//if number was 78 firstDigit would be 8, secondDigit would be 7
		firstDigit = Mathf.RoundToInt(number % 10);
		secondDigit = Mathf.RoundToInt(Mathf.Floor(number/10));
		// Debug.Log(firstDigit);
		// Debug.Log(secondDigit);

		// declare a new NumberController so we can change the values and stuff after we spawn it
		// Used for spawning numbers because declaring it in the if statement doesn't work
		NumberController newDigit;

		// random x axis spawn between two points so it still spawns in the right side of the screen
		float xSpawn = Random.Range(.5f, 8.5f);

		//spawns the first digit and moves it slightly to make room for the second digit
		newDigit = Instantiate (numbers[firstDigit], new Vector3(xSpawn + .225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation);
		//set the numberValue to the random number we got so we can check it against our calculator later
		newDigit.numberValue = number;

		//checks if the second digit is 0, so that it will not spawn if it is
		//the only case this should happen is with numbers less than 10 so it shouldn't be a problem
		if(secondDigit != 0)
		{	
			//same thing as with first digit execpt moved the opposite direction to make room
			newDigit = Instantiate (numbers[secondDigit], new Vector3(xSpawn + -.225f, numberSpawn.position.y, numberSpawn.position.z), numberSpawn.rotation);
			//we give both digits the numberValue so we can destroy both at the same time when we check it
			newDigit.numberValue = number;
		}

	}

	public void CheckNumber()
	{
		// spawns the number checker and sets the number it checks to the calculator sum
		// only gets called when the = button is pressed so there shouldn't be any problems with how sum is used on the calculator
		// number check is just a box collider set as a trigger in the unity editor that spawns over the numbers and checks them
		// or to be more specific, the numbers check themselves when entering a trigger, ie, this checker
		// digit behavior when entering a trigger is set in the NumberController script
		CheckerController newChecker = Instantiate(checker, checkerSpawn.position, checkerSpawn.rotation) as CheckerController;
		newChecker.number = Calculator.total;
	}

	void Timer()
	{	
		//decrements time
		timerTime -= Time.deltaTime;
		// displays the current time rounded down
		timerText.text = Mathf.FloorToInt(timerTime).ToString("f0");

		//if the timer hits zero(because of the way it is, 1 = 0), and we aren't using lives
		//run game over stuff and set spawned to true so no more numbers spawn
		if(timerTime <= 1 && !useLives)
		{
			gameOver = true;
			spawned = true;
			GameOver();
		}
		//if we are using lives and the timer hits zero, just reset the timer so numbers keep spawning
		else if(timerTime <= 1 && useLives)
		{
			timerTime = 60;
		}

		// if the timer ends in a 0, spawn a number, also check if already spawned so it only spawns one object
		// changing the timerCheckTime to something smaller will make numbers spawn faster
		// for example, setting it to 5 will make number spawn when the timer has a 5
		// but this doesn't mean the number after the % will always match the last digit of the timer, more a precentage thing
		// 10 % 10 is zero, 10 % 5 is zero, 10 % 2.5 is 0, 10 % 1.25 is 0. i think you get the point or something
		// lower number after % means faster spawns is really all that's important
		//
		// another way to spawn numbers is with invoking
		// https://docs.unity3d.com/ScriptReference/MonoBehaviour.Invoke.html
		// in one method have it spawn a number, invoke the method it's in, so it continuously calls itself and continuously spanwns numbers
		if(Mathf.Floor(timerTime % timerCheckTime) == 0 && spawned == false)
		{
			Debug.Log(timerTime);
			SpawnNumber();
			//sets spawned to true so it only spawns one object
			spawned = true;
			Debug.Log(spawned);
		}
		else if (Mathf.FloorToInt(timerTime % timerCheckTime) != 0)
		{
			//sets spawned to false when we leave the desiered spawn number so numbers can spawn again
			spawned = false;
		}

		
	}

	// used to check if player has run out of lives
	// also keeps livesText up to date
	void CheckLives()
	{
		if(Lives <= 0)
		{
			GameOver();
			gameOver = true;
		}
		livesText.text = Lives.ToString();
	}

	//check if a number is prime
	public bool IsPrime(float number) {

		if (number == 1) return false;
		if (number == 2) return true;

		//checks if the number is even first, as all even numbers are not prime, except 2 but whatever
		if (number % 2 == 0) return false; // Even number     

		//divides all numbers from 2 to the number before the number we are checking
		//number % i checks if the number is divisible by i, if it is, it will equal 0
		//if it never equals 0, it is not divisible by anything other than 1 and itself, therefore it is prime
		//if it does equal 0, then it's not prime so it returns false
		for (int i = 2; i < number; i++) // Advance from two to include correct calculation for '4'
		{
			if (number % i == 0) return false;
		}
		//only runs if the previous loop doesn't return anything, which means it's prime
		return true;
	}

	//used for when we want to make a new random number
	public float RandomNumber()
	{
		//makes the new number between two values
		float newNumber = Random.Range(1, 99);

		//checks if this new number is prime
		if(IsPrime(newNumber))
		{
			//if the number is prime, runs this method again
			//which will generate a new number and check if its prime, and if it is will run this method again
			//RandomNumber returns a float, so when a non prime gets found it returns that number through all the loops it made back to here
			return RandomNumber();
		}
		else
		{
			//if the number isn't prime, return the number
			return newNumber;
		}
	}

	//updates the score
	public void UpdateScore()
	{
		scoreText.text = "Score: " + score.ToString();
	}

	//happens when you gameover.
	public void GameOver()
	{
		//disable timertext, scoretext, and livestext, enables gameover panel
		//and runs number checker to destroy any remaining numbers
		timerText.gameObject.SetActive(false);
		scoreText.gameObject.SetActive(false);
		livesText.gameObject.SetActive(false);
		gameOverScreen.gameObject.SetActive(true);
		CheckNumber();
	}

	//used to change the scenes
	public void ChangeScene(string sceneName)
	{
		gameOver = false;
		spawned = false;
		SceneManager.LoadScene(sceneName);
	}
}
