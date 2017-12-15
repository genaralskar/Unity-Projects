using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(ClickedOn))]
public class ClickTeleport : MonoBehaviour {

	public Transform destination;

	// Use this for initialization
	void Start () {
		GetComponent<ClickedOn>().ClickedOnAction += OnClick;
	}
	
	// Update is called once per frame
	void OnClick (GameObject _player) {
		NavMeshAgent playerNav = _player.GetComponent<NavMeshAgent>();
		playerNav.Warp(destination.position);
		playerNav.SetDestination(destination.position);
	}
}
