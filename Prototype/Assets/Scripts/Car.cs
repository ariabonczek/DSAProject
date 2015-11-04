using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Rigidbody))]
public class Car : MonoBehaviour 
{
    [SerializeField]
    private float speed = 10.0f;

    [SerializeField]
    private float rotationSpeed = 10.0f;

    [SerializeField]
    private Vector3 spawnPosition;

    private Rigidbody rigidbody;

	void Start () 
    {
        rigidbody = GetComponent<Rigidbody>();
        Respawn();
	}
	
	void FixedUpdate ()
    {
	    if(Input.GetKey(KeyCode.W))
        {
            rigidbody.AddForce(transform.forward * speed);
        }

        if(Input.GetKey(KeyCode.A))
        {
            transform.Rotate(Vector3.up, Time.deltaTime * -rotationSpeed);
        }

        if(Input.GetKey(KeyCode.D))
        {
            transform.Rotate(Vector3.up, Time.deltaTime * rotationSpeed);

        }
	}

    void OnTriggerEnter(Collider c)
    {
        if (c.tag == "Goal")
        {
            Respawn();
        }
        else if(c.tag == "Collectible")
        {
            CollectCrystal(c.GetComponent<Crystal>());
        }
    }

    void Respawn()
    {
        rigidbody.velocity = Vector3.zero;
        transform.forward = Vector3.forward;
        transform.position = spawnPosition;
    }

    void CollectCrystal(Crystal c)
    {
        transform.localScale *= 1.1f;
        speed -= 1.0f;
        Destroy(c.gameObject);
    }
}
