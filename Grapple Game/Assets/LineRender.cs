﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class LineRender : MonoBehaviour {

	public Transform[] points;
	public LineRenderer lineRenderer;

	// Use this for initialization
	void Start () {
		lineRenderer.numPositions = points.Length;
	}
	
	// Update is called once per frame
	void Update () {
		for(int i = 0; i < points.Length; ++i)
		{
			lineRenderer.SetPosition(i, points[i].position);
		}
	}
}
