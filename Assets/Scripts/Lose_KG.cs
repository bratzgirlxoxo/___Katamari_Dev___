using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

// Usage: Put this on a Game Manager in the Play scene
// Intent: This will determine if the player has met the min size for victory and if not it will go to the lose scene

public class Lose_KG : MonoBehaviour 
{

    public float minSize; // the min required size to win

	public GameObject timer;

    private PickUpStuff_ML ballsizescript; // the script that determines the size of the ball

    public float maxTime; // max time allowed in the level

	void Start()
	{
        ballsizescript = GetComponent<PickUpStuff_ML>();
		timer.GetComponent<Timer>().time = maxTime;
	}

	void Update ()
	{
		float currentTime = Time.timeSinceLevelLoad;
        float ballsize = ballsizescript.ballSize; 
		if (ballsize <= minSize)
        {
            if (currentTime >= maxTime)
            {
                SceneManager.LoadScene("Lose");
            }
        }
	}
}
