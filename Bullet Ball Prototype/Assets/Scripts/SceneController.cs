﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneController : MonoBehaviour {

	public static void LoadScene()
	{
		SceneManager.LoadScene(Retainer.mapSelection);
	}
}
