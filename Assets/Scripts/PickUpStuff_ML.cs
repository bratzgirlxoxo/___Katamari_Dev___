using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine;

// USAGE: put this script on the Ball that will be pushed around
// INTENT: this script controls the sticking of things to the ball
public class PickUpStuff_ML : MonoBehaviour
{

	public float ballSize; // the size of the ball
	public ItemPickupUI_KG uiImages;

	public int numItems = 0; // num items picked up

	
	void OnCollisionEnter(Collision coll)
	{
		GameObject otherObject = coll.gameObject; // the gameobject of the thing we collided with


        // check to see if the other object is collectible;
        if (otherObject.CompareTag("Item"))
        {
            float masss = coll.gameObject.GetComponent<SizeKG>().mass; // get the mass of the object
	        uiImages.sizescript = coll.gameObject.GetComponent<SizeKG>(); // send object info to the ui
            // check the size here... later
            if (masss <= ballSize)
            {
                // collect the object!
                otherObject.transform.parent = transform; // set the objects parent to this transform
                ballSize += masss; // increase mass of basll
	            numItems++; // increment number of items
                otherObject.tag = "PickedUpItem";
	            otherObject.GetComponent<SphereCollider>().enabled = false;
                if (numItems % 5 == 0)
                {
	                // every 4 items, increase collider size
	                GetComponent<SphereCollider>().radius += 0.0025f;
                }
            }
        }
	}
	
}
