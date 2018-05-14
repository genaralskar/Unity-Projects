using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hurtbox : MonoBehaviour
{

	public Health HurtboxHealth;

	public void AddHealth(int amount)
	{
		print("Hurtbox Triggered");
		HurtboxHealth.AddHealth(amount);
	}
}
