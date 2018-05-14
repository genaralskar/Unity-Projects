using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WA_Gun : WeaponAttack
{

	public GameObject Bullet;
	public Transform BulletSpawnPoint;

	public override void Attack(bool input, GameObject gameObj)
	{
		if (input)
		{
			FireGun(gameObj);
		}
		
	}

	private void FireGun(GameObject gameObj)
	{
		GameObject tempBullet = Instantiate((Bullet));
		tempBullet.transform.rotation = BulletSpawnPoint.transform.rotation;
		tempBullet.transform.position = BulletSpawnPoint.transform.position;
		tempBullet.GetComponent<BulletController>().InheritVelocity = gameObj.GetComponent<CharacterController>().velocity;
	}
	
}
