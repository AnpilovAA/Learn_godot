extends Sprite2D

var speed = 400
var angular_speed = PI

func _ready() -> void:
	var time = get_node("Timer")
	time.timeout.connect(_on_timer_timeout)

func _process(delta: float) -> void:
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta


func _on_button_toggled(toggled_on: bool) -> void:
	set_process(not is_processing())

func _on_button_pressed() -> void:
	set_process(not is_processing())

	
func _on_timer_timeout():
	visible = not visible
