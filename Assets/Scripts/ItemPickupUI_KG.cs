using System.Collections;
using System.Collections.Generic;
using UnityEditor.U2D;
using UnityEngine;
using UnityEngine.UI;

// Usage: Put this on an image UI element
// Intent: Display the most recent item picked and its name in the UI

public class ItemPickupUI_KG : MonoBehaviour 
{
    //Text itemName;
    Image thumbnail;

    public SizeKG sizescript;


	private PickUpStuff_ML pickupScript;
	
    void Start () 
    {
	    thumbnail = GetComponent<Image>();
	    pickupScript = GetComponent<PickUpStuff_ML>();
    }

	
	
	void Update () 
    {
        //itemName.text = sizescript.itemname;
        thumbnail.sprite = sizescript.itemSprite;
	}
}
