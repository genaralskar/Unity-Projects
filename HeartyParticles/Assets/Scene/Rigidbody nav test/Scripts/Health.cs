using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Health : MonoBehaviour {

	

//	public Element currentElement;

	
	private CharacterController CC;
//    private EnimyNavigation eNav;
	private bool isMoveable = false;
	private bool usesCC;
    private bool usesNav;
	//=====================new stuff=================\\
	public int currentHealth;
	private Rigidbody RB;
	private NavRigid NR;
	bool hasNavRigid = false;
	public float baseKnockbackFactor;	//so smaller enemies can go farther and fatter ones not as much

	void Start(){
		Setup ();
	}

	void Setup(){																			//Determines if there is a character controller or a rigidbody attached
		RB = this.gameObject.GetComponent<Rigidbody>();
		NR = gameObject.GetComponent<NavRigid>();
		if(NR)
		{
			hasNavRigid = true;
		}



	//	CC = this.gameObject.GetComponent<CharacterController>();
     //   eNav = this.gameObject.GetComponent<EnimyNavigation>();
		// if (CC != null) {
		// 	isMoveable = true;
		// 	usesCC = true;
		// }
        // if (eNav != null) {
        //     isMoveable = true;
        //     usesNav = true;
        //     usesCC = false;
        // }
		// if (RB != null) {
		// 	CC = null;
		// 	isMoveable = true;
		// 	usesCC = false;
		// }
	}

	public void DoDamage(int _damage, Vector3 _direction, int  _power)							//doesnt work with elements yet, do that
	{
		currentHealth += _damage;

		Vector3 _pushPower = _direction * (_power + currentHealth/2);								//combine base knockback power and current health to get attacks knockback power
		
		if(hasNavRigid)
		{
			NR.Push(_pushPower);
		}
		else
		{
			RB.AddForce(_pushPower);
		}
	}


	// public void TakeDamage(int _dam, int _kBForce, Element damElement, Vector3 _dir ) {		//takes the damage, knockback force, element, and force direction

	// 	if (damElement != null) {															//if the damager has an element assigned to it
	// 		for (int i = 0; i < currentElement.weaknesses.Length; i++) {					//check to see if it is strong against the current element
	// 			if (currentElement.weaknesses [i].elementName == damElement.elementName) {	
	// 				currentHealth += 2 * _dam;												//apply double damage
	// 			}
	// 		}
	// 		for (int i = 0; i < currentElement.strengths.Length; i++) {						//check to see if the dam element is weak against current element
	// 			if (currentElement.strengths [i].elementName == damElement.elementName) {	
	// 				currentHealth += _dam / 2;												//apply half damage
	// 			}
	// 		}
	// 	} else { currentHealth += _dam; }													//if there are no elements just apply damage normally

    //     print(currentHealth);

	// 	//_dir = calculateForce (_dir, currentHealth * .01f , _kBForce *.05f);			    //calculates the force to be applied to the object
	// 	_dir = calculateForce(_dir, currentHealth, .01f) + calculateForce(_dir, _kBForce, .05f);		//trying different ways of calculating the force

	// 	if(isMoveable){																        //determines if the object can be moved
    //         if (usesNav){
    //             StartCoroutine(ApplyForceNav(_dir));
    //         }else {
	// 		    if (usesCC) {																//if it has a character controller
	// 			    StartCoroutine (ApplyForceCC (_dir));									//use the character controller mehtod of adding force
	// 		    } else { AddForce( _dir, RB); }												//else, ie if it has a RB, add force using the RB method
    //         }
	// 	}
	// }

	Vector3 calculateForce(Vector3 _forceVec, float num, float num2){						//simple way to multiply vector3s by floats or ints (i do it a few times)
		_forceVec.x *= num2 * num;
		_forceVec.y *= num2 * num;
		_forceVec.z *= num2 * num;
		return _forceVec;
	}

	public void AddForce(Vector3 _force, Rigidbody _RB){									//RB overload method of adding force
		RB.AddForce (calculateForce (_force, 30f , 1f), ForceMode.VelocityChange);			//uses the force vector and a multiplyer to add force to the object
	}

	public Vector3 AddForce(Vector3 _force, CharacterController _CC){						//CC overload method of adding force
		_CC.Move (_force);																	//uses move method to move the character
		return _force -= calculateForce (_force, Time.deltaTime, 3f);						//applys a negitive acceleration to the force (slows it down)
	}

	IEnumerator ApplyForceCC(Vector3 _impactForce){											//Coroutine used by CC
		Vector3 _force = _impactForce;														//stores the initial force on a temp varaible
		while(Vector3.Distance(_force, Vector3.zero) > .1f){								//enclosing loop, while there is still force to be applied
			_force = AddForce(_force ,CC);													//Method call to apply forces to the CC
			yield return null;																//wait a frame before going around again
		}
	}

    IEnumerator ApplyForceNav(Vector3 _impactForce){                                        //Coroutine used by CC
        Vector3 _force = _impactForce;                                                      //stores the initial force on a temp varaible
        while (Vector3.Distance(_force, Vector3.zero) > .1f){                               //enclosing loop, while there is still force to be applied
        //    eNav.ApplyForce(_force, true);                                                  //Method call to apply forces to the NavMesh
            _force -= calculateForce(_force, Time.deltaTime, 3f);
            yield return null;                                                              //wait a frame before going around again
        }
    //    eNav.ApplyForce(_force, false);
    }

}
