#!/bin/bash

if env | grep -q ^GRASPIT=
then
    echo "Using GRASPIT=" $GRASPIT
else
    export GRASPIT=$(rospack find graspit)/graspit_source
fi

export GRASPIT_PLUGIN_DIR=$(dirname $(catkin_find libgraspit_scene_builder.so))

rosrun graspit graspit -p libgraspit_scene_builder,libros_graspit_moveit_interface -w graspit_start_scene
