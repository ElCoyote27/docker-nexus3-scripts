* TOP_DIR:
/net/imladris/export/home/raistlin/World/Vincent/Code/GIT/docker-nexus3-scripts

* TEST:
 docker login registry.lasthome.solace.krynn/repository:5001

podman pull registry.lasthome.solace.krynn:16001/openshift-release-dev/ocp-v4.0-art-dev@sha256:2091029d2e3ef73a36fdbf46de1fa69b60ac869ce183b9e8da8f42ab54040d22
https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.6.17/release.txt

aws-ebs-csi-driver                             quay.io/openshift-release-dev/ocp-v4.0-art-dev@sha256:2091029d2e3ef73a36fdbf46de1fa69b60ac869ce183b9e8da8f42ab54040d22

crictl -D pull --creds openshift:ocp4u2it \
        registry.lasthome.solace.krynn:16001/openshift-release-dev/ocp-v4.0-art-dev@sha256:2091029d2e3ef73a36fdbf46de1fa69b60ac869ce183b9e8da8f42ab54040d22

# podman pull registry.lasthome.solace.krynn:16001/repository/quay/ocp-v4.0-art-dev@sha256:2ec4f8aafb21ed870f0cd5031c47baf1a0704c11f8fb4a28823ec05d66114818
Trying to pull registry.lasthome.solace.krynn:16001/repository/quay/ocp-v4.0-art-dev@sha256:2ec4f8aafb21ed870f0cd5031c47baf1a0704c11f8fb4a28823ec05d66114818...
  unknown: unknown

# podman pull registry.lasthome.solace.krynn:16001/openshift-release-dev/ocp-v4.0-art-dev@sha256:2ec4f8aafb21ed870f0cd5031c47baf1a0704c11f8fb4a28823ec05d66114818


