using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;

public class WorkerUI : MonoBehaviour {

	public static UnityAction UpdateWorkers;

	public Text workerText;

	void Start()
	{
		workerText = GetComponent<Text>();
		UpdateWorkers += UpdateWorkersHandler;
	}

	void UpdateWorkersHandler()
	{
		workerText.text = WorkerCounter.inactiveWorkers.ToString() + "/" + WorkerCounter.totalWorkers.ToString();
	}

}
