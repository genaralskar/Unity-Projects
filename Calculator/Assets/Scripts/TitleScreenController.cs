using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class TitleScreenController : MonoBehaviour {

	public Image titleScreen;
	public Image rulesScreen;
	public Image timeInput;
	public Image livesInput;
	public InputField timeInputField;
	public InputField livesInputField;
	public NumberController[] numbers;
	public Transform numberSpawn;

	bool useLives = false;

	// Use this for initialization
	void Start () {
		NumberSpawn();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void UseLivesToggle (bool yes)
	{
		useLives = yes;
		Debug.Log(GameController.useLives);
		if(yes)
		{
			livesInput.gameObject.SetActive(true);
			timeInput.gameObject.SetActive(false);
		}
		else
		{
			livesInput.gameObject.SetActive(false);
			timeInput.gameObject.SetActive(true);

		}
	}

	public void ChangeScene(string sceneName)
	{
	
		GameController.useLives = useLives;
		if(timeInputField.text != "")
		{
			GameController.timerStartTime = float.Parse(timeInputField.text);
		}
		else
		{
			GameController.timerStartTime = 60;
		}
		if(livesInputField.text != "")
		{
		GameController.startLives = float.Parse(livesInputField.text);
		}
		else
		{
			GameController.startLives = 3;
		}
		SceneManager.LoadScene(sceneName);
	}

	public void OpenRules ()
	{
		titleScreen.gameObject.SetActive(false);
		rulesScreen.gameObject.SetActive(true);
	}

	public void CloseRules ()
	{
		titleScreen.gameObject.SetActive(true);
		rulesScreen.gameObject.SetActive(false);
	}

	void NumberSpawn()
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
		float xSpawn = Random.Range(-9, 9) + numberSpawn.position.x;

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
		Invoke("NumberSpawn", 3);
	}

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

	public bool IsPrime(float number) {

		if (number == 1) return false;
		if (number == 2) return true;

		//checks if the number is even first, as all even numbers are not prime, except 2 but that is done earlier
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
}
