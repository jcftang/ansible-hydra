default:

site:
	ansible-playbook -i hosts.production site-base.yml

prepare:
	ansible-playbook -i hosts.production site-prepare.yml

deploy-app:
	ansible-playbook -i hosts.production playbooks/setup-dri_app-nuig-rnag.yml
