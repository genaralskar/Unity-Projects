using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Playables;

public class CutscenePlayer : MonoBehaviour
{
	
	[Tooltip("Should the event be called when the playable is force stopped early?")]
	public bool eventOnForceStop = false;


	public List<GameObject> thingsToDisable;
	//public UnityEvent cutsceneStartEvent;
	public UnityEvent cutsceneEndEvent;
	
	public void StartCutscene(PlayableDirector playable)
	{
		StopAllCoroutines();
		StartCoroutine(CheckCutSceneEnd(playable));
	}

	public void ForceStopCutscene()
	{
		StopAllCoroutines();
		if (eventOnForceStop)
		{
			OnCutsceneEnd();
		}
	}

	private IEnumerator CheckCutSceneEnd(PlayableDirector playable)
	{
		//cutsceneStartEvent.Invoke();

		foreach (var obj in thingsToDisable)
		{
			obj.SetActive(false);
		}
		
		double duration = playable.duration;
		playable.Play();

		while (duration > 0)
		{
			duration -= Time.deltaTime;
			yield return new WaitForEndOfFrame();
		}
		OnCutsceneEnd();
	}

	private void OnCutsceneEnd()
	{
	
		foreach (var obj in thingsToDisable)
		{
			obj.SetActive(true);
		}
	
		cutsceneEndEvent.Invoke();
	}
}
