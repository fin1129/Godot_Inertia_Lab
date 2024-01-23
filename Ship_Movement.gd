extends Sprite2D

var acceleration: float = 50
#var max_speed: float = 500
var isfollowing: bool = false
var turn_speed: float = 8.0

var velocity = Vector2.ZERO

func _process(delta):
	var mouse_position = get_global_mouse_position()

	if isfollowing:
		var direction = (mouse_position - global_position).normalized()

		# Smoothly rotate to face the mouse position
		rotation = lerp_angle(rotation, direction.angle(), turn_speed * delta)

	# Accelerate the object forward
		velocity += direction * acceleration * delta

	# Limit the speed to the maximum speed
	#velocity = velocity.normalized() * min(velocity.length(), max_speed)

	# Move the object
	global_position += velocity * delta

func _input(event):
	if event is InputEventKey:
		if event.is_action_pressed("ui_space"):
			isfollowing = true
			$Fire.show()
		elif event.is_action_released("ui_space"):
			isfollowing = false
			$Fire.hide()
