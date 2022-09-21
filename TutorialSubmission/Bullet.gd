extends RigidBody2D

signal collected

var angular_speed = PI

func _process(delta):
	rotation += angular_speed * delta

func _on_Area2D_area_entered(area):
	if area.get_name() == ("Player"):
		emit_signal("collected")
		queue_free()
