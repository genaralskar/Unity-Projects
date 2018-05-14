using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.UI;

public class EnemyController : MonoBehaviour
{

	public NavMeshAgent Agent;
	public Health EnemyHealth;
	public AudioClip HurtSound;
	public AudioClip DeathSound;
	public ParticleSystem DeathParticles;

	public bool StartWithArmor;
	public GameObject Armor;
	
	// Use this for initialization
	private void Start ()
	{
		Agent = GetComponent<NavMeshAgent>();
		EnemyHealth = GetComponent<Health>();
		EnemyHealth.HealthAtZero += HealthAtZeroHandler;

		if (StartWithArmor)
		{
			Armor.SetActive(true);
		}
	}

	private void HealthAtZeroHandler()
	{
		EnemyHealth.HealthAtZero -= HealthAtZeroHandler;
		Destroy(gameObject);
	}
}
