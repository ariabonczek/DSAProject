using UnityEngine;
using System.Collections;

public class Crystal : MonoBehaviour
{

	void Start () 
    {
	
	}
	
	void Update () 
    {
	
	}

    public void SetPosition(float x, float y)
    {
        transform.position = new Vector3(x, 1.0f, y);

    }
}
