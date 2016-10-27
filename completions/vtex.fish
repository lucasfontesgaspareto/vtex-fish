function __fish_vtex_no_subcommand --description 'Test if vtex has yet to be given the subcommand'
    for i in (commandline -opc)
        if contains -- $i login logout watch publish install uninstall list use settings workspace
            return 1
        end
    end
    return 0
end

complete --command vtex --no-files --condition '__fish_vtex_no_subcommand' --arguments 'login logout watch publish install uninstall list use settings workspace'
complete --command vtex --no-files --condition '__fish_seen_subcommand_from settings' --arguments 'set unset'
complete --command vtex --no-files --condition '__fish_seen_subcommand_from workspace' --arguments 'list create delete promote use reset'
complete --command vtex --no-files --condition '__fish_seen_subcommand_from setup' --arguments 'eslint'
complete --command vtex --no-files --condition '__fish_seen_subcommand_from init' --arguments 'render'
