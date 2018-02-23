﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New House", menuName = "Game/Housing")]
public class Housing : ScriptableObject {

	public new string name;

	public GameObject[] workers;

}
