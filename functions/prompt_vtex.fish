function prompt_vtex
  if test (get_vtex_workspace 2> /dev/null)
    echo (get_vtex_account)/(get_vtex_workspace)
  end
end
