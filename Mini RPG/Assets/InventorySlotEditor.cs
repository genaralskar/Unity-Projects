/*
using UnityEngine;
using UnityEditor;
using System.Collections;


[CustomPropertyDrawer (typeof (InventorySlot))]
class InventorySlotEditor : PropertyDrawer {
    
    // Draw the property inside the given rect
    public override void OnGUI (Rect position, SerializedProperty property, GUIContent label)
    {       
        
        
        
        // Using BeginProperty / EndProperty on the parent property means that
        // prefab override logic works on the entire property.
        EditorGUI.BeginProperty (position, label, property);
        
        // Draw label
        position = EditorGUI.PrefixLabel (position, GUIUtility.GetControlID (FocusType.Passive), label);
        
        // Don't make child fields be indented
        var indent = EditorGUI.indentLevel;
        EditorGUI.indentLevel = 0;
        
        // Calculate rects
        Rect amountRect = new Rect (position.x, position.y, 30, position.height);
        Rect unitRect = new Rect (position.x + 35, position.y, 50, position.height);
        Rect nameRect = new Rect (position.x + 90, position.y, position.width - 90, position.height);

        InventorySlot obj = fieldInfo.GetValue(property.serializedObject.targetObject) as InventorySlot;
        //Debug.Log(obj);
        
        // Draw fields - passs GUIContent.none to each so they are drawn without labels
        EditorGUI.PropertyField (amountRect, property.FindPropertyRelative ("amount"), GUIContent.none);
        EditorGUI.PropertyField (unitRect, property.FindPropertyRelative ("item"), GUIContent.none);
        Debug.Log(property.FindPropertyRelative("item"));
        if (obj != null)
        {
            EditorGUI.LabelField(nameRect, obj.ItemName);
        }
        
        
        // Set indent back to what it was
        EditorGUI.indentLevel = indent;
        
        EditorGUI.EndProperty ();
    }
}
*/