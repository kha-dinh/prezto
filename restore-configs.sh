
#!/bin/zsh

# rsync -a --progress .tmux ~ --exclude .git
# curl -L git.io/antigen > antigen.zsh
# rsync -a --progress .oh-my-zsh ~ --exclude .git
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# cp .p10k.zsh ~
# cp .zshrc ~
# cp .bashrc ~
# cp .tmux.conf ~
