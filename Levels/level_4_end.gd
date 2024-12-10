extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Game.pause_menu = $Player/pauseMenu
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogues/Level_4/level_4_bossDefeated.dialogue"), "start")
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogues/Level_4/level_4_end.dialogue"), "start")
	Game.movementEnabled = false;
	await get_tree().create_timer(5).timeout
	Game.movementEnabled = true;
	get_tree().change_scene_to_file("res://Menus/end_menu.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
