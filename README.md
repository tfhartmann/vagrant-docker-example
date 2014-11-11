== Install ==

Make sure you have Vagrant Installed

Install Docker
On Linux (this worked for me on Ubuntu 14.4 )

Install the docker module, and associated dependencies : 

```Shell
"puppet module install garethr-docker"
```

This install the modules under ~/.puppet/modules

Then run this to install docker. 
The default test manifest in base.pp installs docker using the upstream docker.io repositories. 

```Shell
sudo puppet apply --modulepath="/home/$USER/.puppet/modules" --verbose /home/$USER/.puppet/modules/docker/tests/base.pp
```

Ensure that you are in the docker group, otherwise you'll be sudo'ing like mad, and your ~/vagrant.d permissions may get mucked up

```Shell
sudo puppet resource user $USER groups=docker
```

You could also run

```Shell
sudo usermod -a -G docker $USER
```

