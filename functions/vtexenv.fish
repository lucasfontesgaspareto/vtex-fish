function vtexenv
  set -e VTEX_ENV
  if count $argv > /dev/null
    set --export --universal VTEX_ENV $argv[1]
  else
    set --export --universal VTEX_ENV 'stable'
  end
  echo \$VTEX_ENV set to $VTEX_ENV in all fish terminals.
end
