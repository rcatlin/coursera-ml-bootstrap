#!/bin/bash
# This file will be run as root. It installs Octave for Ubuntu.

# add octave repository
add-apt-repository ppa:octave/stable

# rebuild repository list
apt-get update -qq

apt-get install -y texinfo
apt-get install -y gnuplot
apt-get install -y octave
apt-get install -y liboctave-dev
apt-get install -y octave-info

cat > /home/vagrant/.octaverc <<EOL
% ~/.octaverc

% make the PS1 not suck
PS1('>> ');
% make sure we're always in the right dir
cd /ml;
% tell the user where we are
printf('***Current working directory: %s***\n\n', pwd);
% use gnuplot for plotting
graphics_toolkit gnuplot;
EOL

echo "You are ready to roll son!!"
