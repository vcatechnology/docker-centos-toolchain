FROM vcatechnology/centos-ci
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Build-time metadata as defined at http://label-schema.org
ARG PROJECT_NAME
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="$PROJECT_NAME" \
      org.label-schema.description="An up-to-date CentOS image that has VCA tool chain packages installed" \
      org.label-schema.url="https://www.centos.org/" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/vcatechnology/docker-centos-toolchain" \
      org.label-schema.vendor="VCA Technology" \
      org.label-schema.version=$VERSION \
      org.label-schema.license=MIT \
      org.label-schema.schema-version="1.0"

# Install useful packages
RUN sudo vca-install-package \
  aalib-devel \
  alsa-lib-devel \
  alsa-utils \
  bc \
  bison \
  boost-devel \
  bzip2-devel \
  check-devel \
  clang \
  cmake \
  cppcheck \
  cppunit-devel \
  dbus-devel \
  dialog-devel \
  doxygen \
  eigen3-devel \
  epel-release \
  flex \
  gcc \
  gcc-c++ \
  gettext-devel \
  glib2-devel \
  gmp-devel \
  gnu-efi-devel \
  gnutls-devel \
  gperf \
  graphviz \
  gstreamer1-devel \
  gstreamer1-plugins-base-devel \
  gstreamer1-plugins-good \
  gstreamer1-rtsp-server-devel \
  icu \
  intltool \
  jansson-devel \
  libattr-devel \
  libblkid-devel \
  libcap-devel \
  libcap-ng-devel \
  libcurl-devel \
  libffi-devel \
  libgcrypt-devel \
  libgpg-error-devel \
  libgudev1-devel \
  libicu-devel \
  libidn-devel \
  libitm-devel \
  libjpeg-turbo-devel \
  libmount-devel \
  libndp-devel \
  libnl-devel \
  libntlm-devel \
  libpciaccess-devel \
  libpng-devel \
  libsigc++20-devel \
  libsoup-devel \
  libtool \
  libusbx-devel \
  libuuid-devel \
  libuv-devel \
  libxml2-devel \
  llvm \
  llvm-devel \
  make \
  mpc-devel \
  mpfr-devel \
  nasm \
  ncurses-devel \
  ncurses-term \
  nettle-devel \
  nodejs \
  nodejs \
  npm \
  nspr-devel \
  opencv-devel \
  openssl-devel \
  orc-compiler \
  orc-devel \
  p7zip \
  pam-devel \
  pandoc \
  pcre-devel \
  pixman-devel \
  popt-devel \
  protobuf-devel \
  python-coverage \
  python-devel \
  python-requests \
  pytz \
  qemu \
  qt-devel \
  rpm-build \
  rpmlint \
  sqlite-devel \
  subunit-devel \
  subunit-filters \
  systemd-devel \
  sysvinit-tools \
  tinyxml-devel \
  uuidd \
  valgrind \
  xz-devel \
  yasm \
  zlib-devel

RUN curl -sO https://bootstrap.pypa.io/get-pip.py \
 && sudo python get-pip.py \
 && rm get-pip.py

RUN pip install --user pystache cpplint sseclient backports.functools_lru_cache
