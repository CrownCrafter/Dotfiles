# Defined in - @ line 1
function update --wraps='pacman -Syu' --wraps='sudo pacman -Syu' --description 'alias update sudo pacman -Syu'
  sudo pacman -Syu $argv;
end
