function NewEncounter(_enemies, _bg)
{
	instance_create_depth
	(
	camera_get_view_x(view_camera [0]),
	camera_get_view_y(view_camera [0]),
	-9999,
	oBattle,
	{enemies: _enemies, creator: id, battleBackground: _bg}
	);
}