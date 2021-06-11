#! /bin/bash

# docker build -t pmm-server-k8s:0.1 .

microk8s ctr images rm docker.io/library/mcs_community:0.1

rm mcs_community:0.1

docker save hpdevelop/mcs_community:0.1 > mcs_community:0.1.tar

microk8s ctr image import mcs_community:0.1.tar