extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_body_entered(body):
	if body.is_in_group("Player") && Game.key == 3:
		Game.movementEnabled = false
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogues/Level_3/level_3_end.dialogue"), "start")
		await get_tree().create_timer(3).timeout
		Game.movementEnabled = true
		get_tree().change_scene_to_file("res://Menus/end_menu.tscn")
	
	if body.is_in_group("Player") && Game.key != 3:
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogues/Level_3/level_3_missingKeys.dialogue"), "start")
