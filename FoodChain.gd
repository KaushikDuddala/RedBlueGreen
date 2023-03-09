extends Area2D

onready var body = get_parent().get_node("YSort/Player")
onready var button = get_node("Sprite")

func _physics_process(delta):
	if(overlaps_body(body)): 
		set_physics_process(false)
		button.set_visible(false)
		
func _ready():
	set_physics_process(true)
	button.set_visible(true)
	


