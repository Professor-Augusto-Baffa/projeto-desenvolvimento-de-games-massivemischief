using Godot;
using System;

public partial class camera : Camera2D
{
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
		
		Vector2 offset = Offset;
		if(Input.IsActionPressed("input_move_camera"))
		{
			if(offset.Y >=-1080){	
				offset.Y -= 30.0f;
			}
		}else
		{
			offset.Y = Mathf.MoveToward(offset.Y, 0, 30.0f);
		}
		
		Offset = offset;
	}
}
