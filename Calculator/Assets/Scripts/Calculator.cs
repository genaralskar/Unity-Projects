using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Calculator : MonoBehaviour {

	//use of list for using more than 2 numbers

	public Text outputText;
	public float sum = 0;

	public float num1 = 0;
	public float num2 = 0;

	public static float total;

	private string lastFunction = "Start";
	//public bool firstNumber;
	public bool opperatorPressed = false;

	public Button multiplyButton;
	public Button divideButton;
	public Button digitOneButton;

	// Use this for initialization
	void Start () {
		outputText.text = "0";	
		Debug.Log(Mathf.Floor(10F));
	}
	
	// Update is called once per frame
	void UpdateText () {
		outputText.text = sum.ToString();
	}


	public void AddDigit(float digit)
	{
		
		digitOneButton.interactable = true;
		if(opperatorPressed)
		{
			num1 = 0;
			num2 = (num2 * 10) + digit;
			sum = num2;
			opperatorPressed = false;
			lastFunction = "Start";
		}
		else
		{
			num2 = (num2 * 10) + digit;
			sum = num2;
		}
		if(digit == 1 && sum <= 10)
		{
			multiplyButton.interactable = false;
			divideButton.interactable = false;
		}
		else
		{
			multiplyButton.interactable = true;
			divideButton.interactable = true;
		}
		UpdateText();
	}

	public void AddButton ()
	{
		outputText.text = "+";
		Function();
		lastFunction = "Add";
		Debug.Log(lastFunction);
	}

	public void SubtractButton ()
	{
		outputText.text = "-";
		Function();
		lastFunction = "Subtract";
		Debug.Log(lastFunction);
	}

	public void MultiplyButton ()
	{
		outputText.text = "*";
		// if(lastFunction != "Equals")
		// {
		// 	if(firstNumber)
		// 	{
		// 		num1 = num2;
		// 		firstNumber = false;
		// 	}
		// 	else
		// 	{
		// 		num1 = num1 * num2;
		// 	}
		// }
		// num2 = 0;
		Function();
		lastFunction = "Multiply";
		Debug.Log(lastFunction);
		if(sum <= 10)
		{
			digitOneButton.interactable = false;
		}
		else
		{
			digitOneButton.interactable = true;
		}
		
		
	}

	public void DivideButton ()
	{
		outputText.text = "/";
		// if(lastFunction != "Equals")
		// {
		// 	if(firstNumber)
		// 	{
		// 		num1 = num2;
		// 		firstNumber = false;
		// 	}
		// 	else
		// 	{
		// 		num1 = num1 / num2;
		// 	}
		// }
		// num2 = 0;
		Function();
		lastFunction = "Divide";
		Debug.Log(lastFunction);
		digitOneButton.interactable = false;
	}

	public void EqualButton ()
	{
		switch (lastFunction)
		{
			case "Add":
				sum = num1 + num2;
				num1 = sum;
				num2 = 0;
				UpdateText();
				break;
			case "Subtract":
				sum = num1 - num2;
				num1 = sum;
				num2 = 0;
				UpdateText();
				break;
			case "Multiply":
				sum = num1 * num2;
				num1 = sum;
				if(num2 == 0)
				{
					total = 0;
				}
				else
				{
					total = sum;
				}
				num2 = 0;
				UpdateText();
				break;
			case "Divide":
				sum = num1 / num2;
				num1 = sum;
				if(num2 == 0)
				{
					total = 0;
				}
				else
				{
					total = sum;
				}
				num2 = 0;
				UpdateText();
				break;
			default:
				Debug.Log("No lastFunction set");
				break;
		}
		opperatorPressed = true;
		lastFunction = "Equals";
	}

	public void ClearButton ()
	{
		num1 = 0;
		num2 = 0;
		sum = 0;
		opperatorPressed = false;
		lastFunction = "Start";
		UpdateText();
		digitOneButton.interactable = true;
		multiplyButton.interactable = true;
		divideButton.interactable = true;
	}

	public void Function ()
	{
		if(opperatorPressed)
		{
			opperatorPressed = false;
		}
		switch (lastFunction)
		{
			case "Add":
				num1 = num1 + num2;
				num2 = 0;
				//lastFunction = "Add";
				break;
			case "Subtract":
				num1 = num1 - num2;
				num2 = 0;
				//lastFunction = "Subtract";
				break;
			case "Multiply":
				num1 = num1 * num2;
				num2 = 0;
				break;
			case "Divide":
				num1 = num1 / num2;
				num2 = 0;
				break;
			case "Start":
				num1 = num2;
				num2 = 0;
				break;
			case "Equals":
				break;
			default:
				Debug.Log("No lastFunction set");
				break;
		}
	}
}
