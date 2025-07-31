extends "res://Scripts/car_base.gd"

@onready var front_right_wheel = $"garbage-truck/wheel-front-right"
@onready var front_left_wheel = $"garbage-truck/wheel-front-left"

func get_input():
	var turn = Input.get_action_strength("steer_left")
	turn -= Input.get_action_strength("steer_right")
	steer_angle = turn * deg_to_rad(steering_limit)
	front_right_wheel.rotation.y = steer_angle * 2.0
	front_left_wheel.rotation.y = steer_angle * 2.0
	
	acceleration = Vector3.ZERO
	if Input.is_action_pressed("accelerate"):
		acceleration = -transform.basis.z * engine_power
	if Input.is_action_pressed("brake"):
		acceleration = -transform.basis.z * braking
