# Dotfiles

## Prerequisites

Install homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install ansible

```shell
brew install ansible
```

## Ansible tasks

Go to `~/dotfiles/ansible` folder

### SSH

```shell
ansible-playbook -t ssh local.yml --verbose --ask-vault-pass
```

