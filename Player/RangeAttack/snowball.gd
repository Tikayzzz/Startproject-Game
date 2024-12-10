extends Area2D
var level = 1
var hp = 1
var speed = 100
var damage = 1
var knock_amout = 100
var attack_size = 1.0
var target = Vector2.ZERO
var angle = Vector2.ZERO
var velocity = Vector2()
var direction = 1
@onready var player = get_tree().get_first_node_in_group("player")
@onready var animated_sprite_2d = $AnimatedSprite2D

func _ready():
	velocity.x = 200
	velocity.x *= direction
	animated_sprite_2d.scale.x = -direction
	#angle = global_position.angle()
	#rotation = angle.angle() + deg_to_rad(180)
	match level:
		1:
			hp = 1
			speed = 100
			damage = 1
			knock_amout = 100
			attack_size = 1.0
			
func _physics_process(delta):
	velocity.y += (gravity) * delta / 100
	position += velocity * delta
	#rotation = velocity.angle()
	#rotation = angle.angle() + deg_to_rad(180)
	#position = delta*speed
	#position += p
func enemy_hit(charge = 1):
	hp -= charge
	if hp < 0:
		queue_free()
func _on_Snowball_body_entered(body):
	if "snowy" in body.name:
		body.death()
	elif "Frost_Golem" in body.name:
		body.receiveDamage(damage)
	elif "Elkman" in body.name:
		body.receiveDamage(damage)
	elif "Northern" in body.name:
		body.receiveDamage(damage)
		print(damage)
	elif "Spiked Slime" in body.name:
		body.receiveDamage(damage)
	queue_free()
	print(body.name)

func _on_timer_timeout():
	queue_free()
