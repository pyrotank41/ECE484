docker run -it -v "$(pwd)"/mp-release-22fa:/my_ws \
               --net=host \
              --env="DISPLAY" \
              --env="QT_X11_NO_MITSHM=1" \
              --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
              --name ece484 \
              ece484_img bash