using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class WeaponAttack : MonoBehaviour
{

	public Animator Anims;

	public virtual void Start()
	{
		Anims = GetComponent<Animator>();
	}
	
	//public abstract void Attack(bool input);

	public abstract void Attack(bool input, GameObject gameObj);



}
