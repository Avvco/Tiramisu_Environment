apt-get update
apt install tmux -y
apt install net-tools --fix-missing -y
apt install inotify-tools -y
apt install jq -y
snap install btop

# Install jdk
JAVA_VERSION="21"

apt-get update
apt-get install -y wget
apt install -y libc6-x32 libc6-i386
wget https://download.oracle.com/java/${JAVA_VERSION}/latest/jdk-${JAVA_VERSION}_linux-x64_bin.deb
apt --fix-broken install -y ./jdk-${JAVA_VERSION}_linux-x64_bin.deb
rm -f ./jdk-${JAVA_VERSION}_linux-x64_bin.deb

# Set environment variable
JAVA_HOME="/usr/lib/jvm/jdk-${JAVA_VERSION}"
rm -f /etc/profile.d/java_env.sh
echo JAVA_HOME=${JAVA_HOME} > /etc/profile.d/java_env.sh
echo PATH=${PATH}:${JAVA_HOME}/bin >> /etc/profile.d/java_env.sh