extends Node2D

@export var speed: int = 100


func _physics_process(delta: float) -> void:
	### this code sets the starting position gor the bat 
	position.x -= speed * delta


func _on_stalactite_body_entered(_body: Node2D) -> void:
	### this code resets the the obsticels when you press play 
	get_tree().call_deferred("reload_current_scene")


func _on_stalagmite_body_entered(_body: Node2D) -> void:
	### this resets the starting screan
	get_tree().call_deferred("reload_current_scene")


func _on_score_body_entered(_body: Node2D) -> void:
	### this code acts adds to the countour for the score 
	Autoload.score += 1


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	### this makes the obsticles disappear of screen 
	queue_free()
