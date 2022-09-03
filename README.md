# 3rdPersonBasicTemplate
Modified version of the default CharacterBody3D script provided in Godot 4, modified to include rotation and not just strafing.

# Features

Move forward and backward.
Move left and right with CharacterBody3d rotation.
Mouse, keyboard, & joypad controls for camera movement (just change input mappings)
Jump

# Usage

Create a CharacterBody3D node and attatch this player script.

Add a camera as a child (As a child of a SpringArm makes it even better).
Place the camera/SpringArm distance to however you prefer for your 3rd person view


# Notes
I've removed vertical motion from the camera since that would work better using a gimbaling node and not on the parent CharacterBody3D, I want this script to be self-contained, and fully functional using only a CharacterBody3D and a camera.
