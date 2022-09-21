extends Node

var bullets = 5

func _on_Bullet_collected():
	bullets = bullets - 1
	$Bang.play()
	if bullets == 0:
		get_tree().quit()
