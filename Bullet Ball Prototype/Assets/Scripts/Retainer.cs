using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Retainer : MonoBehaviour {

	public static int

		//1 - assault
		//2 - shotgun
		//3 - sniper
		player1Type = 1,
		player2Type = 1,
		
		//1 - multiplayer
		//2 - singleplayer score
		//3 - singleplayer target
		//4 - singleplayer skill
		gameType,

		//score of players
		player1Score = 0,
		player2Score = 0,

		//number of times a bullet can bounce off things
		//if 0, infinite bounces
		bulletBounces,

		//how long a bullet will last
		bulletLifetime,

		mapSelection,

		i;
	public static float
		moveSpeed,
		slowSpeed,

		//how long the timer will last
		timeLimit = 10f,
		j;
	public static string
		y;

	public static bool
		//check if gametimer has started
		//used to check if players can move or score can be added
		timerStart,

		isPaused = false,
		z;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	// public void setPlayerType(string playerTag, int playerType)
	// {
	// 	switch (playerTag)
	// 	{
	// 		case "Player_1":
	// 			player1Type = playerType;
	// 			break;
	// 		case "Player_2":
	// 			player2Type = playerType;
	// 			break;
	// 		default:
	// 			break;
	// 	}
	// }
}
