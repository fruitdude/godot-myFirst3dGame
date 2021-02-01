extends KinematicBody

const SPEED = 11
const FLOOR_NORMAL = Vector3.UP
const SPINNING_MESH = 9


var velocity = Vector3(0, 0, 0)


onready var playerMesh = get_node("MeshInstance")


func _ready() -> void:
	return


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("move_left") and Input.is_action_pressed("move_right"):
		velocity.x = 0
	elif Input.is_action_pressed("move_left"):
		velocity.x = -SPEED
		playerMesh.rotate_z(deg2rad(SPINNING_MESH))
	elif Input.is_action_pressed("move_right"):
		velocity.x = +SPEED
		playerMesh.rotate_z(deg2rad(-SPINNING_MESH))
	else:
		velocity.x = lerp(velocity.x, 0, 0.1)
		#lerp function
		#from the value i want to go - to the value want to go - in wich incriments
		#in this case my current velocity to the velocity 0 so my character stops
		#in incriments of 0.1 or else "10%"
		
	if Input.is_action_pressed("move_forward") and Input.is_action_pressed("move_backward"):
		velocity.z = 0
	elif Input.is_action_pressed("move_forward"):
		velocity.z = -SPEED
		playerMesh.rotate_x(deg2rad(-SPINNING_MESH))
	elif Input.is_action_pressed("move_backward"):
		velocity.z = +SPEED
		playerMesh.rotate_x(deg2rad(SPINNING_MESH))
	else:
		velocity.z = lerp(velocity.z, 0, 0.1)
	
	
	move_and_slide(velocity, FLOOR_NORMAL)