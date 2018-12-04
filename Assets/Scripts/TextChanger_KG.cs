using System.Collections;
using System.Collections.Generic;
using UnityEngine;
//using UnityEngine.UI;
using UnityEngine.SceneManagement;

// Usage: Put this on a Game Manager
// Intent: Makes the text change when player clicks

public class TextChanger_KG : MonoBehaviour 
{
    public string[] messages;
    public int messageIndex = 0; 
    public bool toggleMessages = true;
	

	void Update () 
    {
        if (Input.GetMouseButtonUp(0))  // Left Mouse Click to move forward one message
            messageIndex++;
        if (Input.GetMouseButtonUp(1))  // Right Mouse Click to move backward one message
            messageIndex++;

        // Reload Scene if we get to the last message
        if (messageIndex > messages.GetUpperBound(0))
        {
            SceneManager.LoadScene("Level Prototype");
        }

        // Bounds checking
         messageIndex = Mathf.Clamp(messageIndex, messages.GetLowerBound(0), messages.GetUpperBound(0)); 
            

	}

    void OnGUI()
    {
        // This shows the Text on the UI
        if (toggleMessages)
            GUI.TextArea(new Rect(420, 250, 100, 100), messages[messageIndex]);
    }
}
