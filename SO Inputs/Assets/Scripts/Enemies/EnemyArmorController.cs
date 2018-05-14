using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyArmorController : MonoBehaviour
{

	public GameObject ArmorHurtbox;
	public GameObject BodyHurtbox;
	private Health _armorHealth;

	private void Awake()
	{
		_armorHealth = GetComponent<Health>();
	}

	private void OnEnable ()
	{
		_armorHealth.SetHealth(_armorHealth.MaxHealth);
		ArmorHurtbox.SetActive(true);
		BodyHurtbox.SetActive(false);
		_armorHealth.HealthAtZero += HealthAtZeroHandler;
	}

	private void HealthAtZeroHandler()
	{
		_armorHealth.HealthAtZero -= HealthAtZeroHandler;
		gameObject.SetActive(false);
	}

	private void OnDisable()
	{
		ArmorHurtbox.SetActive(false);
		BodyHurtbox.SetActive(true);	
	}
}
