# Defined in - @ line 1
function yeet --wraps='pacman -R' --wraps='sudo pacman -R' --description 'alias yeet sudo pacman -R'
  sudo pacman -R $argv;
end
