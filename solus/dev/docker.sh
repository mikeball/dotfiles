
# install docker from Software Center
sudo eopkg install docker


# you should be able to get the docker version
docker --version

# if you attempt to use docker you likely will see this error
# "Cannot connect to the Docker daemon. Is the docker daemon running on this host?"
# to resolve this add your user to the docker group
# you then need to re-boot for change to take effect.
# simply logging out and then logging in doesn't seem to work
sudo usermod -aG docker mike


