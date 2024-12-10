extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Game.current_level = "res://Levels/level_3.tscn"
	Game.pause_menu = $Player/Player/pauseMenu
	Game.playerHP = 10
	Game.Gold = 0
	Game.collectables = 0
	Game.key = 0
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogues/Level_3/level_3_start.dialogue"), "start")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

# main music stop
func _physics_process(_delta):
	BGsound.stop()


func _on_area_2d_area_entered(area):
	if area.is_in_group("DoorOpening1"):
		$MovablePlatforms/Platform1/AnimationPlayer.play("up_down")
