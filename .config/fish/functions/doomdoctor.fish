# Defined in - @ line 1
function doomdoctor --wraps='.emacs.d/bin/doom doctor' --description 'alias doomdoctor .emacs.d/bin/doom doctor'
  .emacs.d/bin/doom doctor $argv;
end
