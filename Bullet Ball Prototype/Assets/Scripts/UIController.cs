using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIController : MonoBehaviour {

	public AudioSource acceptSound;
	public AudioSource cancelSound;
	public Button startButton;
	public Button multiButton;
	public Button singleButton;
	public Button multiplayerMenuSelectButton;
	public Image multiPlayerPanel;
	public Image mapSelection;
	public Button mapSelectionSelectButton;
	
	public Image pauseMenu;
	public Button pauseMenuButton;
	public int state = 0;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
		if(Input.GetButtonDown("Cancel"))
		{
			PlaySound("Cancel");
			switch (state)
			{
				case 0:

					break;
				case 1:
				StartButton(false);
					break;
				case 2:
				MultiplayerButton(false);
					break;
				case 3:
				MapSelected(false);
					break;
				default:
					break;
			}
		}
		Pause();
		
	}


	public void StartButton (bool on)
	{
		startButton.gameObject.SetActive(!on);
		multiButton.gameObject.SetActive(on);
		singleButton.gameObject.SetActive(on);
		multiButton.Select();
		if(!on)
		{
			state = 0;
		}
		else
		{
			state = 1;
		}
	}

	public void MultiplayerButton(bool on)
	{
		multiButton.gameObject.SetActive(!on);
		singleButton.gameObject.SetActive(!on);
		mapSelection.gameObject.SetActive(on);
		mapSelectionSelectButton.Select();
		if(!on)
		{
			state = 1;
		}
		else
		{
			state = 2;
		}
	}

	public void MapSelected(bool on)
	{
		mapSelection.gameObject.SetActive(!on);
		multiPlayerPanel.gameObject.SetActive(on);
		multiplayerMenuSelectButton.Select();
		if(!on)
		{
			state = 2;
		}
		else
		{
			state = 3;
		}
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

	public void PlaySound(string sound)
	{
				switch (sound)
		{
			case "Accept":
				acceptSound.Play();
				break;
			case "Cancel":
				cancelSound.Play();
				break;
			default:
				break;
		}
	}

	// public void TogglePauseMenu()
	// {
	// 	// if(Retainer.isPaused)
	// 	// {
	// 	// 	pauseMenu.gameObject.SetActive(true);
	// 	// }

	// 	pauseMenu.gameObject.SetActive(Retainer.isPaused);
	// }

	public void Pause()
	{
		if(Input.GetButtonDown("Pause"))
		{
			Retainer.isPaused = !Retainer.isPaused;
			pauseMenuButton.Select();
		}
		if(Retainer.isPaused)
		{
			Time.timeScale = 0;
		}
		else if(!Retainer.isPaused)
		{
			Time.timeScale = 1;
		}
		pauseMenu.gameObject.SetActive(Retainer.isPaused);
	}

}
