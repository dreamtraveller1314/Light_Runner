extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -600.0
	
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("default")
	elif Input.is_action_pressed("ui_right"):
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("default")
	else:
		$AnimatedSprite2D.animation = ("new_animation")

	move_and_slide()
	
func reset_position():
	position = Vector2(0,0)
	pass
