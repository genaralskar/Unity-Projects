using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class WorkerCounter : MonoBehaviour {

	public static UnityAction AddWorker;
	public static UnityAction AddInactiveWorker;
	public static UnityAction SubtractInactiveWorker;

	void Awake()
	{
		AddWorker += AddWorkerHandler;
		AddInactiveWorker += AddInactiveWorkerHander;
		SubtractInactiveWorker += SubtractInactiveWorkerHandler;
	}

	public static int totalWorkers;
	public static int inactiveWorkers;

	void AddWorkerHandler()
	{
		totalWorkers++;
		WorkerUI.UpdateWorkers();
	}

	void AddInactiveWorkerHander()
	{
		inactiveWorkers++;
		WorkerUI.UpdateWorkers();
	}

	void SubtractInactiveWorkerHandler()
	{
		inactiveWorkers--;
		WorkerUI.UpdateWorkers();
	}

}
