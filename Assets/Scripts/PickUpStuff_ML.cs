using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine;

// USAGE: put this script on the Ball that will be pushed around
// INTENT: this script controls the sticking of things to the ball
public class PickUpStuff_ML : MonoBehaviour
{

	public float ballSize; // the size of the ball
    public float startBallSize; // the starting size of the ball
    public float scalingVar; // amount to scale ball transform by
	
	// Update is called once per frame
	/*
	void Update () {
		// move the ball around.... THIS IS JUST FOR TESTING...
		float horizontalInput = Input.GetAxis("Horizontal"); // get horizontal key input
		float verticalInput = Input.GetAxis("Vertical"); // get vertical key input
		
		Vector3 inputVector = new Vector3(horizontalInput, 0f, verticalInput); // combine the inputs

		rBody.velocity = inputVector * moveSpeed; // set the velocity

        Debug.Log("BallSize = " + ballSize);
		
	}
	*/

	
	void OnCollisionEnter(Collision coll)
	{
		GameObject otherObject = coll.gameObject; // the gameobject of the thing we collided with


        // check to see if the other object is collectible;
        if (otherObject.CompareTag("Item"))
        {
            float masss = coll.gameObject.GetComponent<SizeKG>().mass;
            // check the size here... later
            if (masss <= ballSize)
            {
                // collect the object!
                otherObject.transform.parent = transform; // set the objects parent to this transform
                ballSize += masss;
                otherObject.tag = "PickedUpItem";
                if (ballSize > startBallSize)
                {
                    transform.localScale += scalingVar * Vector3.one;
                }
            }
        }
	}
	
}
