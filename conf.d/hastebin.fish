function hb 
  if test (count $argv) -eq 0
    echo "No file path specified."
    return 
  else if not test -e $argv[1]
    echo "File path does not exist."
    return
  end
  set uri "http://bin.christitus.com/documents"

  set response $(curl -s -X POST -d "$(cat $argv[1])" "$uri")

  if test $status -eq 0
      set hasteKey $(echo $response | jq -r '.key')
      echo "http://bin.christitus.com/$hasteKey"
  else
    echo "Failed to upload the document."
  end
end
