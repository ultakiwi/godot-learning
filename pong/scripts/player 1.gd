extends CharacterBody2D


func _physics_process(delta):
	if Input.is_key_pressed(KEY_W):
		position.y -= 5
	if Input.is_key_pressed(KEY_S):
		position.y += 5
