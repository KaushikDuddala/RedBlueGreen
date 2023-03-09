extends Area2D

onready var body = get_parent().get_parent().get_node("YSort/Player/Camera2D")
onready var player = get_parent().get_parent().get_node("YSort/Player")


func _physics_process(_delta):
	if(overlaps_body(player)): 
		set_physics_process(false)
		body.set_limit(0, -360)
		body.set_limit(1, -360)
		body.set_limit(2, 450)
		body.set_limit(3, -180)

func _ready():
	set_physics_process(true)

