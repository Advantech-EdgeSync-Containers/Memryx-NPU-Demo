xhost +local:root
docker run -t -i --rm\
    --privileged=true\
    --network="host"\
    -e DISPLAY=$DISPLAY\
    -v /tmp/.X11-unix:/tmp/.X11-unix\
    --name test memryx:demo \
    bash -c "cd /home/PPE/build && ./yolov8_ppe -c ../configs/YOLOv8n_PPE_usbcam.txt"