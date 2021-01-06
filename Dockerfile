#Download base image ubuntu 18.04
FROM ubuntu:18.04

# LABEL about the custom image
LABEL maintainer="BBrown@BeaconEmbedded.com"
LABEL vendor1="Beacon EmbeddedWorks"
LABEL version="0.1"
LABEL com.example.release-date="2021-01-08"
LABEL description="This is custom Docker Image for \
Beacon EmbeddedWorks i.MX 8M Mini/Nano Linux Yocto \
Build."

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository and Install Packages needed to build 
RUN apt-get update && apt-get install -y \
	adwaita-icon-theme \
	apt-utils \
	asciidoc \
	aspell \
	aspell-en \
	at-spi2-core \
	autoconf \
	automake \
	bash \
	bsdmainutils \
	build-essential \
	busybox-initramfs \
	chrpath \
	console-setup \
	console-setup-linux \ 
	coreutils \
	cpio \
	cron \
	curl \
	cvs \
	dconf-gsettings-backend \
	dconf-service \
	debconf-i18n \
	desktop-file-utils \
	dictionaries-common \
	diffstat \
	dmsetup \
	docbook-utils \
	eject \
	emacsen-common \
	enchant \
	g++ \
	gawk \
	gcc \
	gcc-multilib \
	gedit \
	gedit-common \
	gir1.2-atk-1.0 \
	gir1.2-freedesktop \
	gir1.2-gdkpixbuf-2.0 \
	gir1.2-glib-2.0 \
	gir1.2-gtk-3.0 \
	gir1.2-gtksource-3.0 \
	gir1.2-pango-1.0 \
	gir1.2-peas-1.0 \
	git \
	glib-networking \
	glib-networking-common \
	glib-networking-services \
	groff \
	gsettings-desktop-schemas \
	gstreamer1.0-gl \
	gstreamer1.0-plugins-base \
	gstreamer1.0-plugins-good \
	gstreamer1.0-pulseaudio \
	gstreamer1.0-x \
	gtk-update-icon-cache \
	help2man \ 
	humanity-icon-theme \
	hunspell-en-us \
	init \
	initramfs-tools \
	initramfs-tools-bin \
	initramfs-tools-core \
	iproute2 \
	iputils-ping \
	isc-dhcp-client \
	isc-dhcp-common \
	kbd \
	keyboard-configuration \
	klibc-utils \
	kmod \
	libaa1 \
	libargon2-0 \
	libaspell15 \
	libatk-bridge2.0-0 \
	libatk1.0-0 \
	libatk1.0-data \
	libatm1 \
	libatspi2.0-0 \
	libavc1394-0 \
	libcairo-gobject2 \
	libcap2 \
	libcap2-bin \
	libcdparanoia0 \
	libcolord2 \
	libcroco3 \
	libcryptsetup12 \
	libdconf1 \
	libdevmapper1.02.1 \
	libdns-export1100 \
	libdv4 \
	libenchant1c2a \
	libepoxy0 \
	libestr0 \
	libfastjson4 \
	libfribidi0 \
	libgdk-pixbuf2.0-0 \
	libgdk-pixbuf2.0-bin \
	libgdk-pixbuf2.0-common \
	libgirepository-1.0-1 \
	libgl1-mesa-dev \
	libglu1-mesa-dev \
	libgraphene-1.0-0 \
	libgspell-1-1 \
	libgspell-1-common \
	libgstreamer-gl1.0-0 \
	libgstreamer-plugins-base1.0-0 \
	libgstreamer-plugins-good1.0-0 \
	libgstreamer1.0-0 \
	libgtk-3-0 \
	libgtk-3-bin \
	libgtk-3-common \
	libgtksourceview-3.0-1 \
	libgtksourceview-3.0-common \
	libgudev-1.0-0 \
	libhunspell-1.6-0 \
	libhyphen0 \
	libiec61883-0 \
	libip4tc0 \
	libisc-export169 \
	libjack-jackd2-0 \
	libjavascriptcoregtk-4.0-18 \
	libjson-c3 \
	libjson-glib-1.0-0 \
	libjson-glib-1.0-common \
	libklibc \
	libkmod2 \
	libllvm6.0 \
	libmnl0 \
	libmp3lame0 \
	libmpg123-0 \
	libnewt0.52 \
	libnotify4 \
	libnss-systemd \
	libopus0 \
	liborc-0.4-0 \
	libpam-cap \
	libpam-systemd \
	libpangoxft-1.0-0  \
	libpeas-1.0-0 \
	libpeas-common \
	libpipeline1 \
	libpopt0 \
	libproxy1v5 \
	libraw1394-11 \
	librest-0.7-0 \
	librsvg2-2 \
	librsvg2-common \
	libsamplerate0 \
	libsdl1.2-dev \
	libsecret-1-0 \
	libsecret-common \
	libshout3 \
	libsoup-gnome2.4-1 \
	libsoup2.4-1 \
	libspeex1 \
	libtag1v5 \
	libtag1v5-vanilla \
	libtext-charwidth-perl \
	libtext-wrapi18n-perl \
	libtheora0 \
	libtwolame0 \
	libv4l-0 \
	libv4lconvert0 \
	libvisual-0.4-0 \
	libvpx5 \
	libwavpack1 \
	libwayland-cursor0 \
	libwayland-egl1-mesa \
	libwebkit2gtk-4.0-37 \
	libwebp6 \
	libwebpdemux2 \
	libxkbcommon0 \
	libxkbfile1 \
	libxtables12 \
	libyelp0 \
	linux-base \
	locales \
	logrotate \
	lzop \
	make \
	man-db \
	mercurial \
	netcat-openbsd \
	netplan.io \
	networkd-dispatcher \
	notification-daemon \
	nplan \
	nplan python3-cairo \
	python-pysqlite2 \
	python3-dbus \
	python3-gi \
	python3-gi-cairo \
	python3-yaml \
	repo \
	rsyslog \
	rsyslog systemd \
	sed \
	socat \
	subversion \
	sudo \
	systemd-sysv \
	texi2html \
	texinfo \
	u-boot-tools \
	ubuntu-advantage-tools \
	ubuntu-minimal \
	ubuntu-mono \
	udev \
	unzip \
	vim-tiny \
	vim-tiny whiptail \
	wget \
	whiptail \
	x11-apps \
	xkb-data \
	xterm \
	yelp \
	yelp-xsl \
	zenity \
	zenity-common \
 && rm -rf /var/lib/apt/lists/*


# Create Beacon User
RUN useradd beacon -m -d /home/beacon -s /bin/bash  
RUN usermod -aG sudo beacon
RUN su beacon


# To create the docker image do the following:
# 1. Create a folder imx8mmn-image 
# 2. Copy this Docker file to the newly created folder.
# 3. Change directory into the imx8mmn-image folder
# 4. Execute the following command:
#    docker build -t imx8mmn-image .
#
# Create a container
# docker run --name imx8mmn-image -i -t imx8mmn-image:latest /bin/bash
# 
# Start the newly created container
# docker start imx8mmn-image
#
# Run the newly created container after having started it
# docker exec -it imx8mmn-image bash
