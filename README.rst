********************************
Open Network Install Environment
********************************

ONIE is a small operating system, pre-installed on bare
metal network switches, that provides an environment for automated
provisioning.

Read the `ONIE Documentation <https://opencomputeproject.github.io/onie>`_ for more info.

********************************
Building ONIE
********************************

The recommended way to set up an ONIE build environment is to use a Docker image, as described
in the ONIE Documentation under `Preparing An ONIE Build Environment <https://opencomputeproject.github.io/onie/developers/building.html#preparing-an-onie-build-environment>`_.




# https://github.com/opencomputeproject...
# onie requires Debian environment, then we will use docker
git clone https://github.com/opencomputeproject...
cd onie/contrib/build-env/
docker build -t debian:build-env .
cd
mkdir --mode=0777 -p ${HOME}/src

docker run -it -v ${HOME}/src:/home/build/src --name onie debian:build-env

# in build@f1063a996da6:~$ 
./clone-onie
cd src/onie/build-config

#
make -j4 MACHINE=kvm_x86_64 all


******************************
Mailing List and Collaboration
******************************

Join the conversation -- send questions, comments and ideas to OCP-ONIE@OCP-All.groups.io.

Subscribe to the list: `https://ocp-all.groups.io/g/OCP-ONIE <https://ocp-all.groups.io/g/OCP-ONIE>`_.

Browse the archives: `https://ocp-all.groups.io/g/OCP-ONIE/topics <https://ocp-all.groups.io/g/OCP-ONIE/topics>`_.

