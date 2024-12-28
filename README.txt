* TEST:
 docker login registry.lasthome.solace.krynn/repository:5001

podman pull registry.lasthome.solace.krynn:18001/openshift-release-dev/ocp-v4.0-art-dev@sha256:2091029d2e3ef73a36fdbf46de1fa69b60ac869ce183b9e8da8f42ab54040d22
https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.6.17/release.txt

aws-ebs-csi-driver is quay.io/openshift-release-dev/ocp-v4.0-art-dev@sha256:2091029d2e3ef73a36fdbf46de1fa69b60ac869ce183b9e8da8f42ab54040d22

crictl -D pull --creds <USER>:<PASSWORD> \
        registry.lasthome.solace.krynn:18001/openshift-release-dev/ocp-v4.0-art-dev@sha256:2091029d2e3ef73a36fdbf46de1fa69b60ac869ce183b9e8da8f42ab54040d22

