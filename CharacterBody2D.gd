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
	
	var w = $CollisionShape2D.shape.size.x / 2
	var h = $CollisionShape2D.shape.size.y / 2
	var vw = get_viewport_rect().size.x - w
	var vh = get_viewport_rect().size.y - h
	position.x = clamp(position.x, w, vw)
	position.y = clamp(position.y, h, vh)
