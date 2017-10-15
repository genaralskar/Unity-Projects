using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class Health : MonoBehaviour {

	public Action<int, int> UpdateHealthAction;
	public Action NoHealthAction;
	public int maxHealth;
	public int health;

	public void UpdateHealth(int _amount)
	{
		this.health += _amount;
		print("Health is " + this.health + "/" + maxHealth);
		UpdateHealthAction(this.health, this.maxHealth);
		if(this.health <= 0)
		{
			NoHealthAction();
		}
	}

}
