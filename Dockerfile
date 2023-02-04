# syntax=docker/dockerfile:experimental

FROM ghcr.io/admajonse/development:main as development

COPY provisioning/playbook.yml /provisioning/playbook.yml
COPY provisioning/requirements.yml /provisioning/requirements.yml

# RUN ansible-galaxy install -r /provisioning/requirements.yml --roles-path /provisioning/roles
# RUN ansible-playbook -e ansible_connection=local -e ansible_python_interpreter=/usr/bin/python3 --inventory 127.0.0.1, /provisioning/playbook.yml
