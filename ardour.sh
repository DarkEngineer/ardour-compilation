#!/bin/bash
sudo apt install -y
	libjack-jackd2-dev \
	libglibmm-2.4-dev \
	libsndfile1-dev \
	libcurl4-nss-dev \
	libarchive-dev \
	liblo-dev \
	librubberband-dev \
	libfftw3-dev \
	libxml2-dev \
	liblrdf0-dev \
	libsamplerate0-dev \
	libsoundtouch-dev \
	libsuil-dev \
	libcppunit-dev \
	libusb-1.0-0-dev \
	libwebsockets-dev \
	curl \
	libsoundtouch-dev \
	libsuil-dev \
	libcppunit-dev \
	libwebsockets-dev \
 	chrpath
sudo apt-get install -y libboost-all-dev \
	libsdl2-dev \
	libtag1-dev \
	vamp-plugin-sdk \
	lv2-dev \
	libserd-dev \
	libsord-dev \
	libsratom-dev \
	liblilv-dev \
	libgtkmm-2.4-dev \
	libsndfile-dev \
	libcurl4-gnutls-dev \
	libarchive-dev \
	liblo-dev \
	librubberband-dev \
	libusb-1.0-0-dev \
	libxml2-dev

git clone https://git.aubio.org/aubio/aubio
cd aubio
make
sudo ./waf install
cd ..
git clone https://github.com/Ardour/ardour.git
cd ardour
git checkout 8.6
./waf configure
./waf
cd tools/linux_packaging
./build --public --strip some
./package --public --singlearch
