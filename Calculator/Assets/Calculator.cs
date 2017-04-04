using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Calculator : MonoBehaviour {

	//use of list for using more than 2 numbers

	public Text outputText;
	private float sum = 0;

	public float num1 = 0;
	public float num2 = 0;

	private string lastFunction = "Start";
	//public bool firstNumber;
	public bool opperatorPressed = false;

	// Use this for initialization
	void Start () {
		outputText.text = "0";	
	}
	
	// Update is called once per frame
	void UpdateText () {
		outputText.text = sum.ToString();
	}

	public void AddDigit(float digit)
	{

		// switch (stage)
		// {
		// 	case 0:
		// 		num1 = (num1 * 10) + digit;
		// 		sum = num1;
		// 		break;
		// 	case 1:
		// 		num2 = (num2 * 10) + digit;
		// 		sum = num2;
		// 		break;
		// 	default:
		// 		break;
		// }
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
				num2 = 0;
				UpdateText();
				break;
			case "Divide":
				sum = num1 / num2;
				num1 = sum;
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
