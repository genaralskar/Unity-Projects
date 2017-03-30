using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIController : MonoBehaviour {

	public Button startButton;
	public Button multiButton;
	public Button singleButton;

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

	}

	public void SinglePlayerButton()
	{

	}
}
