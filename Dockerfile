FROM vcatechnology/centos-ci:latest
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Install useful packages
RUN sudo yum install -y epel-release
RUN sudo yum --enablerepo=extras install -y\
  gcc\
  gcc-c++\
  libtool\
  make\
  rpm-build\
  rpmlint\
  libitm-devel\
  doxygen\
  graphviz\
  check-devel\
  valgrind\
  cppunit-devel\
  pcre-devel\
  zlib-devel\
  protobuf-devel\
  qt-devel\
  cmake\
  libpng-devel\
  libjpeg-turbo-devel\
  opencv-devel\
  libicu-devel\
  boost-devel\
  jansson-devel\
  openssl-devel\
  libntlm-devel\
  libffi-devel\
  xz-devel\
  libxml2-devel\
  gettext-devel\
  glib2-devel\
  sqlite-devel\
  intltool\
  libsoup-devel\
  gmp-devel\
  nettle-devel\
  orc-compiler\
  orc-devel\
  gstreamer1-devel\
  gstreamer1-plugins-base-devel\
  gstreamer1-plugins-good\
  libsigc++20-devel\
  libidn-devel\
  gnutls-devel\
  libcurl-devel\
  libattr-devel\
  libcap-devel\
  libuuid-devel\
  libblkid-devel\
  libmount-devel\
  sysvinit-tools\
  systemd-devel\
  libgudev1-devel\
  dbus-devel\
  ncurses-devel\
  ncurses-term\
  dialog-devel\
  popt-devel\
  libgpg-error-devel\
  libgcrypt-devel\
  alsa-lib-devel\
  alsa-utils\
  libnl-devel\
  libndp-devel\
  epel-release\
  nodejs\
  npm\
  nspr-devel\
  python-devel\
  nasm\
  pixman-devel\
  p7zip\
  cppcheck\
  pandoc\
  yasm\
  tinyxml-devel\
  gstreamer1-rtsp-server-devel\
  libuv-devel\
  nodejs\
  eigen3-devel\
  pam-devel\
  python-requests\
  pytz \
  bzip2-devel \
  flex \
  bison \
  llvm \
  clang

RUN sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
  sudo python get-pip.py && \
  sudo rm get-pip.py

RUN sudo pip install pystache cpplint
