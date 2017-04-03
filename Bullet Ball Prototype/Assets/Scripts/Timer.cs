using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Timer : MonoBehaviour {

	public Text timeText;
	public Text countdownText;
	public float timeLimit;
	public int countdownTime;
	public bool startTimer = false;

	// Use this for initialization
	void Start () {
		timeLimit = Retainer.timeLimit;
		timeText.text = timeLimit.ToString("f0");
		StartCoroutine(Countdown());
	}
	
	// Update is called once per frame
	void Update () {
		if(Retainer.timerStart)
		{
			timeLimit -= Time.deltaTime;
			timeText.text = timeLimit.ToString("f0");
		}
		if(timeLimit <= 0)
		{
			Retainer.timerStart = false;
			EndGame();
		}
	}

	void UseTimer()
	{
		Retainer.timerStart = true;
	}

	IEnumerator Countdown()
	{
		for( ; countdownTime > 0; countdownTime--)
		{
			countdownText.text = countdownTime.ToString();
			yield return new WaitForSeconds(1);
		}
		countdownText.text = "GO!";
		Retainer.timerStart = true;
		yield return new WaitForSeconds(1);
		countdownText.gameObject.SetActive(false);
	}

	void EndGame ()
	{
		countdownText.gameObject.SetActive(true);
		if(Retainer.player1Score > Retainer.player2Score)
		{
			countdownText.text = "Game Over!\nPlayer 1 Wins!";
		}
		else if(Retainer.player1Score < Retainer.player2Score)
		{
			countdownText.text = "Game Over!\nPlayer 2 Wins!";
		}
		else
		{
			countdownText.text = "Game Over!\nDraw!";
		}
	}
}
