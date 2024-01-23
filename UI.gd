extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func pressed1():
	$Controls1.hide()
	$Controls1/TextureButton.hide()
	$NewtonsFirstLaw2.show()
	$NewtonsFirstLaw2/TextureButton.show()

func pressed2():
	$NewtonsFirstLaw2.hide()
	$NewtonsFirstLaw2/TextureButton.hide()
	$Inertia3.show()
	$Inertia3/TextureButton.show()

func pressed3():
	$Inertia3.hide()
	$Inertia3/TextureButton.hide()
	$Forever4.show()
	$Forever4/TextureButton.show()

func pressed4():
	$Forever4.hide()
	$Forever4/TextureButton.hide()
	$Stop5.show()
	$Stop5/TextureButton.show()

func pressed5():
	$Stop5.hide()
	$Stop5/TextureButton.hide()
	$Lab6.show()
	$Lab6/TextureButton.show()

func pressed6():
	$Lab6.hide()
	$Lab6/TextureButton.hide()
	$End7.show()
	$End7/TextureButton.show()

func pressed7():
	$End7.hide()
	$End7/TextureButton.hide()
