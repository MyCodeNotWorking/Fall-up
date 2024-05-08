extends CharacterBody2D

const speed : float = 600

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		position.x += speed*delta
	if Input.is_action_pressed("ui_left"):
		position.x -= speed*delta
	if Input.is_action_pressed("ui_up"):
		position.y -= speed*delta
	if Input.is_action_pressed("ui_down"):
		position.y += speed*delta
	
	var p_width = $CollisionShape2D.size.x
	var p_height = $CollisionShape2D.size.y
	position.x = clamp(position.x, p_width, get_viewport_rect().size.x)
