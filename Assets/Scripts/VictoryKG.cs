using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

// Usage: Put this on the game manager
// Intent: Reference the ball size and then determine if it exceeds the 
//         minimum size for victory

public class VictoryKG : MonoBehaviour

{

    // Variables:
    public float victorymass;


	// Images:
	// public GameObject victorySprite;


    private PickUpStuff_ML ballsizescript;

	void Start()
	{
        ballsizescript = GetComponent<PickUpStuff_ML>();
	}

	void Update () 
    {
        float ballSize = ballsizescript.ballSize;
        if(ballSize >= victorymass)
        {
            Victory();
        }
	}

    void Victory()
    {
        SceneManager.LoadScene("Win");
    }

}
