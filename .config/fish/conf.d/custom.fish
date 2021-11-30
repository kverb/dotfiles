alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Defined in - @ line 1
function dotfiles --wraps='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' --description 'alias dotfiles=/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
  /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $argv;
end
