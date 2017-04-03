using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIController : MonoBehaviour {

	public Button startButton;
	public Button multiButton;
	public Button singleButton;
	public Button multiplayerMenuSelectButton;
	public Image multiPlayerPanel;
	public Image mapSelection;
	public Button mapSelectionSelectButton;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void StartButton ()
	{
		startButton.gameObject.SetActive(false);
		multiButton.gameObject.SetActive(true);
		singleButton.gameObject.SetActive(true);
		multiButton.Select();
	}

	public void MultiplayerButton()
	{
		multiButton.gameObject.SetActive(false);
		singleButton.gameObject.SetActive(false);
		mapSelection.gameObject.SetActive(true);
		mapSelectionSelectButton.Select();
	}

	public void MapSelected()
	{
		mapSelection.gameObject.SetActive(false);
		multiPlayerPanel.gameObject.SetActive(true);
		multiplayerMenuSelectButton.Select();
	}

	public void SinglePlayerButton()
	{

	}

	public void SetPlayer1Type(int playerType)
	{
		Retainer.player1Type = playerType;
	}
	public void SetPlayer2Type(int playerType)
	{
		Retainer.player2Type = playerType;
	}

	public void SetMap (int map)
	{
		Retainer.mapSelection = map;
	}

}
