#!/usr/bin/env fish
# usage: . ./hacking/env-setup [-q]
#    modifies environment for running Ansible from checkout
set HACKING_DIR (dirname (status -f))
set FULL_PATH (python -c "import os; print(os.path.realpath('$HACKING_DIR'))")
set ANSIBLE_HOME (dirname $FULL_PATH)
set -gx ANSIBLE_HOSTS $ANSIBLE_HOME/hosts.vagrant

if set -q argv 
    switch $argv
    case '-q' '--quiet'
    case '*'
        echo ""
        echo "Setting up Ansible to run out of checkout, hosts.vagrant and to use vagrant private keys..."
        echo ""
        echo "ANSIBLE_HOME=$ANSIBLE_HOME"
        echo "ANSIBLE_HOSTS=$ANSIBLE_HOSTS"
        echo ""

        echo "Remember, you may wish to specify your host file with -i"
        echo ""
        echo "Done!"
        echo ""
   end
end

function ansible -d "ansible wrapper"
    /usr/bin/env ansible --user=vagrant --private-key="~/.vagrant.d/insecure_private_key" $argv
end

function ansible-playbook -d "ansible-playbook wrapper"
    /usr/bin/env ansible-playbook --user=vagrant --private-key="~/.vagrant.d/insecure_private_key" $argv
end
