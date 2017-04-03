using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameChecks : MonoBehaviour {

	public static int numPlayer = 0;
	public static int player1Type;
	public static int player2Type;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public static void SetPlayers(int i)
	{
		numPlayer = i;
	}

	public static void SetPlayerType (string playerTag, int playerType)
	{
		switch (playerTag)
		{
			case "Player_1":
				player1Type = playerType;
				break;
			case "Player_2":
				player2Type = playerType;
				break;
			default:
				break;
		}
	}
}
