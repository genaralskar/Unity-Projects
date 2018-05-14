using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WA_Sword : WeaponAttack
{
	
	public override void Attack(bool input, GameObject gameObj)
	{
		Anims.SetBool("Attack", input);
	}
	
}
