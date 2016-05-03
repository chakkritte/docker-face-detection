FROM ubuntu:14.04.3

MAINTAINER Chakkrit Termritthikun <chakkritte57@nu.ac.th>

RUN \
    apt-get -q -y update && \
    apt-get -q -y install wget unzip build-essential libgtk2.0-dev libjpeg-dev libtiff4-dev libjasper-dev && \
    apt-get -q -y install libopenexr-dev cmake python-dev python-numpy python-tk libtbb-dev libeigen3-dev && \
    apt-get -q -y yasm libfaac-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev libqt4-dev libqt4-opengl-dev sphinx-common texlive-latex-extra libv4l-dev libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev default-jdk ant libvtk5-qt4-dev
#    apt-get upgrade -q -y && \
#    rm -rf /var/lib/apt/lists/*
    
    
#RUN \ 
#    cd ~  && \
#    wget https://github.com/Itseez/opencv/archive/2.4.12.3.zip && \
#    unzip 2.4.12.3.zip && \ 
#    cd 2.4.12.3 && \
#    mkdir build && \
#    cd build && \
#    cmake -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D WITH_VTK=ON .. && \
#    make && \
#    sudo make install

CMD ["/bin/bash"]
