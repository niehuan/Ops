#!/usr/bin/env bash

cd $(dirname "$0")/../

inventory="ansible/inventory/mdp-all-in-one"
if [ -z $2 ]; then
    version="1.6.2"
fi

banner() {
cat << EOBANNER

.       ___          _____          ___     .
.      /__/\        /  /::\        /  /\    .
.     |  |::\      /  /:/\:\      /  /::\   .
.     |  |:|:\    /  /:/  \:\    /  /:/\:\  .
.   __|__|:|\:\  /__/:/ \__\:|  /  /:/~/:/  .
.  /__/::::| \:\ \  \:\ /  /:/ /__/:/ /:/   .
.  \  \:\~~\__\/  \  \:\  /:/  \  \:\/:/    .
.   \  \:\         \  \:\/:/    \  \::/     .
.    \  \:\         \  \::/      \  \:\     .
.     \  \:\         \__\/        \  \:\    .
.      \__\/                       \__\/    .

EOBANNER
}

case "$1" in
    start)
        banner
        echo "Starting MDP $version Services..."
        ansible-playbook -i $inventory ansible/mdp.yaml -e action=$1 -e version=$version
        ;;
    stop)
        ansible-playbook -i $inventory ansible/mdp.yaml -e action=$1 -e version=$version
        ;;
    deploy)
        banner
        echo "Installing MDP version $version..."
        ansible-playbook -i $inventory ansible/mdp.yaml -e action=$1 -e version=$version
        ;;
    restart)
        ansible-playbook -i $inventory ansible/mdp.yaml -e action=stop -e version=$version
        ansible-playbook -i $inventory ansible/mdp.yaml -e action=start -e version=$version
        ;;
    setup)
        sh ./setup.sh
        ;;
    *)
        echo "Usage: $0 {start|stop|deploy|restart|setup} <version>"
        ;;
esac