extends Area2D
var angular_speed = PI

signal collected

func _process(delta):
	rotation += angular_speed * delta



func _on_Collectible_body_entered(body):
	if body.get_name() == "Player":
		$ItemGet.play()
		emit_signal("collected")
		$Collectible.hide()
