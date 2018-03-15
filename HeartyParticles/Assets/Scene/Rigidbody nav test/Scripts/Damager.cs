using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Damager : MonoBehaviour {

	public int baseDamage, baseKnockBack;										//the values for damage and knockback before elements are applied
	public Vector3 knockbackDirection;											//relative to the object

//	Element currentElement;														//element applied to the object, weapon, trap, etc

	void OnTriggerEnter (Collider other) {										//gets the collider data when on trigger enter is called
		// Health objHealth = other.GetComponent<Health> ();						//gets the health script from the collider data, it pulls it either way so might as well use the data
		// if (objHealth != null) {												//if the last line was able to find a health script
		// 	objHealth.TakeDamage (baseDamage, baseKnockBack, currentElement, other.transform.position - this.transform.position);	//Damage the other thing, creature or player
		// }
		if(other.GetComponent<Health>())
			DoDamage(other);
	}

	void DoDamage(Collider _other)
	{
		_other.GetComponent<Health>().DoDamage(baseDamage, transform.TransformDirection(knockbackDirection), baseKnockBack);
	}

}
