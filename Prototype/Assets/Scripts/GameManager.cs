using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GameManager : MonoBehaviour 
{
    [SerializeField]
    private uint NUMBER_OF_CRYSTALS = 10;

    [SerializeField]
    private Vector2 BOUNDS_MIN = Vector2.zero;

    [SerializeField]
    private Vector2 BOUNDS_MAX = Vector2.zero;

    [SerializeField]
    private GameObject crystalPrefab;

    private List<Crystal> crystals;
    
    void Start ()
    {
        
        for (uint i = 0; i < NUMBER_OF_CRYSTALS; ++i)
        {
            GameObject c = crystalPrefab;
            GameObject c2 = Instantiate(c);
            
            c2.transform.parent = this.transform;
            c2.GetComponent<Crystal>().SetPosition(Random.value * 2 * BOUNDS_MAX.x - BOUNDS_MAX.x, Random.value * 2 * BOUNDS_MAX.y - BOUNDS_MAX.y);
        }
	}
	
	// Update is called once per frame
	void Update () 
    {
	
	}
}
