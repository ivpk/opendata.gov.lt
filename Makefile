default: help

.PHONY: help
help:
	@echo "make [check] <env> init      prepare new server for deployment"
	@echo "make [check] <env> deploy    do the deployment"
	@echo "make check <env> <playbook>  check ansible playbook without changing anything"
	@echo ""
	@echo "Environments: staging"


.PHONY: check
check:
	@echo "set check flags on"
	$(eval CHECK := -CD)


.PHONY: staging
staging:
	@echo "set environment to: ${@}"
	$(eval INVENTORY := ${@})


.PHONY: init
init:
	test -n "$(INVENTORY)"
	ansible-playbook -i inventories/init/$(INVENTORY) init.yml $(CHECK)


.PHONY: deploy
deploy:
	test -n "$(INVENTORY)"
	ansible-playbook -i inventories/$(INVENTORY) deploy.yml --vault-password-file=vault $(CHECK)


.PHONY: local
local:
	ansible-playbook --ask-become-pass -c local -i inventories/local, -e ckan_path=$(PWD) local.yml