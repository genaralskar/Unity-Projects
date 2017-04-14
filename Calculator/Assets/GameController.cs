using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameController : MonoBehaviour {


	public Text timerText;
	public float timerStartTime;

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
	
	public CheckerController checker;
	public Transform checkerSpawn;

	private bool spawned = false;

	float butt;
	
	

	// Use this for initialization
	void Start () {
		butt = Mathf.Floor(11.25f % 10);
		Debug.Log(butt);
	}
	
	// Update is called once per frame
	void Update () {
		Timer();
	}

	void SpawnNumber()
	{
		Debug.Log("Number Spawned");
		float number;
		int firstDigit;
		int secondDigit;
		number = Random.Range(1, 99);
		Debug.Log(number);
		firstDigit = Mathf.RoundToInt(number % 10);
		Debug.Log(firstDigit);
		secondDigit = Mathf.RoundToInt(Mathf.Floor(number/10));
		Debug.Log(secondDigit);
		CheckNumbers(10);
	}

	public void CheckNumbers(float numCheck)
	{
		//newNumber = Instantiate(GameObject, gameObject.transform, Quaternion.rotation) as CheckerController;
		//GameObject newChecker = (GameObject)Instantiate(Resources.Load("Checker"));
		// CheckerController newChecker = (CheckerController)Instantiate(Resources.Load("Checker"));
		// CheckerController newChecker = Instantiate(Resources.Load("Checker")) as CheckerController;
		CheckerController newChecker = Instantiate(checker, checkerSpawn.position, checkerSpawn.rotation) as CheckerController;
		newChecker.number = numCheck;
	}

	void Timer()
	{
		timerStartTime -= Time.deltaTime;
		timerText.text = Mathf.FloorToInt(timerStartTime).ToString("f0");

		if(Mathf.Floor(timerStartTime % 10) == 0 && spawned == false)
		{
			Debug.Log(timerStartTime);
			SpawnNumber();
			spawned = true;
			Debug.Log(spawned);
		}
		else if (Mathf.FloorToInt(timerStartTime % 10) != 0)
		{
			spawned = false;
		}
	}
}
