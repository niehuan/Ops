set -ex
pwd=$(dirname "$(readlink -f $0)")/../../

# ansible-playbook -i $pwd/ansible/inventory/mdp-all-in-one $pwd/ansible/mdp.yaml -e action=deploy -e version=1.6.2 -e variable_file=$pwd/ansible/group_vars/mdp/mdp_service_configs.yml
ansible-playbook -i $pwd/ansible/inventory/mdp-multinode $pwd/ansible/mdp.yaml -e action=deploy -e version=1.6.2 -e variable_file=$pwd/ansible/group_vars/mdp/mdp_service_configs.yml
