#! /bin/sh

set -e
sudo apt-get install ruby rubygems wget
wget rock-robotics.org/autoproj_bootstrap
ruby2.0 autoproj_bootstrap git git@github.com:lmedagoda/uw_workshop-buildconf.git
. ./env.sh
autoproj update
autoproj build
