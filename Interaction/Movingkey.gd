extends Area2D




func _on_body_entered(_body):
	Game.key += 1
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogues/Interactions/keyPickup.dialogue"), "start")
	queue_free()
