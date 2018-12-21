[homebrew]: https://brew.sh/
[amethyst]: https://github.com/ianyh/Amethyst
[chunkwm]: https://github.com/koekeishiya/chunkwm

## Dotfiles for OSX

### After fresh install

#### 1. Homebrew

The most decent package manager for OS X (I miss you pacman). Follow the instructions
[here][homebrew].

#### 2. Apps

After homebrew, install the following base apps:

```
brew install neovim
brew cask install amethust
brew cask install google-chrome
```

#### 3. Amethyst

[Amethyst][amethyst] is one of the best Tiling Window Managers for OS X (along with [chunkwm][chunkwm]).
However, the keyboard shorcuts require some work before they resemble something similar to the ones that
I like.

**First**. Enable mission control and set the following keyboard shorcuts:

- `Move to space left`: `Control + [`
- `Move to space right`: `Control + ]`

**Second**. Similarly, configure Amethyst's keyboard shorcuts to reflect this change:

- `Throw focused window to space left`: `Control + Option + Shift + [`
- `Throw focused window to space right`: `Control + Option + Shift + ]`

#### 4. SSH Files

Add your SSH files to your `~/.ssh` folder:

```
mkdir .ssh
cd .ssh
mv ~/Downloads/id_rsa ./id_rsa
chmod 400 id_rsa
ssh-keygen -y -f id_rsa > id_rsa.pub
```

#### 5. 
