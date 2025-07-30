extends CharacterBody3D

@export var speed := 8.0

func _ready() -> void:
	pass
	
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("accelerate"):
		velocity.z += speed
	move_and_slide()
