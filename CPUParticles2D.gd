extends CPUParticles2D

var mod: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_texture_button_pressed():
	if mod:
		modulate.a8 = 0
		mod = false
	else:
		modulate.a8 = 255
		mod = true
