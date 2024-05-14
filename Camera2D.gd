extends Camera2D

@onready var character = $"../Cubo"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var cubo_y = character.global_position.y
	var screen = get_viewport_rect()
	if character.global_position.y < global_position.y:
		global_position.y = cubo_y
		
