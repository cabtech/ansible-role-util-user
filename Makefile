lint: .ylint .alint

.alint:
	ansible-lint --config .config/ansible-lint.yml
	@touch $@

.ylint:
	yamllint --config-file .config/yamllint .
	@touch $@

push: lint
	@mkdir -p /mnt/hgfs/shared/ansible-role-util-user
	rsync -a * /mnt/hgfs/shared/ansible-role-util-user

clean:
	@/bin/rm -f .alint .ylint
