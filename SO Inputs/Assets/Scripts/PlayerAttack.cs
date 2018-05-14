using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttack : MonoBehaviour
{

	public SO_BoolInput Attack1Input;
	public WeaponAttack Weapon1;
	
	public SO_BoolInput Attack2Input;
	public WeaponAttack Weapon2;
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		Weapon1.Attack(Attack1Input.GetInput(), gameObject);
		Weapon2.Attack(Attack2Input.input, gameObject);
	}

	private void Attack1()
	{
		Weapon1.Attack(true, gameObject);
	}
}
