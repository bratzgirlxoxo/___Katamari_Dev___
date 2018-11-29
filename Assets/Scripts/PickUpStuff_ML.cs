using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine;

// USAGE: put this script on the Ball that will be pushed around
// INTENT: this script controls the sticking of things to the ball
public class PickUpStuff_ML : MonoBehaviour
{

	public float ballSize;

	private Rigidbody rBody;

	private float checkCounter;

	private float checkFrequency;

    public float startBallSize;

    public Transform balltrans;

    public float scalingVar;

    private SizeKG sizescript;

   // public float moveSpeed;

    //public float mass;

	void Start()
	{
		rBody = GetComponent<Rigidbody>();
        //mass = GetComponent<SizeKG>().mass;
        sizescript = GetComponent<SizeKG>();
	}
	
	// Update is called once per frame
	void Update () {
		// move the ball around.... THIS IS JUST FOR TESTING...
		//float horizontalInput = Input.GetAxis("Horizontal"); // get horizontal key input
		//float verticalInput = Input.GetAxis("Vertical"); // get vertical key input
		
		//Vector3 inputVector = new Vector3(horizontalInput, 0f, verticalInput); // combine the inputs

		//rBody.velocity = inputVector * moveSpeed; // set the velocity

        Debug.Log("BallSize = " + ballSize);



		/*
		checkCounter += Time.deltaTime;

		if (checkCounter >= checkFrequency)
		{
			checkCounter = 0;

			for (int i = 0; i < transform.childCount; i++)
			{
				float t = 0f;
				while (Vector3.Distance(transform.GetChild(i).position, transform.position) > GetComponent<SphereCollider>().radius)
				{
					Vector3.Lerp(transform.GetChild(i).position, transform.position, t);
					t += 0.1f;
				}	
			}
		}
		*/
		
	}

	
	void OnCollisionEnter(Collision coll)
	{
		GameObject otherObject = coll.gameObject; // the gameobject of the thing we collided with


        // check to see if the other object is collectible;
        if (otherObject.CompareTag("Item"))
        {
            float mass = coll.gameObject.GetComponent<SizeKG>().mass;
            // check the size here... later
            if (mass <= ballSize)
            {
                // collect the object!
                otherObject.transform.parent = transform; // set the objects parent to this transform
              //  otherObject.GetComponent<SizeKG>().itemname 
                ballSize += mass;
                otherObject.tag = "PickedUpItem";
                if (ballSize > startBallSize)
                {
                    balltrans.localScale *= scalingVar;
                }
            }
        }
	}
	
	/*
	void OnTriggerEnter(Collider coll)
	{
		GameObject otherObject = coll.gameObject; // the gameobject of the thing we collided with

		// check to see if the other object is collectible;
		if (otherObject.CompareTag("Item"))
		{
			// check the size here... later
			
			
			// collect the object!
			otherObject.transform.parent = transform; // set the objects parent to this transform
		}
	}
	*/
}
