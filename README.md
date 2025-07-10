# Dotfiles

Personal configuration files for macOS and Linux systems, organized using the [GNU Stow](https://www.gnu.org/software/stow/) "packages" convention.

## Quick Start

1. **Clone this repository**

   ```sh
   git clone git@github.com:gil-tober/dotfiles.git ~/.dotfiles
   cd ~/.dotfiles
   ```

2. **Install Homebrew**

   Homebrew is required for package management:

   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

3. **Install Packages from Brewfile (includes GNU Stow)**

   ```sh
   brew bundle
   ```

   This installs all packages and applications listed in the `Brewfile`, including GNU Stow.

4. **Symlink the global Stow ignore file**

   To ensure Stow ignores the correct files, symlink `.stow-global-ignore` to your home directory:

   ```sh
   ln -s ~/.dotfiles/.stow-global-ignore ~/.stow-global-ignore
   ```

5. **Symlink Dotfiles using Stow (Packages Convention)**

   Each directory in this repo is a "package" (e.g., `zsh`, `vim`, `git`). To symlink all configurations:

   ```sh
   stow */
   ```

   Or symlink a specific package (e.g., `zsh`):

   ```sh
   stow zsh
   ```

## Tips

- **Review**: Check each package directory before stowing to avoid overwriting existing files.
- **Customize**: Edit configs as needed for your workflow.
- **Safe Stowing**: Use `stow -n` for a dry run before making changes.

---

Happy hacking!