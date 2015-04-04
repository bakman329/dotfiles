Dotfiles
========
This repository includes all of my custom dotfiles.  They should be cloned to
your home directory so that the path is `~/dotfiles/`.  The included setup
script creates symlinks from your home directory to the files which are located
in `~/dotfiles/`.

The setup script is smart enough to back up your existing dotfiles into a
`~/dotfiles_old/` directory if you already have any dotfiles of the same name as
the dotfile symlinks being created in your home directory.

I also prefer `zsh` as my shell of choice.  As such, the setup script will also
clone the `oh-my-zsh` repository from my GitHub. It then checks to see if `zsh`
is installed.  If `zsh` is installed, and it is not already configured as the
default shell, the setup script will execute a `chsh -s $(which zsh)`.  This
changes the default shell to zsh, and takes effect as soon as a new zsh is
spawned or on next login.

So, to recap, the install script will:

1. Back up any existing dotfiles in your home directory to `~/dotfiles_old/`
2. Create symlinks to the dotfiles in `~/dotfiles/` in your home directory
3. Check to see if `zsh` is installed, if it isn't, try to install it.
4. If zsh is installed, run a `chsh -s` to set it as the default shell.

Installation
------------

```
bash
git clone git://github.com/bakman329/dotfiles ~/dotfiles
cd ~/dotfiles
./makesymlinks.sh
```

Credit
------
This Readme is copied, almost verbatim, from https://github.com/michaeljsmalley/dotfiles, so credit goes to them.
My zsh and oh-my-zsh configurations are largely inspired by http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/
