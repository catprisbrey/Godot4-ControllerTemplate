# Godot 4 - Controller template
Modified version of the default CharacterBody3D script provided in Godot 4. includes body/camera rotation, and addtional control options.


![Controller Screenshot](https://github.com/pemguin005/Godot4-ControllerTemplate/blob/main/Example.GIF)

# Features

- Uses only standard UI key mappings
- Move forward and backward
- Rotate left and right
- Strafe movement left and right (by holding Tab key)
- Mouse, keyboard, & joypad camera movement
- Jump

# Usage

- Create a CharacterBody3D node
- Attach the NewCharacterBody3D.gd player script.
- Add a camera as a child (or as a child of a SpringArm for 3rd person camera).
- Place the camera/SpringArm height and distance to preference

# Notes

- No vertical motion on camera movement.
That would work better using a gimbaling node and not on the parent CharacterBody3D, This script is meant to be self-contained, and fully functional using only a CharacterBody3D and a camera.

- Currently uses only built-in button mappings
This allows it to work immediately, but should not be left for projects beyond prototypes
