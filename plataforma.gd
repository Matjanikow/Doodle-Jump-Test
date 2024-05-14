extends StaticBody2D

@export var camera:Camera2D

func _on_visible_on_screen_notifier_2d_screen_exited():
	var inicioY = camera.global_position.y - (camera.get_viewport_rect().size.y /2)
	position.y = inicioY
