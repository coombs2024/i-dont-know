extends AudioStreamPlayer2D
@onready var timer: Timer = $Timer

func on_ready():
	$Timer.start()
	

func _on_timer_timeout() -> void:
	$AudioStreamPlayer.play($Timer)
