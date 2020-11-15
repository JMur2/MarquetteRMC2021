#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/catkin"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/mars/MarquetteRMC2021/ros_catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/mars/MarquetteRMC2021/ros_catkin_ws/install/lib/python3/dist-packages:/home/mars/MarquetteRMC2021/ros_catkin_ws/build/catkin/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/mars/MarquetteRMC2021/ros_catkin_ws/build/catkin" \
    "/usr/bin/python3" \
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/catkin/setup.py" \
    egg_info --egg-base /home/mars/MarquetteRMC2021/ros_catkin_ws/build/catkin \
    build --build-base "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/catkin" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/mars/MarquetteRMC2021/ros_catkin_ws/install" --install-scripts="/home/mars/MarquetteRMC2021/ros_catkin_ws/install/bin"
