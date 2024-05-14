extends StaticBody2D

@onready var notifier = $VisibleOnScreenNotifier2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#Este booleano si está False significa que se fue de la pantalla
	var estoyEnPantalla = notifier.is_on_screen()
