﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// Usage: Put this on the game manager
// Intent: Reference the ball size and then determine if it exceeds the 
//         minimum size for victory

public class VictoryKG : MonoBehaviour

{

    // Variables:
    public float victorymass;
    public float ballSize;

    // Images:
    public GameObject victorySprite;

	void Update () 
    {
        if(ballSize >= victorymass)
        {
            Victory();
        }
	}

    void Victory()
    {
        Time.timeScale = 0;
        victorySprite.SetActive(true);
    }

}