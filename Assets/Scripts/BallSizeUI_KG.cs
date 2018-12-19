using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// Usage: Put this on the ball
// Intent: Displays the current ball size in M and CM in upper left UI

public class BallSizeUI_KG : MonoBehaviour 
{
    // Variables:
    public Text ballsizetext;

    private PickUpStuff_ML pickUp;

	void Start()
	{
      pickUp = GetComponent <PickUpStuff_ML>();
	}

	void Update()
	{
        // pickUp.ballSize /= .5f;  Needs to be fixed to make it a more realistic ball size (NEW FORMULA PLEASE)
        ballsizetext.text = "Ballsize: " + pickUp.ballSize.ToString("F2") + "cm";
	}

}
