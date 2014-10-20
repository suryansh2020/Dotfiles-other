symlink_to_home =                           \
    if test -e ~/$(file); then                  \
        echo "Warning: ~/$(file) already exists";       \
    else                                \
        ln -s ~/Dotfiles-other/$(file) ~/$(file);         \
    fi;

remove_if_symlink =                         \
    if test -e ~/$(file); then                  \
        if test -h ~/$(file); then              \
            rm ~/$(file);                   \
        else                            \
            echo "Warning: ~/$(file) is not a symlink"; \
        fi;                         \
    fi;

candidates = .gitconfig .tmux.conf .irbrc .vimrc .gvimrc .zshrc .oh-my.zsh

all::
    @$(foreach file,$(candidates),$(symlink_to_home))
    git submodule update --init --recursive

update:
    git submodule foreach 'git checkout master; git pull'

clean:
    @$(foreach file,$(candidates),$(remove_if_symlink))
