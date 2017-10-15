using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Health))]
[RequireComponent(typeof(ClickedOn))]
public class Enemy : MonoBehaviour {

	Health health;
	ClickedOn clickedOn;
	public int damage;
	public float attackInterval;
	public float attackDistance;
	public float deagroTime;
	float deagroTimer;
	public GameObject target;

	void Start()
	{
		health = GetComponent<Health>();
		clickedOn = GetComponent<ClickedOn>();
		clickedOn.ClickedOnAction += GetTarget;
		health.NoHealthAction += StopAttacking;
	}

	void GetTarget(GameObject _target)
	{
		target = _target;
		if(target != null)
		{
			StartCoroutine(DistanceWait());
		}
	}

	IEnumerator DistanceWait()
	{
		deagroTimer = 0;
		while(Vector3.Distance(target.transform.position, transform.position) > attackDistance)
		{
			yield return new WaitForSeconds(attackInterval);
			print("waiting");
			deagroTimer += attackInterval;
			if(deagroTimer >= deagroTime)
			{
				StopAttacking();
			}
		}
		StartCoroutine(Attack());
	}

	IEnumerator Attack()
	{
		while(Vector3.Distance(target.transform.position, transform.position) < attackDistance)
		{
			print("Attack for " + damage + " damage!");
			target.GetComponent<Health>().UpdateHealth(damage);
			yield return new WaitForSeconds(attackInterval);
			
		}
		if(target != null)
			StartCoroutine(DistanceWait());
	}

	void StopAttacking()
	{
		StopAllCoroutines();
		target = null;
		print("stopped");
	}

}
