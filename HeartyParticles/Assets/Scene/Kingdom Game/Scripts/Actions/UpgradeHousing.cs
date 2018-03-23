using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu]
public class UpgradeHousing : ActionSO {

	public Worker workerType;

	public override void DoAction(BuildingManager _buildingManage)
	{
		HousingManager _houseManage = _buildingManage.GetManager<HousingManager>();
		_houseManage = _buildingManage.GetComponent<HousingManager>();
		Debug.Log("got type of " + _houseManage);
		//do stuf to housing manager suuucka!!!
	}
}
