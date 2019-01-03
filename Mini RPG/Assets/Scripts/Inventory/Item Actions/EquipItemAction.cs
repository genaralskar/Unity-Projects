using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Xml.Xsl;
using UnityEngine;

[CreateAssetMenu(menuName = "Item Actions/Equip Item")]
public class EquipItemAction : ItemAction
{
    public Inventory playerInventory;
    public Inventory equipInventory;
    public override void Action(ItemUI itemUi)
    {
        Debug.Log("Doing Equip Action");
        InventorySlotUI invSlot = itemUi.GetInventorySlot();
        Debug.Log("InvSlot = " + invSlot);
        Debug.Log(invSlot.inventory);
        if(invSlot.inventory == playerInventory)
            equipInventory.EquipItem(invSlot.item, equipInventory, invSlot.slotID);
        if (invSlot.inventory == equipInventory)
        {
            //unequip
            //check if playerInventory has space for new item
            //add item to playerInventory
            //remove item from equipInventory
        }
    }
}
