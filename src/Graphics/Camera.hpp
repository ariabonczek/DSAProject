#ifndef CAMERA_HPP
#define CAMERA_HPP

#include "../Config.hpp"

NS_BEGIN

/// <summary>
/// Represents a single camera in a scene
/// </summary>
class Camera
{
public:
	Camera();

	/// <summary>
	/// Creates a camera at the origin looking forward down the Z axis
	/// </summary>
	void Initialize();

	/// <summary>
	/// Sets the projection matrix to a perspective projection
	/// </summary>
	void SetLens(float fovY, float aspect, float zNear, float zFar);

	/// <summary>
	/// Sets the projection matrix to an orthographic matrix
	/// </summary>
	void SetLensOrtho(float width, float height, float zNear, float zFar);

	/// <summary>
	/// Updates the view matrix from the forward, right, and up vectors
	/// </summary>
	void UpdateViewMatrix();

	/// <summary>
	/// Moves the camera forward on the given axis
	/// </summary>
	void Move(Vector3 move);

	/// <summary>
	/// Moves the camera forward on its own axis
	/// </summary>
	void MoveForward(float speed);

	/// <summary>
	/// Moves the camera right on its own axis
	/// </summary>
	void MoveRight(float speed);
	
	/// <summary>
	/// Sets the camera position
	/// </summary>
	void SetPosition(Vector3 position);
	
	/// <summary>
	/// Rotates the camera to look at a given target
	/// </summary>
	void LookAt(Vector3 target, Vector3 up = Vector3::Up);

	/// <summary>
	/// Rotates the camera on its own right axis
	/// </summary>
	void Pitch(float angle);

	/// <summary>
	/// Rotates the camera on its own up axis
	/// </summary>
	void Yaw(float angle);

	/// <summary>
	/// Rotates the camera on its own forward axis
	/// </summary>
	void Roll(float angle);

	/// <summary>
	/// Rotates the camera on the world up axis
	/// </summary>
	void RotateY(float angle);

	/// <summary>
	/// Returns the view matrix. Updates it if needed before returning
	/// </summary>
	Matrix GetView();

	/// <summary>
	/// Returns the projection matrix
	/// </summary>
	Matrix GetProjection()const;

	/// <summary>
	/// Returns the position
	/// </summary>
	Vector3 GetPosition()const;

	/// <summary>
	/// Returns whether or not the camera needs to be updated
	/// </summary>
	bool IsDirty()const;

private:
	Vector3 position;
	Vector3 right;
	Vector3 up;
	Vector3 forward;

	float nearZ, farZ;
	float aspectRatio;
	float fovX, fovY;
	float nearWidth, nearHeight, farWidth, farHeight;

	// When dirty, the camera has been moved and the view matrix will need to be recalculated before rendering
	bool dirty;

	Matrix view;
	Matrix projection;
};

NS_END

#endif