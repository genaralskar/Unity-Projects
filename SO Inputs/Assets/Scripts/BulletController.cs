using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletController : MonoBehaviour
{

	public float BulletSpeed = 10f;
	public float BulletLifetime = 5f;

	private Rigidbody rb;

	public Hitbox BulletHitbox;

	void Start()
	{
		rb = GetComponent<Rigidbody>();
		rb.velocity = (transform.forward * BulletSpeed);

		BulletHitbox.HitboxTriggered += HitboxTriggeredHandler;

		Invoke("DestroyThis", BulletLifetime);
	}

	private void HitboxTriggeredHandler()
	{
		DestroyThis();
	}

	private void DestroyThis()
	{
		Destroy(gameObject);
	}
	
	
}
