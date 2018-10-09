using System.Collections;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class NextLevel : MonoBehaviour
{
	public int levelIndex;
	public Image fadeImage;
	
	private void OnTriggerEnter(Collider other)
	{
		//fade out, then load
		StopAllCoroutines();
		StartCoroutine(Fade());
		
	}

	private IEnumerator Fade()
	{
		
		while (fadeImage.color.a < 1)
		{
			//print("faaaade!");
			fadeImage.color += Color.white * Time.deltaTime;
			yield return new WaitForEndOfFrame();
		}

		yield return new WaitForSeconds(1);
		
		ChangeScene();
	}

	private void ChangeScene()
	{
		SceneManager.LoadScene(levelIndex);
	}
}
