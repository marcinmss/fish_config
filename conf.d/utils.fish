function ls
  if type -q exa
    command exa $argv
  else
    command ls $argv
  end
end
