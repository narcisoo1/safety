FROM python

LABEL mantainer="Narciso Rodrigues <narciso.sousa@aliger.io>"

COPY . /app

ENV OPENCV_VERSION="4.5.1"

RUN apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends \
        build-essential \
        cmake \
        git \
        wget \
        unzip \
        yasm \
        pkg-config \
        libswscale-dev \
        libtbb2 \
        libtbb-dev \
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libopenjp2-7-dev \
        libavformat-dev \
        libpq-dev \
        libx11-dev \
        libatlas-base-dev\
        libgtk-3-dev \
        libboost-python-dev
RUN pip install numpy
RUN pip install opencv-python
#RUN wget -q https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.zip -O opencv.zip
RUN pip install dlib==19.9.0
RUN pip install matplotlib
RUN pip install imutils
RUN pip install playsound
RUN pip install scipy
RUN pip install pandas

WORKDIR /app