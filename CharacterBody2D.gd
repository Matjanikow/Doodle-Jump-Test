extends CharacterBody2D

const SPEED = 450.0
const JUMP_VELOCITY = -700.0
@onready var notifier = $VisibleOnScreenNotifier2D
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		#Saltamos
		velocity.y = JUMP_VELOCITY
		
	var maxRect = get_viewport_rect().size.x
	if position.x < 0:
		position.x = maxRect -10
	elif position.x > maxRect: 
		position.x = 10
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
