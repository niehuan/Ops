#!/usr/bin/env bash
# Setup tmp yum local repo
AUTOMATA_HOME=${AUTOMATA_HOME:-/usr/share/automata}
export INVENTORY=${1:-/etc/automata/mdp/mdp-all-in-one}
export VARS_FILE=${2:-/etc/automata/mdp/mdp_service_configs.yml}

yum_repo_dir=$(grep -rnw ${VARS_FILE} -e "yum_repo_dir:" | awk '{print $2}')
pwd=$(grep -rnw ${VARS_FILE} -e "cluster_common_password:" | awk '{print $2}')
ruby_gems_dir=$(grep -rnw ${VARS_FILE} -e "ruby_gems_dir:" | awk '{print $2}')
docker_compose_dir=$(grep -rnw ${VARS_FILE} -e "docker_compose_dir:" | awk '{print $2}')
docker_images_tar=$(grep -rni ${VARS_FILE} -e "docker_images_dir:" | awk '{print $2}')

mkdir -p /tmp/repo_backup/
rm -f /etc/yum.repos.d/*

if [ ! -d $yum_repo_dir ]; then
    echo "yum repo directory not exist: $yum_repo_dir"
    exit 1
fi
if [ ! -d $ruby_gems_dir ]; then
    echo "ruby gems directory not exist: $ruby_gems_dir"
    exit 1
fi
if [ ! -f $docker_compose_dir ]; then
    echo "docker compose not exist: $docker_compose_dir"
    exit 1
fi
if [ ! -f $docker_images_tar ]; then
    echo "docker images file not exist: $docker_images_tar"
    exit 1
fi

cat > /etc/yum.repos.d/init-automata.repo << EOF 
[InitAutomata]
name=InitAutomata
baseurl=file://$yum_repo_dir
enabled=1
priority=1
gpgcheck=0
EOF

yum clean all
yum makecache

# Install ansible
yum install deltarpm* libxml2-python* createrepo* ansible python-configparser sshpass -y

# Setup ssh connections
python ${AUTOMATA_HOME}/tools/scripts/get_hosts.py | while read host; do
    ${AUTOMATA_HOME}/tools/scripts/ssh_withoutpw.sh $host $pwd
done
