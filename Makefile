default:

site:
	ansible-playbook -i hosts.production site-base.yml

daily:
	ansible-playbook -i hosts.production site-daily.yml
