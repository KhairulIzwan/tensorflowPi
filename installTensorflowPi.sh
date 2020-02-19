#!/bin/bash
# Install Tensorflow for Python 2.7 on Raspbian Buster
# Information from:
# https://www.pyimagesearch.com/2017/12/18/keras-deep-learning-raspberry-pi/
# with minor changes

# Let's start installing!

echo "Install TensorFlow for Python 2.7"
wget https://github.com/samjabrahams/tensorflow-on-raspberry-pi/releases/download/v1.1.0/tensorflow-1.1.0-cp27-none-linux_armv7l.whl
sudo pip install tensorflow-1.1.0-cp27-none-linux_armv7l.whl

echo "Install HDF5 and h5py. These libraries will allow us to load our pre-trained model from disk"
sudo apt-get install libhdf5-serial-dev
sudo pip install h5py

echo "Install Keras and the other prerequisites"
sudo pip install pillow imutils
sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose
sudo pip install keras==2.1.5

echo "Installation complete!"
