set -gx EDITOR nvim 
set -gx LANGUAGE en_US.UTF-8
set -gx LANG en_US.UTF-8

starship init fish | source

set -gx PNPM_HOME "/home/marcio/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
