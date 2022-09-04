#!/usr/bin/env bash

# Builds the Godot game engine. The output executable is in the godot/bin directory.

cd godot
git checkout master
git pull
scons -j4 platform=linuxbsd target=release_debug
