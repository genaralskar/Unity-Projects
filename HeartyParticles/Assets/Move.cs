﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Move : MonoBehaviour {

	public Vector3 moveVector;
	public float moveSpeed;

	// Update is called once per frame
	void FixedUpdate () {
		transform.Translate (moveVector * Time.deltaTime);
	}
}
