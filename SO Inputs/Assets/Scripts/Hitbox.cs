using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Hitbox : MonoBehaviour
{

	public int Damage = 1;

	public UnityAction HitboxTriggered;
	
	private void OnTriggerEnter(Collider other)
	{
		print("Hitbox Triggered");
		Hurtbox otherHealth = other.GetComponent<Hurtbox>();
		otherHealth.AddHealth(-Damage);
		if (HitboxTriggered != null)
		{
			HitboxTriggered();
		}
	}
}
