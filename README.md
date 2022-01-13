# macdotfiles
a collection of dot files for mac

Set symlinks to files

    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/tat.sh /usr/local/bin  #use tat.sh script to create a tmux session for the current dir

Copy git related files

    cp ~/dotfiles/.gitconfig ~/
    cp ~/dotfiles/.gitignore ~/
    cp ~/dotfiles/.gitignore_global ~/

    git config --global commit.template ~/dotfiles/gitmessage

Install additional software
BREW 
    brew install reattach-to-user-namespace  # tmux copy-paste and scroll
    brew install ansible # Automate deployment, configuration, and upgrading
    brew install --cask spectacle clipy keep iterm2 keka meld neovim notion vlc vscodium
cat ~
TMUX
    Install Tmux Plugin Manager - https://github.com/tmux-plugins/tpm
    Install Tmux-resurrect - https://github.com/tmux-plugins/tmux-resurrect

