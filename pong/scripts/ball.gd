extends CharacterBody2D


var collision_data

func _ready():
    velocity = Vector2(300,0)

func _physics_process(delta):
    collision_data = move_and_collide(velocity * delta)
    if collision_data:
        velocity.y += randf_range(-20, 20) #rand_range(-20, 20) for Godot 3
        velocity = velocity.bounce(collision_data.get_normal())