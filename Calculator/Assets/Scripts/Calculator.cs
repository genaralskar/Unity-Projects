using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Calculator : MonoBehaviour {

	//use of list for using more than 2 numbers

	public Text outputText;

	//used to keep track of our total when we hit =
	//usually set equal to num1, and in most cases could proabably be replaced with num1
	//but we still need it when we hit = to refence later when we check the falling numbers in the game
	public float sum = 0;

	//num1 is going to be a placeholder of sorts
	//this is the number that will hold our "first" number and do susequent modificaton to
	//for example when we hit + the first number we enter needs to be stored somewhere, which would be num1
	//we also do all operations to num1 so we can continue to do operation on it
	//so if we hit 3+2+5=, when we hit + the first time, num1 is set to 3. when we hit it again, 2 is added to num1, so it becomes five
	//when we hit equals, 5 is added to num1 so it then becomes 10
	public float num1 = 0;

	//num2 is mainy used as the "display" number
	//if we hit 3+12+35= it would equal 3, then 12, then 35
	//these numbers are then displayed at the appropriate times
	public float num2 = 0;

	public static float total;

	//this is used to check the last operator button we pressed
	//like +, -, *, /
	//setting it to start does a default function later
	private string lastFunction = "Start";


	//these are the buttons we enable/disable depending on certain circumstances for the game
	public Button multiplyButton;
	public Button divideButton;
	public Button digitOneButton;
	public Button equalsButton;

	// Use this for initialization
	void Start () {
		//set the text for outputText to 0 so it shows 0 when it starts
		outputText.text = "0";	
		//Debug.Log(Mathf.Floor(10F));
	}
	
	//this updates the outputText to the current sum
	//should get called anytime the sum is updated to keep the output display accurate
	void UpdateText () {
		outputText.text = sum.ToString();
	}


	//this allows us to stack digits
	//so if we hit then two it goes from 1>12 instead of 1>2
	public void AddDigit(float digit)
	{
		//
		digitOneButton.interactable = true;

		
		//"stacks" digits, so if we press 1 then 2 it does 1>12 instead of 1>2
		num2 = (num2 * 10) + digit;
		sum = num2;
		

		//more checks for what buttons should be enabled/disabled in the game
		if((digit == 1 && sum < 10) || sum % 10 == 0)
		{
			multiplyButton.interactable = false;
			divideButton.interactable = false;
		}
		else
		{
			multiplyButton.interactable = true;
			divideButton.interactable = true;
		}
		if((digit == 1 || sum % 10 == 0) && (lastFunction == "Multiply" || lastFunction == "Divide"))
		{
			equalsButton.interactable = false;
		}
		else
		{
			equalsButton.interactable = true;
		}
		//update the output text, because we changed some stuff
		UpdateText();
	}


	//used when we press the + button
	public void AddButton ()
	{
		//sets the outputText to + so we know we pressed +
		outputText.text = "+";
		//used to determine what happens to num1, our placeholder
		//what happens is determined by the lastFunction
		Function();
		//changes the last function to Add so we know what to do next time Function is called
		lastFunction = "Add";
		Debug.Log(lastFunction);
	}


	//similar to AddButton but with subtraction
	public void SubtractButton ()
	{
		outputText.text = "-";
		Function();
		lastFunction = "Subtract";
		Debug.Log(lastFunction);
	}

	//similar to AddButton but with multiplication
	public void MultiplyButton ()
	{
		outputText.text = "*";
		Function();
		lastFunction = "Multiply";
		Debug.Log(lastFunction);	
	}

	//similar to AddButton but with division
	public void DivideButton ()
	{
		outputText.text = "/";
		Function();
		lastFunction = "Divide";
		Debug.Log(lastFunction);
		digitOneButton.interactable = false;
	}


	//
	public void EqualButton ()
	{
		//does the last operation to get the final total
		Function();
		//set sum equal to this new total
		sum = num1;

		//check so we can't just input a number, hit equal, and that number destory the falling numbers
		//does this by checking if we've done a previous operation
		if(lastFunction != "Start")
		{
			total = sum;
		}

		//set the function back to default so function will act like we just started
		//this means when we start a new operation, num1 will be overwritten with whatever number we input
		//this is done after the check because then it would never work
		lastFunction = "Start";

		//update output text with the new total
		UpdateText();

	}

	//this is used when we press the clear button
	//this just resets all the values to default we can start with a clean slate
	public void ClearButton ()
	{
		num1 = 0;
		num2 = 0;
		sum = 0;
		lastFunction = "Start";
		UpdateText();
		digitOneButton.interactable = true;
		multiplyButton.interactable = true;
		divideButton.interactable = true;
		equalsButton.interactable = true;
	}


	//this checks what the prevous function was and what we should do with it.
	//last functions are set in the individual operator methods to determine what to do with num1, the placeholder, so we can do math good
	//this is explained a little more earlier, check line 17 and 32
	public void Function ()
	{
		switch (lastFunction)
		{
			//when the game starts we set this to default so the first operator we press only overrides num1, our place holder, with the first number we input
			case "Start":
				num1 = num2;
				num2 = 0;
				break;
			//adds the numbers
			case "Add":
				num1 = num1 + num2;
				num2 = 0;
				break;
			//subtracts the numbers
			case "Subtract":
				num1 = num1 - num2;
				num2 = 0;
				break;
			//multiplies the numbers
			case "Multiply":
				num1 = num1 * num2;
				num2 = 0;
				break;
			//divides the numbers
			case "Divide":
				num1 = num1 / num2;
				num2 = 0;
				break;
			//this is here incase lastFunction is never set, which shouldn't happen
			default:
				Debug.Log("No lastFunction set");
				break;
		}
	}
}
