using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// Usage: Put this on an image UI element
// Intent: Display the most recent item picked and its name in the UI

public class ItemPickupUI_KG : MonoBehaviour 
{
    public Text itemName;
    private Image thumbnail;

    [HideInInspector] public SizeKG sizescript;


    public PickUpStuff_ML pickupScript;
	
    void Start () 
    {
	    thumbnail = GetComponent<Image>();
        thumbnail.enabled = false;
	    itemName.enabled = false;
    }

	
	
	void Update () 
    {
        if (pickupScript.firstpickup){
            thumbnail.enabled = true;
	        itemName.enabled = true;
	        itemName.text = sizescript.itemname;
	        thumbnail.sprite = sizescript.itemSprite;
        }
        
	}
}
