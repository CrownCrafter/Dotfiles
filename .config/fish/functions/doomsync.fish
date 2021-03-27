# Defined in - @ line 1
function doomsync --wraps='.emacs.d/bin/doom sync' --description 'alias doomsync .emacs.d/bin/doom sync'
  .emacs.d/bin/doom sync $argv;
end
