extends CharacterBody2D

var speed = 200

func _process(delta):
	var position_x = Input.get_axis("ui_left","ui_right")
	var position_y = Input.get_axis("ui_up","ui_down")
	var input := Vector2(position_x,position_y)
	position += input * speed * delta
	move_and_slide()
