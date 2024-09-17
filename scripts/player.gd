extends CharacterBody3D

@export var speed = 4
@export var fall_acceleration = 9.81
@export var turn_speed = 5.0 # Speed of rotation interpolation
@export var blend_speed = 5.0 # Speed of blending animation

@onready var a_tree = $Pivot/Walking/AnimationTree

var target_velocity = Vector3.ZERO
var current_blend_position = 0.0

func _physics_process(delta):
	var direction = Vector3.ZERO

	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_back"):
		direction.z += 1
	if Input.is_action_pressed("move_forward"):
		direction.z -= 1
	
	if direction != Vector3.ZERO:
		direction = direction.normalized()
		var target_rotation = Basis().looking_at(direction, Vector3.UP)
		$Pivot.basis = $Pivot.basis.slerp(target_rotation, turn_speed * delta)
	
	target_velocity.x = direction.x * speed
	target_velocity.z = direction.z * speed

	if not is_on_floor():
		target_velocity.y -= fall_acceleration * delta

	velocity = target_velocity
	move_and_slide()

	# Calculate the new blend position based on the direction
	var new_blend_position = direction.length()
	
	# Smoothly interpolate between the current and target blend positions
	current_blend_position = lerp(current_blend_position, new_blend_position, blend_speed * delta)
	
	# Set the blend position in the AnimationTree
	a_tree.set("parameters/BlendSpace1D/blend_position", current_blend_position)
