﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunController : MonoBehaviour {

	public bool isFiring;

	public BulletController bullet;
	public float bulletSpeed;

	public float timeBetweenShots;
	private float shotCounter;

	public Transform firePoint;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		// Reset time between shots when not firing
		if(shotCounter != 0)
		{
			shotCounter -= Time.deltaTime;
		}
		// If firing, and if shot counter is 0, spawn bullet
		if(isFiring)
		{
			if(shotCounter <= 0)
			{
				shotCounter = timeBetweenShots;
				BulletController newBullet = Instantiate(bullet, firePoint.position, firePoint.rotation) as BulletController;
				newBullet.Speed = bulletSpeed;
			}
		}
	}
}
