# Dotfiles

## Prerequisites

Install xcode

```shell
xcode-select --install
```

Install homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Alternative install homebrew to homepage (in case of using several accounts on the same MacOS)
```shell
cd ~
git clone https://github.com/Homebrew/brew homebrew
brew update -force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"
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


## Tips and tricks

How to use JetBrains IDE to diff two files

- replace `RubyMine` with any other JetBrains IDE you've installed
- flag `-n` opens a new instance of the IDE
```shell
 open -na "RubyMine.app" --args diff path_to_file_1 path_to_file_2
```