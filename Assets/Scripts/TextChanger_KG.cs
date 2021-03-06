﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

// Usage: Put this on a Game Manager
// Intent: Makes the text change when player clicks

public class TextChanger_KG : MonoBehaviour 
{
    public int messageIndex = 0;
    public string[] messages;
    public bool toggleMessages = true;

   // public int fontsize;
    public Font font;

   // public float width;
   // public float height;

    public Text textbox;

	void Update () 
    {
        if (Input.GetMouseButtonUp(0))  // Left Mouse Click to move forward one message
            messageIndex++;
        if (Input.GetMouseButtonUp(1))  // Right Mouse Click to move backward one message
            messageIndex++;

        // Reload Scene if we get to the last message
        if (messageIndex > messages.GetUpperBound(0))
        {
            SceneManager.LoadScene("ThursdayPlaytestKG");
        }

        // Bounds checking
         messageIndex = Mathf.Clamp(messageIndex, messages.GetLowerBound(0), messages.GetUpperBound(0));


         // Text Box Fills
         textbox.text = messages[messageIndex];

	}

  /*  void OnGUI()
    {
        // This shows the Text on the UI
        if (toggleMessages)
            GUI.TextArea(new Rect(420, 250, width, height), messages[messageIndex], fontsize );
            GUI.skin.label.fontSize = fontsize;
    }

 */
}
