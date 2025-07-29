extends CharacterBody2D


@export var SPEED = 1000.0
@export var JUMP_VELOCITY = -600.0
@export var ACCELERATION : float = -10.0

var onautojumpobject = false

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if onautojumpobject:
		if is_on_floor(): onautojumpobject = false
	elif direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 00, SPEED)

	move_and_slide()
