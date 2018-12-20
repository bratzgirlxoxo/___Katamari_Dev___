using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine;
using UnityEngine.Animations;

// USAGE: put this script on the Ball that will be pushed around
// INTENT: this script controls the sticking of things to the ball
public class PickUpStuff_ML : MonoBehaviour
{

	public float ballSize; // the size of the ball
    public float startBallSize; // the starting size of the ball
    public float scalingVar; // amount to scale ball transform by

	public GameObject camera;
	public GameObject cameraPivot;
	public GameObject sizeAnimation;
	

    public ItemPickupUI_KG uiImages;

    [HideInInspector] public int numItems = 0; // num items picked up
    [HideInInspector] public bool firstpickup;

	private AudioSource pickUpSound;

	void Start()
	{
		pickUpSound = GetComponent<AudioSource>();
        firstpickup = false;
	}


	void OnCollisionEnter(Collision coll)
	{
		GameObject otherObject = coll.gameObject; // the gameobject of the thing we collided with


        // check to see if the other object is collectible;
        if (otherObject.CompareTag("Item"))
        {

            float masss = coll.gameObject.GetComponent<SizeKG>().mass; // get the mass of the object
	        
            // check the size here... later
            if (masss <= ballSize)
            {
                // collect the object!
                //otherObject.transform.parent = transform; // set the objects parent to this transform
	            //otherObject.GetComponent<ParentConstraint>().constraintActive = true;
	            
	            otherObject.transform.parent = cameraPivot.transform;
	            
                ballSize += masss / 5f; // increase mass of basll
	            numItems++; // increment number of items

                firstpickup = true; // used to turn on the thumbnail UI

                otherObject.tag = "PickedUpItem"; // change tag to picked up
	            otherObject.layer = 9; // change layer of object so that raycasts ignore it
	            otherObject.GetComponent<SphereCollider>().enabled = false; // disable the collider of the object

                SizeKG sizeScript = otherObject.GetComponent<SizeKG>();
                uiImages.sizescript = sizeScript;

	            pickUpSound.PlayOneShot(pickUpSound.clip); // play the pick up sound
	            
                if (numItems % 5 == 0)
                {
	                // every 5 items, increase size and move player away from ball
	                transform.localScale += Vector3.one * scalingVar;
	                //GetComponent<SphereCollider>().radius += 0.0025f;
	                GetComponent<PlayerController_JZ>().distFromBall += 1.25f;
	                camera.transform.position -= camera.transform.forward * 1.5f + new Vector3(0f, 1f, 0f);
                }

	            sizeAnimation.transform.localScale *= 1.025f; // scale up the animation in the top right corner
            }
        }
	}
	
}
