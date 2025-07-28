extends CollisionShape2D

var lives = 3  # Example: Player has 3 lives

func _physics_process(_delta):
	# Example movement code (adjust as needed)
	var speed = 200
	@warning_ignore("shadowed_variable_base_class")
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	velocity = velocity.normalized() * speed
	
