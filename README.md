[homebrew]: https://brew.sh/
[amethyst]: https://github.com/ianyh/Amethyst
[chunkwm]: https://github.com/koekeishiya/chunkwm
[iterm-meta]: https://stackoverflow.com/questions/196357/making-iterm-to-translate-meta-key-in-the-same-way-as-in-other-oses

## dotfiles-osx

These are my **personal** dotfiles, they *may* or *may not* work for you. I'm using [ianishathalye/dotbot](https://github.com/anishathalye/dotbot) for installing the dotfiles.

### What's included?

Configuration files and scripts, check each **dotfile** to see what's included.

### After fresh install

#### 0. dotfiles

Install the dotfiles themselves:

```
cd [DOTFILES FOLDER]
./install
```

You should be be able to see able to see if anything went wrong.


#### 1. Homebrew

The most decent package manager for OS X (I miss you pacman). Follow the instructions
[here][homebrew].

#### 2. Apps

After homebrew, install the following base apps:

```
brew install neovim
brew install the_silver_searcher
brew install python
brew cask install iterm2
brew cask install amethyst
brew cask install google-chrome
```

#### 3. Neovim

In order for the `deoplete` plugin to work, make sure to install the `neovim` python package using `pip`.

#### 4. Amethyst

[Amethyst][amethyst] is one of the best Tiling Window Managers for OS X (along with [chunkwm][chunkwm]).
However, the keyboard shorcuts require some work before they resemble something similar to the ones that
I like.

**First**. Enable mission control and set the following keyboard shorcuts:

- `Move to space left`: `Control + [`
- `Move to space right`: `Control + ]`

**Second**. Similarly, configure Amethyst's keyboard shorcuts to reflect this change:

- `Throw focused window to space left`: `Control + Option + Shift + [`
- `Throw focused window to space right`: `Control + Option + Shift + ]`

#### 5. SSH Files

Add your SSH files to your `~/.ssh` folder:

```
mkdir .ssh
cd .ssh
mv ~/Downloads/id_rsa ./id_rsa
chmod 400 id_rsa
ssh-keygen -y -f id_rsa > id_rsa.pub
```

#### 6. iTerm2 setup

First, enable the shell colors:

```
base16_[THEME NAME]
```

Second, install the theme file by importing the appropiate theme file
in `~/.config/base16-iterm2` from iterm color presets preferences.

Third, enable the meta key as [explained here][iterm-meta]; that way `alt` bindings in vim works
as expected.
