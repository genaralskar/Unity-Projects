using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Health : MonoBehaviour
{
	
	//add scriptable object for health?
	
	public int CurrentHealth = 10;
	public int MaxHealth = 10;
	public float HealthNormalized
	{
		get { return (float) CurrentHealth / MaxHealth; }
	}

	public UnityAction<int, float> HealthUpdate;
	public UnityAction HealthAtZero;

	public void AddHealth(int amount)
	{
		print("Adding " + amount + " Health");
		CurrentHealth += amount;
		print("CurrentHealth = " + CurrentHealth);
		if (CurrentHealth > MaxHealth)
		{
			CurrentHealth = MaxHealth;
		}

		if (CurrentHealth <= 0)
		{
			CurrentHealth = 0;
			
			if(HealthAtZero != null)
				HealthAtZero();
		}
		
		if (HealthUpdate != null)
		{
			HealthUpdate(CurrentHealth, HealthNormalized);
			print("Sending Health Update Action");
		}
	}

	public void SetHealth(int amount)
	{
		CurrentHealth = amount;
		
		if (CurrentHealth > MaxHealth)
		{
			CurrentHealth = MaxHealth;
		}

		if (CurrentHealth <= 0)
		{
			CurrentHealth = 0;
			
			if(HealthAtZero != null)
				HealthAtZero();
		}
		
		if (HealthUpdate != null)
		{
			HealthUpdate(CurrentHealth, HealthNormalized);
			print("Sending Health Update Action");
		}
	}
}
