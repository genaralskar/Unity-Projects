using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunController : MonoBehaviour {

	//changed from PlayerController to check if player is pressing Attack button
	public bool isFiring;
	public BulletController bullet;

	public float
		bulletSpeed,
		timeBetweenShots,
		shotCounter,
		parentSpeed;
		
	//get transform of where the bullets will spawn
	public Transform firePoint;

	public PlayerController playerController;


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
				// BulletController newBullet = Instantiate(bullet, firePoint.position, firePoint.rotation) as BulletController;
				// parentSpeed = transform.parent.GetComponent<Rigidbody>().velocity.magnitude;
				// newBullet.speed = parentSpeed + bulletSpeed;
				// newBullet.velocity = transform.parent.GetComponent<Rigidbody>().velocity;
				// newBullet.GetComponent<Rigidbody>().AddForce(transform.forward * bulletSpeed);
				SpawnBullet();
			}
		}
	}

	void SpawnBullet ()
	{
		//make new bullet
		BulletController newBullet = Instantiate(bullet, firePoint.position, firePoint.rotation) as BulletController;
		parentSpeed = transform.parent.GetComponent<Rigidbody>().velocity.magnitude;
		
		//newBullet.speed is bulletSpeed plus parent velocity so it does not run into parent object on spawn
		//might not need it
		newBullet.speed = parentSpeed + bulletSpeed;

		//New bullet velocity equals parent velocity
		//might not need it
		newBullet.velocity = transform.parent.GetComponent<Rigidbody>().velocity;

		//move newBullet forward * bulletSpeed
		newBullet.GetComponent<Rigidbody>().AddForce(transform.forward * bulletSpeed);

		string bulletType = newBullet.bulletType;

		//setup switch for instantiating different bullet types
		switch (bulletType)
		{
			case "1":
			playerController.Movement();
				break;
			case "2":

				break;
			case "3":
			
				break;

			default:
				break;
		}
	}
}
