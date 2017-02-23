#! /bin/bash
# The source file of this script is located at https://raw.githubusercontent.com/hdinsight/Iaas-Applications/master/EmptyNode/scripts/EmptyNodeSetup.sh
# This file is copied at http://hdiconfigactions.blob.core.windows.net/emptyedgenodev01/EmptyNodeSetup.sh for greater reliability
# To HDInsight Developers: If this is being updated, please update both locations
echo "Install Docker..."
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
# Install docker if you don't have it already.
apt-get install -y docker.io
apt-get install -y kubelet kubeadm kubectl kubernetes-cni
