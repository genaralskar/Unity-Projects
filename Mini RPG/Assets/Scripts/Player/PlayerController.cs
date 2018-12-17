using System.Collections;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.EventSystems;

public class PlayerController : MonoBehaviour
{
	private const float locomotioonAnimationSmoothTime = .1f;
	[SerializeField] private float runSpeed = 5;
	
	private NavMeshAgent agent;
	[SerializeField] private float interactDistance = 2;
	[SerializeField] Animator anims;

	public string playerName;
	
	public Inventory inventory;
	public Inventory equipmentMenu;
	
	// Use this for initialization
	void Start ()
	{
		agent = GetComponent<NavMeshAgent>();
	}
	
	// Update is called once per frame
	void Update () {
		//on mouse down
		if (!EventSystem.current.IsPointerOverGameObject(-1) && Input.GetMouseButtonDown(0))
		{
			MovePlayer();
		}	
		UpdateAnimation();
	}

	private void MovePlayer()
	{
		//raycast down
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit hitInfo;
		if (Physics.Raycast(ray, out hitInfo))
		{
			//if IClickableObject
			IClickableObject obj = hitInfo.collider.GetComponent<IClickableObject>();
			if (obj != null)
			{
				Vector3 objCenter = hitInfo.transform.position;
					
				//if out of range of object
				if (Vector3.Distance(transform.position, objCenter) > interactDistance)
				{
					//move in range of object
					//do click action
					StopCoroutine(MoveInRange(objCenter, interactDistance, obj));
					StartCoroutine(MoveInRange(objCenter, interactDistance, obj));
				}
				//else interact with object
				else
				{
					obj.OnClicked(this);
				}
					
			}
			//else move there
			else
			{
				agent.SetDestination(hitInfo.point);
			}	
		}
	}

	//probably move to different script
	private void UpdateAnimation()
	{
		float movementPercent = agent.velocity.magnitude / runSpeed;
		anims.SetFloat("speedPercent", movementPercent, locomotioonAnimationSmoothTime, Time.deltaTime);
	}
	
	//maybe just use stopping distance? different distances for different times though?
	private IEnumerator MoveInRange(Vector3 position, float range, IClickableObject obj)
	{
		agent.SetDestination(position);
		while (Vector3.Distance(transform.position, position) > range)
		{
			yield return new WaitForEndOfFrame();
		}
		
		agent.SetDestination(transform.position);
		obj.OnClicked(this);
	}

	public void ToggleRun(bool run)
	{
		if (run)
		{
			agent.speed = runSpeed;
		}
		else
		{
			agent.speed = 2;
		}
	}
}
