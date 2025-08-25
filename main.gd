extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CharacterBody2D/Camera2D/Panel.visible = false
	$CharacterBody2D/PointLight2D.visible = true
	get_tree().paused = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func win():
	$CharacterBody2D/Camera2D/Panel.visible = true
	$CharacterBody2D/PointLight2D.visible = false
	get_tree().paused = true
