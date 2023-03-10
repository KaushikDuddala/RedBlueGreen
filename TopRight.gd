extends Area2D

onready var body = get_parent().get_node("Player")
onready var sprite = get_parent().get_node("Player/Camera2D/CanvasLayer/Facts")
onready var slide1 = preload("res://Files/niche descrip.png")
onready var slide2 = preload("res://Files/facts.png")
var currentlSlide = 0


func _physics_process(_delta):
	if(overlaps_body(body)): 
		sprite.set_visible(true)
		if(Input.is_action_just_pressed("key_tab")):
			if(currentlSlide == 0):
				currentlSlide = 1
				sprite.set_texture(slide2)
			elif(currentlSlide == 1):
				currentlSlide = 0
				sprite.set_texture(slide1)
	else:
		sprite.set_visible(false)


func _ready():
	set_physics_process(true)

