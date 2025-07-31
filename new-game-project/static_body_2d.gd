extends StaticBody2D

@export var jumpheight = 2000
@export var jumpdistance = 200
@export var flipH = false

func _ready():
	$Sprite2D.flip_h = flipH
	
func _on_area_2d_body_entered(body: Node2D) -> void:
		if "player" in body.name:
			var jumpdirection =-1 if $Sprite2D.flip_h else 1
			
			body.velocity = Vector2(jumpdistance * jumpdirection, -jumpheight)
			body.onautojumpobject = true
