using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(menuName = "Item/New Inventory")]
public class Inventory : ScriptableObject
{

    public int inventorySize = 20;
    public List<InventorySlot> inventory;

    public UnityAction<int> UpdateInventory;

    public void AddItem(Item newItem, int amount)
    {
        if (newItem == null)
        {
            Debug.LogWarning("Item being added to inventory " + this + " is null and has not been added");
            return;
        }
        //search inventory to see if item is already in inventory
        if (ItemInInventory(newItem))
        {
            //if it is, check if its stackable
            if (newItem.stackable)
            {
                //this should never happen (i hope)
                if (ItemIndexInInventory(newItem) == -1)
                {
                    Debug.LogWarning(this + " said item " + newItem + " was in inventory, but when trying to stack" +
                                     " the item, it was not found. \n Item not added to inventory");
                    return;
                }
                
                //if it is, stackit
                inventory[ItemIndexInInventory(newItem)].amount += amount;
            }
            
        }
        //if item not in inventory, find an empty slot
        else if(FindEmptySlotIndex() != -1)
        {
            int emptyIndex = FindEmptySlotIndex();
            inventory[emptyIndex].item = newItem;
            inventory[emptyIndex].amount = amount;
        }
        //if no empy slot found
        else
        {
            //send inventory full message
            Debug.Log("Inventory " + inventory + " is full. Item " + newItem + " not added to inventory");
            return;
        }
        
        //update UI
        int index = ItemIndexInInventory(newItem);
        if(UpdateInventory != null)
            UpdateInventory(index);
    }

    //use for equipment inventory to equip new items
    //newItemInventory is the inventory the new item is coming from
    public void EquipItem(Item newItem, Inventory newItemInventory, int newItemIndex)
    {
        foreach (var slot in inventory)
        {
            if (slot.itemType == newItem.itemType)
            {
                //swap item
                //set item in newItemInventory
                newItemInventory.SetItem(slot.item, 1, newItemIndex);
                //set item in this inventory
                SetItem(newItem, 1, inventory.IndexOf(slot));
                return;
            }
        }
    }

    public void RemoveItem(Item newItem, int amount)
    {
        
    }

    public void SetItem(Item newItem, int newAmount, int index)
    {
        inventory[index].item = newItem;
        inventory[index].amount = newAmount;
        if (UpdateInventory != null)
        {
            UpdateInventory(index);
        }
    }


    #region Utility Methods

    private bool ItemInInventory(Item itemToCheck)
    {
        //check to see if item is in inventory
        foreach (var inventorySlot in inventory)
        {
            if (inventorySlot.item == itemToCheck)
                return true;
        }
        //if item not found, return false
        return false;
    }

    public InventorySlot ReturnItem(Item itemToCheck)
    {
        foreach (var inventorySlot in inventory)
        {
            if (inventorySlot.item == itemToCheck)
                return inventorySlot;
        }
        return null;
    }

    private int ItemIndexInInventory(Item itemToCheck)
    {
        foreach (var inventorySlot in inventory)
        {
            if (inventorySlot.item == itemToCheck)
            {
                return inventory.IndexOf(inventorySlot);
            }
        }

        return -1;
    }

    private int FindEmptySlotIndex()
    {
        foreach (var inventorySlot in inventory)
        {
            if (inventorySlot.item == null)
            {
                return inventory.IndexOf(inventorySlot);
            }
        }

        return -1;
    }
    
    #endregion

}

[System.Serializable]
public class InventorySlot
{
    public Item item;
    public string ItemName
    {
        get { return item.name; }
    }
    public int amount;
    [Tooltip("Only items of this type may go in this slot.\nLeave blank to allow all items")]
    public ItemType itemType;
}