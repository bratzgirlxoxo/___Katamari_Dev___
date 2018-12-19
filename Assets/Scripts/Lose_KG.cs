using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

// Usage: Put this on a Game Manager in the Play scene
// Intent: This will determine if the player has met the min size for victory and if not it will go to the lose scene

public class Lose_KG : MonoBehaviour 
{

    public float minSize;

    private PickUpStuff_ML ballsizescript;
    public Timer timerscript;

    public float maxTime;



	void Start()
	{
        ballsizescript = GetComponent<PickUpStuff_ML>();
        //timerscript = GetComponent <Timer>();
	}



	void Update () 
    {
        float currentTime = timerscript.time;
        float ballsize = ballsizescript.ballSize; 
		if (ballsize <= minSize)
        {
            if (currentTime >= maxTime)
            {
                SceneManager.LoadScene("Lose");
            }
        }
        else 
        {
            SceneManager.LoadScene("Win");
        }
	}
}
