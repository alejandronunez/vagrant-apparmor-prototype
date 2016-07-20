#Readme
this prototype is a vagrant + container + apparmor kit to execute untrusted code.

./apparmor_profiles/secure-docker is a apparmor profile with deny permissions to write in /usr folder into the container. This file is copied into apparmor profile folder during the shell provision process of vagrant

./container_app/** is copy into the Docker Image 'cod_runner' during the process of build this image.

./Dockerfile have step to build the image.

./Vagrantfile have the vagrant configuration and two provisions:
1. a shell provision, that execute ./setup/bootstrap.sh: it have the necesary to install ruby, apparmor, rbenv, ect
2. a docker provision, that use Dockerfile to build a new Image named 'cod_runner'

./Rakefile have a task that execute 'run' new container of 'cod_runner' Image, with the set of the secure-docker profile and sending as arguments two snippet of code, one evil and the other not.