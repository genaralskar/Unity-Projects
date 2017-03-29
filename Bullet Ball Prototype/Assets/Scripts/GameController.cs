using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameController : MonoBehaviour {

	//score stuff
	public Text scoreText;
	private int score;

	// Use this for initialization
	void Start () {
		//set initial score to 0, update UI with new score
		score = 0;
		UpdateScore();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void UpdateScore()
	{
		//update UI with new score
		scoreText.text = "Score: " + score;
	}

	public void AddScore (int newScoreValue)
	{
		//add newScoreValue to current score, update UI
		score += newScoreValue;
		UpdateScore();
	}
}
