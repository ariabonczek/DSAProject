using UnityEngine;
using System.Collections;

public enum SplitSection
{
    Left,
    Right,
    Top,
    Bottom
}

[RequireComponent(typeof(Camera))]
public class SingleCameraFollow : MonoBehaviour 
{
    [SerializeField]
    private Transform target;

    [SerializeField]
    private float distance = 10.0f;

    [SerializeField]
    private float height = 5.0f;

    private Camera camera;

	void Start () 
    {
        camera = GetComponent<Camera>();
	}
	
	void Update () 
    {
        // Return if no target
        if (!target)
            return;

        float desiredAngle = target.eulerAngles.y;
        float desiredHeight = target.position.y + height;

        float currentAngle = transform.eulerAngles.y;
        float currentHeight = transform.position.y;

        currentAngle = Mathf.LerpAngle(currentAngle, desiredAngle, Time.deltaTime);
        currentHeight = Mathf.Lerp(currentHeight, desiredHeight, Time.deltaTime);

        transform.rotation = Quaternion.Euler(0, currentAngle, 0);
        transform.position = target.position - (transform.rotation * Vector3.forward * distance);
        transform.position = new Vector3(transform.position.x, currentHeight, transform.position.z);
        transform.LookAt(target);
	}
}
