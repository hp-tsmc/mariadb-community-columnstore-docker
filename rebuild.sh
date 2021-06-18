#! /bin/bash

# docker build -t hpdevelop/mcs_community:0.1 .

microk8s ctr images rm docker.io/hpdevelop/mcs_community:0.1

rm mcs_community:0.1.tar

docker save hpdevelop/mcs_community:0.1 > mcs_community:0.1.tar

microk8s ctr image import mcs_community:0.1.tar