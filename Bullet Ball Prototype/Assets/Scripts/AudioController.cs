using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioController : MonoBehaviour {

	public static AudioSource fireSound;
	public static AudioSource hitSound;
	public AudioSource acceptSound;
	public static AudioSource cancelSound;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void PlaySound(string sound)
	{
		Debug.Log(sound);
		switch (sound)
		{
			case "Fire":
				fireSound.Play();
				break;
			case "Accept":
				//acceptSound.Play();
				break;
			case "Cancel":
				cancelSound.Play();
				break;
			case "Hit":
				hitSound.Play();
				break;
		}
	}
}
