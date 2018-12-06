using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// Usage: Put this on an image UI element
// Intent: Display the most recent item picked and its name in the UI

public class ItemPickupUI_KG : MonoBehaviour 
{
    //Text itemName;
    Image thumbnail;

    public SizeKG sizescript;

	void Start () 
    {
        sizescript = GetComponent<SizeKG>();
	    thumbnail = GetComponent<Image>();
	    
    }
	
	
	void Update () 
    {
        //itemName.text = sizescript.itemname;
        thumbnail.sprite = sizescript.itemSprite;
	}
}
