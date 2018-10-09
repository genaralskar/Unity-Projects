using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FadeIn : MonoBehaviour
{

	public Image fadeImage;
	
	// Use this for initialization
	void Start ()
	{
		fadeImage.color = Color.white;
		StartCoroutine(Fade());
	}
	
	private IEnumerator Fade()
	{
		yield return new WaitForSeconds(1);
		while (fadeImage.color.a > 0)
		{
			//print("faaaade!");
			fadeImage.color -= new Color(0, 0, 0, 1) * Time.deltaTime;
			yield return new WaitForEndOfFrame();
		}

		
	}
}
