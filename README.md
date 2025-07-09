# Dotfiles

This repository contains my personal configuration files (dotfiles) for macOS and Linux systems.

## Getting Started

To set up your environment using these dotfiles, follow the steps below.

### 1. Clone the Repository

```sh
git clone git@github.com:gil-tober/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

### 2. Install Homebrew

Homebrew is required to install packages listed in the `Brewfile`.  
If you don't have Homebrew, install it with:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 3. Install Brewfile Packages

```sh
brew bundle
```

This will install all the packages and applications specified in the `Brewfile`.

### 4. Install GNU Stow

GNU Stow is used to symlink the configuration files to your home directory.

```sh
brew install stow
```

### 5. Symlink Dotfiles

Use GNU Stow to symlink the desired configuration files. For example, to symlink all configs:

```sh
stow */
```

Or to symlink a specific config (e.g., `zsh`):

```sh
stow zsh
```

## Notes

- Review the contents of each directory before stowing to avoid overwriting existing files.
- Customize the dotfiles as needed for your workflow.

---

Happy hacking!