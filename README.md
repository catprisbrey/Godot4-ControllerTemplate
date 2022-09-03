# Godot 4 - Controller template
Modified version of the default CharacterBody3D script provided in Godot 4. includes body/camera rotation, and addtional control options.


![Controller Screenshot](https://github.com/pemguin005/Godot4-ControllerTemplate/blob/main/Example.GIF)

# Features

- Move forward and backward.
- Move left and right with CharacterBody3d rotation.
- Mouse, keyboard, & joypad camera movement
- Jump

# Usage

- Create a CharacterBody3D node and attach the NewCharacterBody3D.gd player script.
- Add a camera as a child (As a child of a SpringArm for 3rd person).
- Place the camera/SpringArm height and distance to preference

# Notes

- No vertical motion on camera movement.
That would work better using a gimbaling node and not on the parent CharacterBody3D, I want this script to be self-contained, and fully functional using only a CharacterBody3D and a camera.

- Currently uses built-in button mappings
This allows it to work immediately but should not be left for projects beyond prototypes
