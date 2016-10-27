set TOOLBELT_CFG_FILE $HOME/.config/configstore/vtex.json

function parse_vtex_json
  cat $TOOLBELT_CFG_FILE | grep $argv[1] | sed -n 's/.*\:.*\"\(.*\)\".*/\1/p'
end
