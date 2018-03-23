using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu]
public class UpgradeProductionSO : ActionSO
{
	public float upgradeAmount;

   public override void DoAction(BuildingManager _buildManage)
   {
	   _buildManage.GetComponent<ProductionManager>().buildSpeed += upgradeAmount;
   }
}
