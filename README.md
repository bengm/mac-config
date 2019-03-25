# Ben's Mac Setup

## 0) Intall Brew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

See [brew.sh](https://brew.sh) for more.

## 1) Brew bundle

Install everything in the `Brewfile` by navigating to this directory in terminal and running:

```
brew bundle
```

Note: I get the following error messages, but it doesn't seem to hurt.

```
Tapping homebrew/dupes has failed!
...
Tapping homebrew/versions has failed!
```


## 2) OSX configurations

From this directory, run
```
bash osx-config.sh
```

## Stuff that can't be installed via Brew

### oh-my-zsh & themes

install oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

install [powerlevel9k zsh theme](https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#step-1-install-powerlevel9k) (note destination dir on right side of command)

```
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

You then need to select this theme in your `~/.zshrc`:

```
cp .zshrc ~/.zshrc
```

... or ...

```
  # ~/.zshrc
  ZSH_THEME="powerlevel9k/powerlevel9k"
```

install [powerline fonts](https://github.com/powerline/fonts)

```
# clone
$ git clone https://github.com/powerline/fonts.git --depth=1
# install
$ cd fonts
$ bash install.sh
# clean-up a bit
$ cd ..
$ rm -rf fonts
```

choose font in terminal at [iterm2 menu] > preferences > profiles > text > change font - be sure to change *both* font selections (ASCII and non-ASCII)
