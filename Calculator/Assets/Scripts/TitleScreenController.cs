using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class TitleScreenController : MonoBehaviour {

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
}
