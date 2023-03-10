extends Area2D

onready var body = get_parent().get_node("Player")
onready var sprite = get_parent().get_node("Player/Camera2D/CanvasLayer/Adaptations")


func _physics_process(_delta):
	if(overlaps_body(body)): 
		sprite.set_visible(true)
	else:
		sprite.set_visible(false)


func _ready():
	set_physics_process(true)

