[homebrew]: https://brew.sh/
[amethyst]: https://github.com/ianyh/Amethyst
[chunkwm]: https://github.com/koekeishiya/chunkwm
[iterm-meta]: https://stackoverflow.com/questions/196357/making-iterm-to-translate-meta-key-in-the-same-way-as-in-other-oses

### 1. Homebrew

The most decent package manager for OS X (I miss you pacman). Follow the instructions
[here][homebrew].

### 2. Apps

Using homebrew, install the following base apps:

```
brew install \
    bash \
    fish \
    neovim \
    tmux \
    the_silver_searcher

brew cask install \
    amethyst \
    firefox \
    iterm2 \
    spotify \
    visual-studio-code \
    vlc
```

#### Fish

Configure `fish` as the new shell by adding `/usr/local/bin/fish` to `/etc/shells`. Then run:

```
chsh -s /usr/local/bin/fish
```

#### Neovim

In order for the `deoplete` plugin to work, make sure to install the `neovim` python package using `pip`.

#### Amethyst

[Amethyst][amethyst] is one of the best Tiling Window Managers for OS X (along with [chunkwm][chunkwm]).
However, the keyboard shorcuts require some work before they resemble something similar to the ones that
I like.

**First**. Enable mission control and set the following keyboard shorcuts:

- `Move left a space`: `Control + [`
- `Move right a space`: `Control + ]`

**Second**. Similarly, configure Amethyst's keyboard shorcuts to reflect this change:

- `Throw focused window to space left`: `Control + Option + Shift + [`
- `Throw focused window to space right`: `Control + Option + Shift + ]`

#### iTerm2

**First**, enable the shell colors:

```
base16_[THEME NAME]
```

**Second**, install the theme file by importing the appropiate theme file
in `~/.config/base16-iterm2` from iterm color presets preferences.

**Third**, enable the meta key as [explained here][iterm-meta]; that way `alt` bindings in vim works
as expected.

### 3. SSH Files

Add your SSH files to your `~/.ssh` folder:

```
mkdir .ssh
cd .ssh
mv ~/Downloads/id_rsa ./id_rsa
chmod 400 id_rsa
ssh-keygen -y -f id_rsa > id_rsa.pub
```

### 4. Docker Desktop

Check link regarding slow `docker-compose`:
https://github.com/docker/compose/issues/7087#issuecomment-570757483

## References

Check the following link for moving from `bash` to `zsh`:
- https://scriptingosx.com/2019/06/moving-to-zsh/
- https://unix.stackexchange.com/a/26059
- https://superuser.com/questions/183870/difference-between-bashrc-and-bash-profile/183980#183980
- https://superuser.com/a/187673
