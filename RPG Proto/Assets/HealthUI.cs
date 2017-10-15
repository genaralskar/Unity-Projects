using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Health))]
public class HealthUI : MonoBehaviour {

	Health health;
	public Image healthBar;


	void Start()
	{
		health = GetComponent<Health>();
		health.UpdateHealthAction += UpdateHealthBar;
	}

	void UpdateHealthBar(int _health, int _maxHealth)
	{
		print(_health +" "+ _maxHealth);
		healthBar.transform.localScale = new Vector3((float)_health/(float)_maxHealth, 1, 1);
		print("Health bar scale = " + healthBar.transform.localScale);
	}
}
