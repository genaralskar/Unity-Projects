﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HousingManager : MonoBehaviour {

	public Housing house;
	
	public Transform exit;

	void Start()
	{
		foreach(GameObject obj in house.workers)
		{
			GameObject tempWorker = Instantiate(obj, exit.position, Quaternion.identity);
		//	tempWorker.GetComponent<WorkerManager>().FindKeep();

		}
	}
}
