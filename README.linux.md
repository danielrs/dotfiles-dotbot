[debian]: https://www.debian.org/
[gnome]: https://www.gnome.org/

The instructions below assume a [Debian][debian] distro and a [GNOME][gnome]
desktop environment (Pop!_OS 20.04 and GNOME 3.36 at the time of writing).

### 1. Apps

Using your package manager install the following apps (assuming `apt`):

```
sudo apt-get install \
    fish \
    neovim \
    tmux \
    silversearcher-ag

sudo apt-get install \
    code
```

#### Neovim

In order for the `deoplete` plugin to work, make sure to install the `neovim` python package using
either your package manager or `pip`.

### 2. GNOME 3 configuration

Enable fractional font scaling and set it it 25% (1.25) in Tweaks (Gnome Tweak Tool).

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

Install using:

```
sudo apt-get install docker.io
```

Remove from startup services using:

```
sudo systemctl disable docker
```

See:
https://stackoverflow.com/a/57678382

## References

Check the following link for moving from `bash` to `zsh`:
- https://scriptingosx.com/2019/06/moving-to-zsh/
- https://unix.stackexchange.com/a/26059
- https://superuser.com/questions/183870/difference-between-bashrc-and-bash-profile/183980#183980
- https://superuser.com/a/187673
