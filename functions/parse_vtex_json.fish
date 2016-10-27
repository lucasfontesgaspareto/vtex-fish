function parse_vtex_json
  cat $HOME/.config/configstore/vtex.json | grep $argv[1] | sed -n 's/.*\:.*\"\(.*\)\".*/\1/p'
end
