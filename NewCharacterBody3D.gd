extends CharacterBody3D

const SPEED = 5.0
const JUMP_VELOCITY = 4.5
const MOVE_SENSITIVITY = 0.3

# Get the gravity from the project settings to be synced with RigidDynamicBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg_to_rad(-event.relative.x * MOVE_SENSITIVITY))

func _joystick_input(): 
	var joyview = Vector2()
	if (Input.is_action_pressed("ui_left") ||  Input.is_action_pressed("ui_right")):
		joyview.x = Input.get_action_strength("ui_left") - Input.get_action_strength("ui_right")
		rotate_y(deg_to_rad(joyview.x * MOVE_SENSITIVITY * 10))
		
func _process(_delta):
	return
	
func _physics_process(delta):
	_joystick_input()
	
	# Add the gravity.
	if not is_on_floor():
			velocity.y -= gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction = (transform.basis * Vector3(0, 0, input_dir.y)).normalized()

	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	# Local movement
	move_and_slide()
