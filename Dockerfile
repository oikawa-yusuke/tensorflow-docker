FROM tensorflow/tensorflow:1.12.0-py3

RUN apt update
RUN apt install -y bzip2 wget git imagemagick
RUN pip install --upgrade pip
RUN pip install keras==2.1.5
RUN git clone https://github.com/qqwweee/keras-yolo3.git
WORKDIR /keras-yolo3
RUN wget -q https://pjreddie.com/media/files/yolov3.weights
# RUN python convert.py yolov3.cfg yolov3.weights model_data/yolo.h5