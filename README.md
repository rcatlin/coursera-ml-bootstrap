# Machine Learning Bootstrap!

Let's learn how to make machines learn in a way that isn't painful!

This repo is inspired by https://github.com/hilalh/vagrant-octave

You can use it as a starting setup for the [Coursera Machine Learning Course](https://www.coursera.org/learn/machine-learning).

It comes with:

- A virtual machine you can use to run Octave.
- Gnuplot for nicer plotting
- An octaverc file that ensures the right directory every time

## Setting everything up

1. Install [Virtualbox](https://www.virtualbox.org/wiki/Downloads), [Vagrant](https://www.vagrantup.com/downloads.html), and [XQuartz](https://www.xquartz.org/) if you haven't already
2. Clone this repo
3. `cd` into the repo and run `vagrant up`. Note you might get an error
   if vagrant tries to install VirtualBox for you. If this happens, just
   re-run the command and it should work.

Test your setup by `vagrant ssh`ing into your box, then running `octave`, and typing `sombrero(30);` at the prompt.

## Usage

Put each assignment as a subdir within `homework`. The `homework` dir is synced to the `/ml` directory on the machine.

The machine is configured to forward to `X11` for plotting and use `gnuplot` for some  solid output.

**Pro-tip:** `alias oct=octave --no-gui` is nice.

## License: WTFPL
