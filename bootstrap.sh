#! /bin/sh

set -e
sudo apt-get install ruby rubygems wget
wget rock-robotics.org/autoproj_bootstrap
ruby autoproj_bootstrap git git@git.hb.dfki.de:eurex/buildconf.git
. ./env.sh
autoproj update
autoproj build
