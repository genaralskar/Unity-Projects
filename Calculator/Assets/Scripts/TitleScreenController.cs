using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class TitleScreenController : MonoBehaviour {

	public Image titleScreen;
	public Image rulesScreen;


	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void UseLivesToggle (bool useLives)
	{
		GameController.useLives = useLives;
		Debug.Log(GameController.useLives);
	}

	public void ChangeScene(string sceneName)
	{
		SceneManager.LoadScene(sceneName);
	}

	public void OpenRules ()
	{
		titleScreen.gameObject.SetActive(false);
		rulesScreen.gameObject.SetActive(true);
	}

	public void CloseRules ()
	{
		titleScreen.gameObject.SetActive(true);
		rulesScreen.gameObject.SetActive(false);
	}
}
