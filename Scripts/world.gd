extends Node3D

@onready var cam = $Camera3D
@onready var truck = $GarbageTruck

func _process(delta: float) -> void:
	cam.position.x = truck.position.x
	cam.position.z = truck.position.z
