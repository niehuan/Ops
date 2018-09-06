case "$1" in
    start|stop|deploy)
        ansible-playbook -i ansible/inventory/mdp-all-in-one ansible/mdp.yaml -e action=$1 -e version=1.6.2
        ;;
    *)
        echo "Usage: $0 {start|stop|deploy}"
        ;;
esac