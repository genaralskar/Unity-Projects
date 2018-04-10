using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MetorSpawner : MonoBehaviour {

	[Tooltip("Object to be spawned as the meteor")]
	public GameObject meteor;

	[Tooltip("Location the meteor spawns from")]
	public Transform meteorSpawnPoint;

	[Tooltip("Reference to object that is used for radius")]
	public GameObject meteorRadius;

	[Tooltip("The time between meteor spawns")]
	public float spawnTime;
	
	[Tooltip("The angle the meteor is shot at")]
	public float shotAngle;

	public GameObject hitMarker;

	// Use this for initialization
	void Start () {
		StartCoroutine(MeteorTimer());
	}
	
	IEnumerator MeteorTimer()
	{
		meteorRadius.GetComponent<MeshRenderer>().enabled = false;
		while(true)
		{
			yield return new WaitForSeconds(spawnTime);
			SpawnMeteor();
		}
	}
	
	void SpawnMeteor()
	{
		//get a valid location
		Vector3 _validLZ = FindValidLocation();

		//spawn a meteor at the same height as that location
		meteorSpawnPoint.transform.position = new Vector3(meteorSpawnPoint.transform.position.x, _validLZ.y, meteorSpawnPoint.transform.position.z);

		GameObject _meteor = Instantiate(meteor, meteorSpawnPoint.position, Quaternion.identity) as GameObject; //replace this with pooling
		_meteor.GetComponent<Rigidbody>().velocity = BallisticVelocity(_validLZ, shotAngle);
	}

	Vector3 BallisticVelocity(Vector3 target, float angle) //gets the force required to launch meteor
	{
		Vector3 dir = target - meteorSpawnPoint.position; // get Target Direction
		float height = dir.y; // get height difference
		dir.y = 0; // retain only the horizontal direction
		float dist = dir.magnitude; // get horizontal distance
		float a = angle * Mathf.Deg2Rad; // Convert angle to radians
		dir.y = dist * Mathf.Tan(a); // set dir to the elevation angle.
		dist += height / Mathf.Tan(a); // Correction for small height differences
		
		// Calculate the velocity magnitude
		float velocity = Mathf.Sqrt(dist * Physics.gravity.magnitude / Mathf.Sin(2 * a));
		return velocity * dir.normalized; // Return the velocity vector.
	}

	Vector3 FindValidLocation() //return a valid location for the meteor to land
	{
		RaycastHit hit;
		int _loopCounter = 0;
		while(_loopCounter < 100)
		{
			if(Physics.Raycast(GetRaycastOrigin(), Vector3.down, out hit))
			{
				//Instantiate(hitMarker, hit.point, Quaternion.identity);
				return hit.point;
			}
			_loopCounter++;
		}
		print("Could not find valid spawn location");
		return Vector3.zero;
	}

	Vector3 GetRaycastOrigin() //returns a random location within the meteorRadius to test for validitiy
	{
		Vector3 _origin = Vector3.zero;
		float _radius = meteorRadius.transform.localScale.x/2;
		Vector2 _2dOrigin = Random.insideUnitCircle;

		_origin.x = _2dOrigin.x;
		_origin.z = _2dOrigin.y;
		
		Vector3 _newOrgin = meteorRadius.transform.position + (_origin * _radius);
		print(_newOrgin);
	//	Instantiate(hitMarker, _newOrgin, Quaternion.identity);
		return _newOrgin;
	}

	
}
