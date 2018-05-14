using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Internal.Experimental.UIElements;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{

	public Health Health;
	public Image HealthBarUI;

	private void OnEnable()
	{
		Health.HealthUpdate += HealthUpdateHandler;
		print("HealthUpdateHandler Assigned");
	}

	private void HealthUpdateHandler(int currentHealth, float healthNormalized)
	{
		print("Updating Health Bar");
		HealthBarUI.fillAmount = healthNormalized;
	}
}
