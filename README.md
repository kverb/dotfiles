# kverb's Dotfiles

A collection of terminal-centric configuration files ideal for server deployments and generally adaptable to Arch-based Linux installations (though not strictly required). Inspired by [this Atlassian article](https://www.atlassian.com/git/tutorials/dotfiles).

## Requirements

Essential:

- fish (Shell)
- starship (Prompt)
- vim (Text editor)
- bat (Syntax-highlighted cat replacement)
- exa (Modern ls replacement)

Recommended:

- ranger (File manager)
- zoxide (Smarter directory navigation)
- gping (Graphical ping utility)
- helix (Modern text editor)
- bottom (Graphical resource monitor)
- tig (Text-mode Git interface)

## Desktop Configuration

For laptops/desktops, this repo includes a Sway Window Manager configuration loosely inspired by the EndeavourOS Sway community edition.

Dependencies:

Sway, Waybar, fuzzel, mako, kitty, way-displays, swaylock

### Installation Notes:

1. Clone the repository and checkout main:
```bash
cd ~
# the extra args in this git alias are essential, and combined with the --bare clone are what make this work
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
git clone --bare git@github.com:kverb/dotfiles.git .cfg
config checkout
```

  If you encounter an error because some of the config files already exist, here is atlassian's recommendation to mv them into a backup dir:
  ```bash
  mkdir -p .config-backup && \
  config checkout 2>&1 | grep -e "\s+\." | awk {'print $1'} | \
  xargs -I{} mv {} .config-backup/{}
  ```  

2. Set the flag showUntrackedFiles to no on this specific (local) repository. Otherwise, you'll get a lot of extraneous files in `config status`. Keep this in mind when you make changes in a currently untracked file (you'll need to remember to `config add`. 
```bash
config config --local status.showUntrackedFiles no
```
3. when you make changes, treat the changes as you would source code in git:
   - sync latest from remote: `config pull`
   - check the status of locally changed files: `config status` , `config diff`
   - stage a file change `config add <file>`
   - commit `config commit -m 'Change color to blue'`
   - push to remote `config push`
   - etc. 
5. Theme Setup: Some components (fuzzel, Sway, Waybar, mako) require additional steps to apply the desired theme:
  - fuzzel: Copy [encom.ini](./.config/fuzzel/encom.ini) or symlink: `ln -s encom.ini config.ini`
  - Sway: Copy/symlink desired `.sway` files into `config.d/`. (Example: `ln -s encom.sway config.d/encom`)
  - Waybar: `ln -s thimkpad.config config` and `ln -s encom.css style.css`
  - mako: Symlink `ln -s encom.mako config`

## Sway TODO

Provide a more comprehensive guide to the Sway configuration and its dependencies.
