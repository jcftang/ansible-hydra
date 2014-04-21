default:

site:
	ansible-playbook -i hosts.production site-base.yml

prepare:
	ansible-playbook -i hosts.production site-prepare.yml
