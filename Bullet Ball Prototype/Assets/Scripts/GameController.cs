using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameController : MonoBehaviour {

	//score stuff
	//public Text scoreText;
	public Text scoreTextP1;
	public Text scoreTextP2;
	private int score;
	private int scoreP1;
	private int scoreP2;

	public PlayerController player1;
	public PlayerController player2;

	// Use this for initialization
	void Start () {
		//set initial score to 0, update UI with new score
		score = 0;
		UpdateScore();
	}
	
	// Update is called once per frame
	void Update () {
		Pause();
	}

	public void UpdateScore()
	{
		//update UI with new score
		//scoreText.text = "Score: " + score;
		scoreTextP1.text = "Player 1 Score: " + scoreP1;
		scoreTextP2.text = "Player 2 Score: " + scoreP2;

	}

	public void AddScore (int newScoreValue, string player)
	{
		//add newScoreValue to current score, update gui
		//score += newScoreValue;
		//check if game timer has started
		if(Retainer.timerStart)
		{
			//checks player (should be an object tag) to see which score to increase
			switch (player)
			{
				case "Player_1":
					scoreP1 += newScoreValue;
					Retainer.player1Score += newScoreValue;
					break;
				case "Player_2":
					scoreP2 += newScoreValue;
					Retainer.player2Score += newScoreValue;
					break;
				default:
					break;
			}
			UpdateScore();
		}
	}

	public void Pause()
	{
		if(Input.GetButtonDown("Pause"))
		{
			Retainer.isPaused = !Retainer.isPaused;
		}
		if(Retainer.isPaused)
		{
			Time.timeScale = 0;
		}
		else if(!Retainer.isPaused)
		{
			Time.timeScale = 1;
		}
	}
}
