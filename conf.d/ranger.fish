function ranger
  set my_file $(mktemp -t tmp.XXXXXX)
  set ranger_cmd command ranger --cmd="'map Q chain shell echo %d > $my_file; quitall'"
  eval $ranger_cmd $argv
  if test -s $my_file ; and test $(cat $my_file) != $(echo -n (pwd)) 
    cd $(cat $my_file)
    command clear
  end
  command rm -f $my_file 2>/dev/null
end
