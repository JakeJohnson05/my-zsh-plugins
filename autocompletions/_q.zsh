#compdef q

autoload -U is-at-least

_q() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'--help-all[Print help for all subcommands]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_q_commands" \
"*::: :->q" \
&& ret=0
    case $state in
    (q)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-command-$line[1]:"
        case $line[1] in
            (hook)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_q__hook_commands" \
"*::: :->hook" \
&& ret=0

    case $state in
    (hook)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-hook-command-$line[1]:"
        case $line[1] in
            (editbuffer)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':session_id:_default' \
':integration:_default' \
':tty:_default' \
':pid:_default' \
':histno:_default' \
':cursor:_default' \
':text:_default' \
&& ret=0
;;
(hide)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(init)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':pid:_default' \
':tty:_default' \
&& ret=0
;;
(integration-ready)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':integration:_default' \
&& ret=0
;;
(keyboard-focus-changed)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':app_identifier:_default' \
':focused_session_id:_default' \
&& ret=0
;;
(pre-exec)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':pid:_default' \
':tty:_default' \
&& ret=0
;;
(prompt)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':pid:_default' \
':tty:_default' \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
'--prompt[]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':pid:_default' \
':tty:_default' \
':control_path:_default' \
':remote_dest:_default' \
&& ret=0
;;
(clear-autocomplete-cache)
_arguments "${_arguments_options[@]}" : \
'*--cli=[]:CLI:_default' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__hook__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-hook-help-command-$line[1]:"
        case $line[1] in
            (editbuffer)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(hide)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(init)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(integration-ready)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(keyboard-focus-changed)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(pre-exec)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(prompt)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(clear-autocomplete-cache)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(debug)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_q__debug_commands" \
"*::: :->debug" \
&& ret=0

    case $state in
    (debug)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-debug-command-$line[1]:"
        case $line[1] in
            (app)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(build)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':app:(dashboard autocomplete)' \
'::build:(production beta)' \
&& ret=0
;;
(autocomplete-window)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
'::mode:(on off)' \
&& ret=0
;;
(logs)
_arguments "${_arguments_options[@]}" : \
'--level=[]:LEVEL:_default' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
'*::files:_default' \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_q__debug__input-method_commands" \
"*::: :->input-method" \
&& ret=0

    case $state in
    (input-method)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-debug-input-method-command-$line[1]:"
        case $line[1] in
            (install)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
'::bundle_path:_files' \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
'::bundle_path:_files' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(status)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
'::bundle_path:_files' \
&& ret=0
;;
(source)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':bundle_identifier:_default' \
':action:(enable disable select deselect)' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__debug__input-method__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-debug-input-method-help-command-$line[1]:"
        case $line[1] in
            (install)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(status)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(source)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(prompt-accessibility)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(sample)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(verify-codesign)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(accessibility)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
'::action:(refresh reset prompt open status)' \
&& ret=0
;;
(key-tester)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(diagnostics)
_arguments "${_arguments_options[@]}" : \
'--rate=[]:RATE:_default' \
'--watch[]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(query-index)
_arguments "${_arguments_options[@]}" : \
'-c+[]:CHANNEL:_default' \
'--channel=[]:CHANNEL:_default' \
'-t+[]:TARGET_TRIPLE:_default' \
'--target-triple=[]:TARGET_TRIPLE:_default' \
'-V+[]:VARIANT:_default' \
'--variant=[]:VARIANT:_default' \
'-e+[]:VERSION:_default' \
'--version=[]:VERSION:_default' \
'-o+[]:OVERRIDE_THRESHOLD:_default' \
'--override-threshold=[]:OVERRIDE_THRESHOLD:_default' \
'-f+[]:FILE_TYPE:_default' \
'--file-type=[]:FILE_TYPE:_default' \
'-r[]' \
'--enable-rollout[]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(devtools)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':app:(dashboard autocomplete)' \
&& ret=0
;;
(get-index)
_arguments "${_arguments_options[@]}" : \
'-d[Display using debug formatting]' \
'--debug[Display using debug formatting]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':channel:_default' \
&& ret=0
;;
(list-intellij-variants)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(shell)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(fix-permissions)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(refresh-auth-token)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__debug__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-debug-help-command-$line[1]:"
        case $line[1] in
            (app)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(build)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(autocomplete-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(logs)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
":: :_q__debug__help__input-method_commands" \
"*::: :->input-method" \
&& ret=0

    case $state in
    (input-method)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-debug-help-input-method-command-$line[1]:"
        case $line[1] in
            (install)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(status)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(source)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(prompt-accessibility)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(sample)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(verify-codesign)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(accessibility)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(key-tester)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(diagnostics)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(query-index)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(devtools)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(get-index)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list-intellij-variants)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(shell)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(fix-permissions)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(refresh-auth-token)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(settings)
_arguments "${_arguments_options[@]}" : \
'-f+[Format of the output]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'--format=[Format of the output]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'-d[Delete a value]' \
'--delete[Delete a value]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::key -- key:_default' \
'::value -- value:_default' \
":: :_q__settings_commands" \
"*::: :->settings" \
&& ret=0

    case $state in
    (settings)
        words=($line[3] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-settings-command-$line[3]:"
        case $line[3] in
            (open)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
'-f+[Format of the output]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'--format=[Format of the output]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__settings__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-settings-help-command-$line[1]:"
        case $line[1] in
            (open)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(setup)
_arguments "${_arguments_options[@]}" : \
'--dotfiles[Install only the shell integrations]' \
'--input-method[Prompt input method installation]' \
'--no-confirm[Don'\''t confirm automatic installation]' \
'--force[Force installation of q]' \
'--global[Install q globally]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
'-y[Force uninstall]' \
'--no-confirm[Force uninstall]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(update)
_arguments "${_arguments_options[@]}" : \
'-y[Don'\''t prompt for confirmation]' \
'--non-interactive[Don'\''t prompt for confirmation]' \
'--relaunch-dashboard[Relaunch into dashboard after update (false will launch in background)]' \
'--rollout[Uses rollout]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(diagnostic)
_arguments "${_arguments_options[@]}" : \
'-f+[The format of the output]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'--format=[The format of the output]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'--force[Force limited diagnostic output]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(init)
_arguments "${_arguments_options[@]}" : \
'--rcfile=[]:RCFILE:_default' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':shell -- The shell to generate the dotfiles for:((bash\:"Bash shell"
zsh\:"Zsh shell"
fish\:"Fish shell"
nu\:"Nu shell"))' \
':when -- When to generate the dotfiles for:(pre post)' \
&& ret=0
;;
(theme)
_arguments "${_arguments_options[@]}" : \
'(--folder)--list[]' \
'(--list)--folder[]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
'::theme:_default' \
&& ret=0
;;
(issue)
_arguments "${_arguments_options[@]}" : \
'-f[Force issue creation]' \
'--force[Force issue creation]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
'*::description -- Issue description:_default' \
&& ret=0
;;
(login)
_arguments "${_arguments_options[@]}" : \
'--license=[License type (pro for Identity Center, free for Builder ID)]:LICENSE:((free\:"Free license with Builder ID"
pro\:"Pro license with Identity Center"))' \
'--identity-provider=[Identity provider URL (for Identity Center)]:IDENTITY_PROVIDER:_default' \
'--region=[Region (for Identity Center)]:REGION:_default' \
'--use-device-flow[Always use the OAuth device flow for authentication. Useful for instances where browser redirects cannot be handled]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(logout)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(whoami)
_arguments "${_arguments_options[@]}" : \
'-f+[Output format to use]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'--format=[Output format to use]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(profile)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(user)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_q__user_commands" \
"*::: :->user" \
&& ret=0

    case $state in
    (user)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-user-command-$line[1]:"
        case $line[1] in
            (login)
_arguments "${_arguments_options[@]}" : \
'--license=[License type (pro for Identity Center, free for Builder ID)]:LICENSE:((free\:"Free license with Builder ID"
pro\:"Pro license with Identity Center"))' \
'--identity-provider=[Identity provider URL (for Identity Center)]:IDENTITY_PROVIDER:_default' \
'--region=[Region (for Identity Center)]:REGION:_default' \
'--use-device-flow[Always use the OAuth device flow for authentication. Useful for instances where browser redirects cannot be handled]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(logout)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(whoami)
_arguments "${_arguments_options[@]}" : \
'-f+[Output format to use]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'--format=[Output format to use]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(profile)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__user__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-user-help-command-$line[1]:"
        case $line[1] in
            (login)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(logout)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(whoami)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(profile)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(doctor)
_arguments "${_arguments_options[@]}" : \
'-a[Run all doctor tests, with no fixes]' \
'--all[Run all doctor tests, with no fixes]' \
'-s[Error on warnings]' \
'--strict[Error on warnings]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(completion)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::shell -- Shell to generate the completion spec for:((bash\:"Bash shell completions"
fish\:"Fish shell completions"
zsh\:"Zsh shell completions"
fig\:"Fig completion spec"))' \
&& ret=0
;;
(internal)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_q__internal_commands" \
"*::: :->internal" \
&& ret=0

    case $state in
    (internal)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-internal-command-$line[1]:"
        case $line[1] in
            (pre-cmd)
_arguments "${_arguments_options[@]}" : \
'--alias=[]:ALIAS:_default' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(local-state)
_arguments "${_arguments_options[@]}" : \
'-f+[Format of the output]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'--format=[Format of the output]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'-d[Delete the state]' \
'--delete[Delete the state]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::key -- Key of the state:_default' \
'::value -- Value of the state:_default' \
":: :_q__internal__local-state_commands" \
"*::: :->local-state" \
&& ret=0

    case $state in
    (local-state)
        words=($line[3] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-internal-local-state-command-$line[3]:"
        case $line[3] in
            (init)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
'-f+[]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'--format=[]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__internal__local-state__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-internal-local-state-help-command-$line[1]:"
        case $line[1] in
            (init)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(callback)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':handler_id:_default' \
'::filename:_default' \
'::exit_code:_default' \
&& ret=0
;;
(install)
_arguments "${_arguments_options[@]}" : \
'--dotfiles[Install only the shell integrations]' \
'--input-method[Prompt input method installation]' \
'--no-confirm[Don'\''t confirm automatic installation]' \
'--force[Force installation of q]' \
'--global[Install q globally]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
'--dotfiles[Uninstall only the shell integrations]' \
'--input-method[Uninstall only the input method]' \
'--binary[Uninstall only the binary]' \
'--ssh[Uninstall only the ssh integration]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(get-shell)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(hostname)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(should-figterm-launch)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(event)
_arguments "${_arguments_options[@]}" : \
'--name=[Name of the event]:NAME:_default' \
'--payload=[Payload of the event as a JSON string]:PAYLOAD:_default' \
'*--apps=[Apps to send the event to]:APPS:_default' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(sockets-dir)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(stream-from-socket)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(figterm-socket-path)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':session_id:_default' \
&& ret=0
;;
(ipc)
_arguments "${_arguments_options[@]}" : \
'--figterm=[]:FIGTERM:_default' \
'--json=[]:JSON:_default' \
'--app[]' \
'--recv[]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(uninstall-for-all-users)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(remove-data-dir)
_arguments "${_arguments_options[@]}" : \
'--force[]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(uuidgen)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(open-uninstall-page)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(ssh-local-command)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':remote_dest:_default' \
':uuid:_default' \
&& ret=0
;;
(prompt-ssh)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':remote_dest:_default' \
&& ret=0
;;
(attempt-to-finish-input-method-installation)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
'::bundle_path:_files' \
&& ret=0
;;
(dump-state)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':component:(figterm web-notifications platform)' \
&& ret=0
;;
(finish-update)
_arguments "${_arguments_options[@]}" : \
'--delete-bundle=[]:DELETE_BUNDLE:_default' \
'--relaunch-dashboard[]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(swap-files)
_arguments "${_arguments_options[@]}" : \
'--not-same-bundle-name[]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
':from:_files' \
':to:_files' \
&& ret=0
;;
(brew-uninstall)
_arguments "${_arguments_options[@]}" : \
'--zap[]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(generate-ssh)
_arguments "${_arguments_options[@]}" : \
'--remote-host=[The remote host]:REMOTE_HOST:_default' \
'--remote-port=[The remote port]:REMOTE_PORT:_default' \
'--remote-username=[The remote username]:REMOTE_USERNAME:_default' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(inline-shell-completion)
_arguments "${_arguments_options[@]}" : \
'--buffer=[]:BUFFER:_default' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(inline-shell-completion-accept)
_arguments "${_arguments_options[@]}" : \
'--buffer=[]:BUFFER:_default' \
'--suggestion=[]:SUGGESTION:_default' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(multiplexer)
_arguments "${_arguments_options[@]}" : \
'--port=[]:PORT:_default' \
'--websocket[]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__internal__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-internal-help-command-$line[1]:"
        case $line[1] in
            (pre-cmd)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(local-state)
_arguments "${_arguments_options[@]}" : \
":: :_q__internal__help__local-state_commands" \
"*::: :->local-state" \
&& ret=0

    case $state in
    (local-state)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-internal-help-local-state-command-$line[1]:"
        case $line[1] in
            (init)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(callback)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(install)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(get-shell)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(hostname)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(should-figterm-launch)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(event)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(sockets-dir)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(stream-from-socket)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(figterm-socket-path)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ipc)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(uninstall-for-all-users)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(remove-data-dir)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(uuidgen)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(open-uninstall-page)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh-local-command)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(prompt-ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(attempt-to-finish-input-method-installation)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(dump-state)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(finish-update)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(swap-files)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(brew-uninstall)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(generate-ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(inline-shell-completion)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(inline-shell-completion-accept)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(multiplexer)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(launch)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(quit)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(restart)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
'::process -- The process to restart:((app\:"Desktop Process"))' \
&& ret=0
;;
(integrations)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_q__integrations_commands" \
"*::: :->integrations" \
&& ret=0

    case $state in
    (integrations)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-integrations-command-$line[1]:"
        case $line[1] in
            (install)
_arguments "${_arguments_options[@]}" : \
'-s[Suppress status messages]' \
'--silent[Suppress status messages]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_q__integrations__install_commands" \
"*::: :->install" \
&& ret=0

    case $state in
    (install)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-integrations-install-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::shell -- Only install the integrations for a single shell:((bash\:"Bash shell"
zsh\:"Zsh shell"
fish\:"Fish shell"
nu\:"Nu shell"))' \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__integrations__install__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-integrations-install-help-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
'-s[Suppress status messages]' \
'--silent[Suppress status messages]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_q__integrations__uninstall_commands" \
"*::: :->uninstall" \
&& ret=0

    case $state in
    (uninstall)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-integrations-uninstall-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::shell -- Only install the integrations for a single shell:((bash\:"Bash shell"
zsh\:"Zsh shell"
fish\:"Fish shell"
nu\:"Nu shell"))' \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__integrations__uninstall__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-integrations-uninstall-help-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(reinstall)
_arguments "${_arguments_options[@]}" : \
'-s[Suppress status messages]' \
'--silent[Suppress status messages]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_q__integrations__reinstall_commands" \
"*::: :->reinstall" \
&& ret=0

    case $state in
    (reinstall)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-integrations-reinstall-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::shell -- Only install the integrations for a single shell:((bash\:"Bash shell"
zsh\:"Zsh shell"
fish\:"Fish shell"
nu\:"Nu shell"))' \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__integrations__reinstall__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-integrations-reinstall-help-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(status)
_arguments "${_arguments_options[@]}" : \
'-f+[]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'--format=[]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
":: :_q__integrations__status_commands" \
"*::: :->status" \
&& ret=0

    case $state in
    (status)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-integrations-status-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::shell -- Only install the integrations for a single shell:((bash\:"Bash shell"
zsh\:"Zsh shell"
fish\:"Fish shell"
nu\:"Nu shell"))' \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__integrations__status__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-integrations-status-help-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__integrations__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-integrations-help-command-$line[1]:"
        case $line[1] in
            (install)
_arguments "${_arguments_options[@]}" : \
":: :_q__integrations__help__install_commands" \
"*::: :->install" \
&& ret=0

    case $state in
    (install)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-integrations-help-install-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
":: :_q__integrations__help__uninstall_commands" \
"*::: :->uninstall" \
&& ret=0

    case $state in
    (uninstall)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-integrations-help-uninstall-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(reinstall)
_arguments "${_arguments_options[@]}" : \
":: :_q__integrations__help__reinstall_commands" \
"*::: :->reinstall" \
&& ret=0

    case $state in
    (reinstall)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-integrations-help-reinstall-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(status)
_arguments "${_arguments_options[@]}" : \
":: :_q__integrations__help__status_commands" \
"*::: :->status" \
&& ret=0

    case $state in
    (status)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-integrations-help-status-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(translate)
_arguments "${_arguments_options[@]}" : \
'-n+[Number of completions to generate (must be <=5)]:N:_default' \
'--n=[Number of completions to generate (must be <=5)]:N:_default' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
'*::input:_default' \
&& ret=0
;;
(telemetry)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_q__telemetry_commands" \
"*::: :->telemetry" \
&& ret=0

    case $state in
    (telemetry)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-telemetry-command-$line[1]:"
        case $line[1] in
            (enable)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(disable)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(status)
_arguments "${_arguments_options[@]}" : \
'-f+[Format of the output]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'--format=[Format of the output]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__telemetry__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-telemetry-help-command-$line[1]:"
        case $line[1] in
            (enable)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(disable)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(status)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(version)
_arguments "${_arguments_options[@]}" : \
'--changelog=[Show the changelog (use --changelog=all for all versions, or --changelog=x.x.x for a specific version)]' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(dashboard)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(chat)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'*::args -- Args for the chat subcommand:_default' \
&& ret=0
;;
(mcp)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'*::args -- Args for the MCP subcommand:_default' \
&& ret=0
;;
(inline)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_q__inline_commands" \
"*::: :->inline" \
&& ret=0

    case $state in
    (inline)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-inline-command-$line[1]:"
        case $line[1] in
            (enable)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(disable)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(status)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(set-customization)
_arguments "${_arguments_options[@]}" : \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help]' \
'--help[Print help]' \
'::arn -- The arn of the customization to use:_default' \
&& ret=0
;;
(show-customizations)
_arguments "${_arguments_options[@]}" : \
'-f+[]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'--format=[]:FORMAT:((plain\:"Outputs the results as markdown"
json\:"Outputs the results as JSON"
json-pretty\:"Outputs the results as pretty print JSON"))' \
'*-v[Increase logging verbosity]' \
'*--verbose[Increase logging verbosity]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__inline__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-inline-help-command-$line[1]:"
        case $line[1] in
            (enable)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(disable)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(status)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-customization)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(show-customizations)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_q__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-command-$line[1]:"
        case $line[1] in
            (hook)
_arguments "${_arguments_options[@]}" : \
":: :_q__help__hook_commands" \
"*::: :->hook" \
&& ret=0

    case $state in
    (hook)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-hook-command-$line[1]:"
        case $line[1] in
            (editbuffer)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(hide)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(init)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(integration-ready)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(keyboard-focus-changed)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(pre-exec)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(prompt)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(clear-autocomplete-cache)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(debug)
_arguments "${_arguments_options[@]}" : \
":: :_q__help__debug_commands" \
"*::: :->debug" \
&& ret=0

    case $state in
    (debug)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-debug-command-$line[1]:"
        case $line[1] in
            (app)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(build)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(autocomplete-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(logs)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
":: :_q__help__debug__input-method_commands" \
"*::: :->input-method" \
&& ret=0

    case $state in
    (input-method)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-debug-input-method-command-$line[1]:"
        case $line[1] in
            (install)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(status)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(source)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(prompt-accessibility)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(sample)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(verify-codesign)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(accessibility)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(key-tester)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(diagnostics)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(query-index)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(devtools)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(get-index)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list-intellij-variants)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(shell)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(fix-permissions)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(refresh-auth-token)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(settings)
_arguments "${_arguments_options[@]}" : \
":: :_q__help__settings_commands" \
"*::: :->settings" \
&& ret=0

    case $state in
    (settings)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-settings-command-$line[1]:"
        case $line[1] in
            (open)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(setup)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(update)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(diagnostic)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(init)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(theme)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(issue)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(login)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(logout)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(whoami)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(profile)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(user)
_arguments "${_arguments_options[@]}" : \
":: :_q__help__user_commands" \
"*::: :->user" \
&& ret=0

    case $state in
    (user)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-user-command-$line[1]:"
        case $line[1] in
            (login)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(logout)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(whoami)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(profile)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(doctor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(completion)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(internal)
_arguments "${_arguments_options[@]}" : \
":: :_q__help__internal_commands" \
"*::: :->internal" \
&& ret=0

    case $state in
    (internal)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-internal-command-$line[1]:"
        case $line[1] in
            (pre-cmd)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(local-state)
_arguments "${_arguments_options[@]}" : \
":: :_q__help__internal__local-state_commands" \
"*::: :->local-state" \
&& ret=0

    case $state in
    (local-state)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-internal-local-state-command-$line[1]:"
        case $line[1] in
            (init)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(callback)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(install)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(get-shell)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(hostname)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(should-figterm-launch)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(event)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(sockets-dir)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(stream-from-socket)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(figterm-socket-path)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ipc)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(uninstall-for-all-users)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(remove-data-dir)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(uuidgen)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(open-uninstall-page)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh-local-command)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(prompt-ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(attempt-to-finish-input-method-installation)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(dump-state)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(finish-update)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(swap-files)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(brew-uninstall)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(generate-ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(inline-shell-completion)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(inline-shell-completion-accept)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(multiplexer)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(launch)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(quit)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(restart)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(integrations)
_arguments "${_arguments_options[@]}" : \
":: :_q__help__integrations_commands" \
"*::: :->integrations" \
&& ret=0

    case $state in
    (integrations)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-integrations-command-$line[1]:"
        case $line[1] in
            (install)
_arguments "${_arguments_options[@]}" : \
":: :_q__help__integrations__install_commands" \
"*::: :->install" \
&& ret=0

    case $state in
    (install)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-integrations-install-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(uninstall)
_arguments "${_arguments_options[@]}" : \
":: :_q__help__integrations__uninstall_commands" \
"*::: :->uninstall" \
&& ret=0

    case $state in
    (uninstall)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-integrations-uninstall-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(reinstall)
_arguments "${_arguments_options[@]}" : \
":: :_q__help__integrations__reinstall_commands" \
"*::: :->reinstall" \
&& ret=0

    case $state in
    (reinstall)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-integrations-reinstall-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(status)
_arguments "${_arguments_options[@]}" : \
":: :_q__help__integrations__status_commands" \
"*::: :->status" \
&& ret=0

    case $state in
    (status)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-integrations-status-command-$line[1]:"
        case $line[1] in
            (dotfiles)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(ssh)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(input-method)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(vscode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(intellij-plugin)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(autostart-entry)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(gnome-shell-extension)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(all)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(translate)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(telemetry)
_arguments "${_arguments_options[@]}" : \
":: :_q__help__telemetry_commands" \
"*::: :->telemetry" \
&& ret=0

    case $state in
    (telemetry)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-telemetry-command-$line[1]:"
        case $line[1] in
            (enable)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(disable)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(status)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(version)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(dashboard)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(chat)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(mcp)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(inline)
_arguments "${_arguments_options[@]}" : \
":: :_q__help__inline_commands" \
"*::: :->inline" \
&& ret=0

    case $state in
    (inline)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:q-help-inline-command-$line[1]:"
        case $line[1] in
            (enable)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(disable)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(status)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-customization)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(show-customizations)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
}

(( $+functions[_q_commands] )) ||
_q_commands() {
    local commands; commands=(
'hook:Hook commands' \
'debug:Debug the app' \
'settings:Customize appearance & behavior' \
'setup:Setup cli components' \
'uninstall:Uninstall Amazon Q' \
'update:Update the Amazon Q application' \
'diagnostic:Run diagnostic tests' \
'init:Generate the dotfiles for the given shell' \
'theme:Get or set theme' \
'issue:Create a new Github issue' \
'login:Login' \
'logout:Logout' \
'whoami:Prints details about the current user' \
'profile:Show the profile associated with this idc user' \
'user:Manage your account' \
'doctor:Fix and diagnose common issues' \
'completion:Generate CLI completion spec' \
'internal:Internal subcommands' \
'launch:Launch the desktop app' \
'quit:Quit the desktop app' \
'restart:Restart the desktop app' \
'integrations:Manage system integrations' \
'translate:Natural Language to Shell translation' \
'telemetry:Enable/disable telemetry' \
'version:Version' \
'dashboard:Open the dashboard' \
'chat:AI assistant in your terminal' \
'mcp:Model Context Protocol (MCP)' \
'inline:Inline shell completions' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q commands' commands "$@"
}
(( $+functions[_q__chat_commands] )) ||
_q__chat_commands() {
    local commands; commands=()
    _describe -t commands 'q chat commands' commands "$@"
}
(( $+functions[_q__completion_commands] )) ||
_q__completion_commands() {
    local commands; commands=()
    _describe -t commands 'q completion commands' commands "$@"
}
(( $+functions[_q__dashboard_commands] )) ||
_q__dashboard_commands() {
    local commands; commands=()
    _describe -t commands 'q dashboard commands' commands "$@"
}
(( $+functions[_q__debug_commands] )) ||
_q__debug_commands() {
    local commands; commands=(
'app:Debug the app' \
'build:Switch to another branch of a Fig.js app' \
'autocomplete-window:Toggle/set autocomplete window debug mode' \
'logs:Show debug logs' \
'input-method:Input method debugger' \
'prompt-accessibility:Prompt accessibility' \
'sample:Sample desktop process' \
'verify-codesign:Debug application codesigning' \
'accessibility:Accessibility' \
'key-tester:Key Tester' \
'diagnostics:Watches diagnostics' \
'query-index:Queries remote repository for updates given the specified metadata' \
'devtools:Open up the devtools of a specific webview' \
'get-index:Displays remote index' \
'list-intellij-variants:Lists installed IntelliJ variants' \
'shell:Disables sourcing of user shell config and instead uses a minimal shell config' \
'fix-permissions:Update the shell config permissions to have the correct owner and access rights' \
'refresh-auth-token:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q debug commands' commands "$@"
}
(( $+functions[_q__debug__accessibility_commands] )) ||
_q__debug__accessibility_commands() {
    local commands; commands=()
    _describe -t commands 'q debug accessibility commands' commands "$@"
}
(( $+functions[_q__debug__app_commands] )) ||
_q__debug__app_commands() {
    local commands; commands=()
    _describe -t commands 'q debug app commands' commands "$@"
}
(( $+functions[_q__debug__autocomplete-window_commands] )) ||
_q__debug__autocomplete-window_commands() {
    local commands; commands=()
    _describe -t commands 'q debug autocomplete-window commands' commands "$@"
}
(( $+functions[_q__debug__build_commands] )) ||
_q__debug__build_commands() {
    local commands; commands=()
    _describe -t commands 'q debug build commands' commands "$@"
}
(( $+functions[_q__debug__devtools_commands] )) ||
_q__debug__devtools_commands() {
    local commands; commands=()
    _describe -t commands 'q debug devtools commands' commands "$@"
}
(( $+functions[_q__debug__diagnostics_commands] )) ||
_q__debug__diagnostics_commands() {
    local commands; commands=()
    _describe -t commands 'q debug diagnostics commands' commands "$@"
}
(( $+functions[_q__debug__fix-permissions_commands] )) ||
_q__debug__fix-permissions_commands() {
    local commands; commands=()
    _describe -t commands 'q debug fix-permissions commands' commands "$@"
}
(( $+functions[_q__debug__get-index_commands] )) ||
_q__debug__get-index_commands() {
    local commands; commands=()
    _describe -t commands 'q debug get-index commands' commands "$@"
}
(( $+functions[_q__debug__help_commands] )) ||
_q__debug__help_commands() {
    local commands; commands=(
'app:Debug the app' \
'build:Switch to another branch of a Fig.js app' \
'autocomplete-window:Toggle/set autocomplete window debug mode' \
'logs:Show debug logs' \
'input-method:Input method debugger' \
'prompt-accessibility:Prompt accessibility' \
'sample:Sample desktop process' \
'verify-codesign:Debug application codesigning' \
'accessibility:Accessibility' \
'key-tester:Key Tester' \
'diagnostics:Watches diagnostics' \
'query-index:Queries remote repository for updates given the specified metadata' \
'devtools:Open up the devtools of a specific webview' \
'get-index:Displays remote index' \
'list-intellij-variants:Lists installed IntelliJ variants' \
'shell:Disables sourcing of user shell config and instead uses a minimal shell config' \
'fix-permissions:Update the shell config permissions to have the correct owner and access rights' \
'refresh-auth-token:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q debug help commands' commands "$@"
}
(( $+functions[_q__debug__help__accessibility_commands] )) ||
_q__debug__help__accessibility_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help accessibility commands' commands "$@"
}
(( $+functions[_q__debug__help__app_commands] )) ||
_q__debug__help__app_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help app commands' commands "$@"
}
(( $+functions[_q__debug__help__autocomplete-window_commands] )) ||
_q__debug__help__autocomplete-window_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help autocomplete-window commands' commands "$@"
}
(( $+functions[_q__debug__help__build_commands] )) ||
_q__debug__help__build_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help build commands' commands "$@"
}
(( $+functions[_q__debug__help__devtools_commands] )) ||
_q__debug__help__devtools_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help devtools commands' commands "$@"
}
(( $+functions[_q__debug__help__diagnostics_commands] )) ||
_q__debug__help__diagnostics_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help diagnostics commands' commands "$@"
}
(( $+functions[_q__debug__help__fix-permissions_commands] )) ||
_q__debug__help__fix-permissions_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help fix-permissions commands' commands "$@"
}
(( $+functions[_q__debug__help__get-index_commands] )) ||
_q__debug__help__get-index_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help get-index commands' commands "$@"
}
(( $+functions[_q__debug__help__help_commands] )) ||
_q__debug__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help help commands' commands "$@"
}
(( $+functions[_q__debug__help__input-method_commands] )) ||
_q__debug__help__input-method_commands() {
    local commands; commands=(
'install:' \
'uninstall:' \
'list:' \
'status:' \
'source:' \
    )
    _describe -t commands 'q debug help input-method commands' commands "$@"
}
(( $+functions[_q__debug__help__input-method__install_commands] )) ||
_q__debug__help__input-method__install_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help input-method install commands' commands "$@"
}
(( $+functions[_q__debug__help__input-method__list_commands] )) ||
_q__debug__help__input-method__list_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help input-method list commands' commands "$@"
}
(( $+functions[_q__debug__help__input-method__source_commands] )) ||
_q__debug__help__input-method__source_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help input-method source commands' commands "$@"
}
(( $+functions[_q__debug__help__input-method__status_commands] )) ||
_q__debug__help__input-method__status_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help input-method status commands' commands "$@"
}
(( $+functions[_q__debug__help__input-method__uninstall_commands] )) ||
_q__debug__help__input-method__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help input-method uninstall commands' commands "$@"
}
(( $+functions[_q__debug__help__key-tester_commands] )) ||
_q__debug__help__key-tester_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help key-tester commands' commands "$@"
}
(( $+functions[_q__debug__help__list-intellij-variants_commands] )) ||
_q__debug__help__list-intellij-variants_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help list-intellij-variants commands' commands "$@"
}
(( $+functions[_q__debug__help__logs_commands] )) ||
_q__debug__help__logs_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help logs commands' commands "$@"
}
(( $+functions[_q__debug__help__prompt-accessibility_commands] )) ||
_q__debug__help__prompt-accessibility_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help prompt-accessibility commands' commands "$@"
}
(( $+functions[_q__debug__help__query-index_commands] )) ||
_q__debug__help__query-index_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help query-index commands' commands "$@"
}
(( $+functions[_q__debug__help__refresh-auth-token_commands] )) ||
_q__debug__help__refresh-auth-token_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help refresh-auth-token commands' commands "$@"
}
(( $+functions[_q__debug__help__sample_commands] )) ||
_q__debug__help__sample_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help sample commands' commands "$@"
}
(( $+functions[_q__debug__help__shell_commands] )) ||
_q__debug__help__shell_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help shell commands' commands "$@"
}
(( $+functions[_q__debug__help__verify-codesign_commands] )) ||
_q__debug__help__verify-codesign_commands() {
    local commands; commands=()
    _describe -t commands 'q debug help verify-codesign commands' commands "$@"
}
(( $+functions[_q__debug__input-method_commands] )) ||
_q__debug__input-method_commands() {
    local commands; commands=(
'install:' \
'uninstall:' \
'list:' \
'status:' \
'source:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q debug input-method commands' commands "$@"
}
(( $+functions[_q__debug__input-method__help_commands] )) ||
_q__debug__input-method__help_commands() {
    local commands; commands=(
'install:' \
'uninstall:' \
'list:' \
'status:' \
'source:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q debug input-method help commands' commands "$@"
}
(( $+functions[_q__debug__input-method__help__help_commands] )) ||
_q__debug__input-method__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q debug input-method help help commands' commands "$@"
}
(( $+functions[_q__debug__input-method__help__install_commands] )) ||
_q__debug__input-method__help__install_commands() {
    local commands; commands=()
    _describe -t commands 'q debug input-method help install commands' commands "$@"
}
(( $+functions[_q__debug__input-method__help__list_commands] )) ||
_q__debug__input-method__help__list_commands() {
    local commands; commands=()
    _describe -t commands 'q debug input-method help list commands' commands "$@"
}
(( $+functions[_q__debug__input-method__help__source_commands] )) ||
_q__debug__input-method__help__source_commands() {
    local commands; commands=()
    _describe -t commands 'q debug input-method help source commands' commands "$@"
}
(( $+functions[_q__debug__input-method__help__status_commands] )) ||
_q__debug__input-method__help__status_commands() {
    local commands; commands=()
    _describe -t commands 'q debug input-method help status commands' commands "$@"
}
(( $+functions[_q__debug__input-method__help__uninstall_commands] )) ||
_q__debug__input-method__help__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'q debug input-method help uninstall commands' commands "$@"
}
(( $+functions[_q__debug__input-method__install_commands] )) ||
_q__debug__input-method__install_commands() {
    local commands; commands=()
    _describe -t commands 'q debug input-method install commands' commands "$@"
}
(( $+functions[_q__debug__input-method__list_commands] )) ||
_q__debug__input-method__list_commands() {
    local commands; commands=()
    _describe -t commands 'q debug input-method list commands' commands "$@"
}
(( $+functions[_q__debug__input-method__source_commands] )) ||
_q__debug__input-method__source_commands() {
    local commands; commands=()
    _describe -t commands 'q debug input-method source commands' commands "$@"
}
(( $+functions[_q__debug__input-method__status_commands] )) ||
_q__debug__input-method__status_commands() {
    local commands; commands=()
    _describe -t commands 'q debug input-method status commands' commands "$@"
}
(( $+functions[_q__debug__input-method__uninstall_commands] )) ||
_q__debug__input-method__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'q debug input-method uninstall commands' commands "$@"
}
(( $+functions[_q__debug__key-tester_commands] )) ||
_q__debug__key-tester_commands() {
    local commands; commands=()
    _describe -t commands 'q debug key-tester commands' commands "$@"
}
(( $+functions[_q__debug__list-intellij-variants_commands] )) ||
_q__debug__list-intellij-variants_commands() {
    local commands; commands=()
    _describe -t commands 'q debug list-intellij-variants commands' commands "$@"
}
(( $+functions[_q__debug__logs_commands] )) ||
_q__debug__logs_commands() {
    local commands; commands=()
    _describe -t commands 'q debug logs commands' commands "$@"
}
(( $+functions[_q__debug__prompt-accessibility_commands] )) ||
_q__debug__prompt-accessibility_commands() {
    local commands; commands=()
    _describe -t commands 'q debug prompt-accessibility commands' commands "$@"
}
(( $+functions[_q__debug__query-index_commands] )) ||
_q__debug__query-index_commands() {
    local commands; commands=()
    _describe -t commands 'q debug query-index commands' commands "$@"
}
(( $+functions[_q__debug__refresh-auth-token_commands] )) ||
_q__debug__refresh-auth-token_commands() {
    local commands; commands=()
    _describe -t commands 'q debug refresh-auth-token commands' commands "$@"
}
(( $+functions[_q__debug__sample_commands] )) ||
_q__debug__sample_commands() {
    local commands; commands=()
    _describe -t commands 'q debug sample commands' commands "$@"
}
(( $+functions[_q__debug__shell_commands] )) ||
_q__debug__shell_commands() {
    local commands; commands=()
    _describe -t commands 'q debug shell commands' commands "$@"
}
(( $+functions[_q__debug__verify-codesign_commands] )) ||
_q__debug__verify-codesign_commands() {
    local commands; commands=()
    _describe -t commands 'q debug verify-codesign commands' commands "$@"
}
(( $+functions[_q__diagnostic_commands] )) ||
_q__diagnostic_commands() {
    local commands; commands=()
    _describe -t commands 'q diagnostic commands' commands "$@"
}
(( $+functions[_q__doctor_commands] )) ||
_q__doctor_commands() {
    local commands; commands=()
    _describe -t commands 'q doctor commands' commands "$@"
}
(( $+functions[_q__help_commands] )) ||
_q__help_commands() {
    local commands; commands=(
'hook:Hook commands' \
'debug:Debug the app' \
'settings:Customize appearance & behavior' \
'setup:Setup cli components' \
'uninstall:Uninstall Amazon Q' \
'update:Update the Amazon Q application' \
'diagnostic:Run diagnostic tests' \
'init:Generate the dotfiles for the given shell' \
'theme:Get or set theme' \
'issue:Create a new Github issue' \
'login:Login' \
'logout:Logout' \
'whoami:Prints details about the current user' \
'profile:Show the profile associated with this idc user' \
'user:Manage your account' \
'doctor:Fix and diagnose common issues' \
'completion:Generate CLI completion spec' \
'internal:Internal subcommands' \
'launch:Launch the desktop app' \
'quit:Quit the desktop app' \
'restart:Restart the desktop app' \
'integrations:Manage system integrations' \
'translate:Natural Language to Shell translation' \
'telemetry:Enable/disable telemetry' \
'version:Version' \
'dashboard:Open the dashboard' \
'chat:AI assistant in your terminal' \
'mcp:Model Context Protocol (MCP)' \
'inline:Inline shell completions' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q help commands' commands "$@"
}
(( $+functions[_q__help__chat_commands] )) ||
_q__help__chat_commands() {
    local commands; commands=()
    _describe -t commands 'q help chat commands' commands "$@"
}
(( $+functions[_q__help__completion_commands] )) ||
_q__help__completion_commands() {
    local commands; commands=()
    _describe -t commands 'q help completion commands' commands "$@"
}
(( $+functions[_q__help__dashboard_commands] )) ||
_q__help__dashboard_commands() {
    local commands; commands=()
    _describe -t commands 'q help dashboard commands' commands "$@"
}
(( $+functions[_q__help__debug_commands] )) ||
_q__help__debug_commands() {
    local commands; commands=(
'app:Debug the app' \
'build:Switch to another branch of a Fig.js app' \
'autocomplete-window:Toggle/set autocomplete window debug mode' \
'logs:Show debug logs' \
'input-method:Input method debugger' \
'prompt-accessibility:Prompt accessibility' \
'sample:Sample desktop process' \
'verify-codesign:Debug application codesigning' \
'accessibility:Accessibility' \
'key-tester:Key Tester' \
'diagnostics:Watches diagnostics' \
'query-index:Queries remote repository for updates given the specified metadata' \
'devtools:Open up the devtools of a specific webview' \
'get-index:Displays remote index' \
'list-intellij-variants:Lists installed IntelliJ variants' \
'shell:Disables sourcing of user shell config and instead uses a minimal shell config' \
'fix-permissions:Update the shell config permissions to have the correct owner and access rights' \
'refresh-auth-token:' \
    )
    _describe -t commands 'q help debug commands' commands "$@"
}
(( $+functions[_q__help__debug__accessibility_commands] )) ||
_q__help__debug__accessibility_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug accessibility commands' commands "$@"
}
(( $+functions[_q__help__debug__app_commands] )) ||
_q__help__debug__app_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug app commands' commands "$@"
}
(( $+functions[_q__help__debug__autocomplete-window_commands] )) ||
_q__help__debug__autocomplete-window_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug autocomplete-window commands' commands "$@"
}
(( $+functions[_q__help__debug__build_commands] )) ||
_q__help__debug__build_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug build commands' commands "$@"
}
(( $+functions[_q__help__debug__devtools_commands] )) ||
_q__help__debug__devtools_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug devtools commands' commands "$@"
}
(( $+functions[_q__help__debug__diagnostics_commands] )) ||
_q__help__debug__diagnostics_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug diagnostics commands' commands "$@"
}
(( $+functions[_q__help__debug__fix-permissions_commands] )) ||
_q__help__debug__fix-permissions_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug fix-permissions commands' commands "$@"
}
(( $+functions[_q__help__debug__get-index_commands] )) ||
_q__help__debug__get-index_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug get-index commands' commands "$@"
}
(( $+functions[_q__help__debug__input-method_commands] )) ||
_q__help__debug__input-method_commands() {
    local commands; commands=(
'install:' \
'uninstall:' \
'list:' \
'status:' \
'source:' \
    )
    _describe -t commands 'q help debug input-method commands' commands "$@"
}
(( $+functions[_q__help__debug__input-method__install_commands] )) ||
_q__help__debug__input-method__install_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug input-method install commands' commands "$@"
}
(( $+functions[_q__help__debug__input-method__list_commands] )) ||
_q__help__debug__input-method__list_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug input-method list commands' commands "$@"
}
(( $+functions[_q__help__debug__input-method__source_commands] )) ||
_q__help__debug__input-method__source_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug input-method source commands' commands "$@"
}
(( $+functions[_q__help__debug__input-method__status_commands] )) ||
_q__help__debug__input-method__status_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug input-method status commands' commands "$@"
}
(( $+functions[_q__help__debug__input-method__uninstall_commands] )) ||
_q__help__debug__input-method__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug input-method uninstall commands' commands "$@"
}
(( $+functions[_q__help__debug__key-tester_commands] )) ||
_q__help__debug__key-tester_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug key-tester commands' commands "$@"
}
(( $+functions[_q__help__debug__list-intellij-variants_commands] )) ||
_q__help__debug__list-intellij-variants_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug list-intellij-variants commands' commands "$@"
}
(( $+functions[_q__help__debug__logs_commands] )) ||
_q__help__debug__logs_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug logs commands' commands "$@"
}
(( $+functions[_q__help__debug__prompt-accessibility_commands] )) ||
_q__help__debug__prompt-accessibility_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug prompt-accessibility commands' commands "$@"
}
(( $+functions[_q__help__debug__query-index_commands] )) ||
_q__help__debug__query-index_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug query-index commands' commands "$@"
}
(( $+functions[_q__help__debug__refresh-auth-token_commands] )) ||
_q__help__debug__refresh-auth-token_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug refresh-auth-token commands' commands "$@"
}
(( $+functions[_q__help__debug__sample_commands] )) ||
_q__help__debug__sample_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug sample commands' commands "$@"
}
(( $+functions[_q__help__debug__shell_commands] )) ||
_q__help__debug__shell_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug shell commands' commands "$@"
}
(( $+functions[_q__help__debug__verify-codesign_commands] )) ||
_q__help__debug__verify-codesign_commands() {
    local commands; commands=()
    _describe -t commands 'q help debug verify-codesign commands' commands "$@"
}
(( $+functions[_q__help__diagnostic_commands] )) ||
_q__help__diagnostic_commands() {
    local commands; commands=()
    _describe -t commands 'q help diagnostic commands' commands "$@"
}
(( $+functions[_q__help__doctor_commands] )) ||
_q__help__doctor_commands() {
    local commands; commands=()
    _describe -t commands 'q help doctor commands' commands "$@"
}
(( $+functions[_q__help__help_commands] )) ||
_q__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q help help commands' commands "$@"
}
(( $+functions[_q__help__hook_commands] )) ||
_q__help__hook_commands() {
    local commands; commands=(
'editbuffer:' \
'hide:' \
'init:' \
'integration-ready:' \
'keyboard-focus-changed:' \
'pre-exec:' \
'prompt:' \
'ssh:' \
'clear-autocomplete-cache:' \
    )
    _describe -t commands 'q help hook commands' commands "$@"
}
(( $+functions[_q__help__hook__clear-autocomplete-cache_commands] )) ||
_q__help__hook__clear-autocomplete-cache_commands() {
    local commands; commands=()
    _describe -t commands 'q help hook clear-autocomplete-cache commands' commands "$@"
}
(( $+functions[_q__help__hook__editbuffer_commands] )) ||
_q__help__hook__editbuffer_commands() {
    local commands; commands=()
    _describe -t commands 'q help hook editbuffer commands' commands "$@"
}
(( $+functions[_q__help__hook__hide_commands] )) ||
_q__help__hook__hide_commands() {
    local commands; commands=()
    _describe -t commands 'q help hook hide commands' commands "$@"
}
(( $+functions[_q__help__hook__init_commands] )) ||
_q__help__hook__init_commands() {
    local commands; commands=()
    _describe -t commands 'q help hook init commands' commands "$@"
}
(( $+functions[_q__help__hook__integration-ready_commands] )) ||
_q__help__hook__integration-ready_commands() {
    local commands; commands=()
    _describe -t commands 'q help hook integration-ready commands' commands "$@"
}
(( $+functions[_q__help__hook__keyboard-focus-changed_commands] )) ||
_q__help__hook__keyboard-focus-changed_commands() {
    local commands; commands=()
    _describe -t commands 'q help hook keyboard-focus-changed commands' commands "$@"
}
(( $+functions[_q__help__hook__pre-exec_commands] )) ||
_q__help__hook__pre-exec_commands() {
    local commands; commands=()
    _describe -t commands 'q help hook pre-exec commands' commands "$@"
}
(( $+functions[_q__help__hook__prompt_commands] )) ||
_q__help__hook__prompt_commands() {
    local commands; commands=()
    _describe -t commands 'q help hook prompt commands' commands "$@"
}
(( $+functions[_q__help__hook__ssh_commands] )) ||
_q__help__hook__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q help hook ssh commands' commands "$@"
}
(( $+functions[_q__help__init_commands] )) ||
_q__help__init_commands() {
    local commands; commands=()
    _describe -t commands 'q help init commands' commands "$@"
}
(( $+functions[_q__help__inline_commands] )) ||
_q__help__inline_commands() {
    local commands; commands=(
'enable:Enables inline' \
'disable:Disables inline' \
'status:Shows the status of inline' \
'set-customization:Select a customization if you have any available' \
'show-customizations:Show the available customizations' \
    )
    _describe -t commands 'q help inline commands' commands "$@"
}
(( $+functions[_q__help__inline__disable_commands] )) ||
_q__help__inline__disable_commands() {
    local commands; commands=()
    _describe -t commands 'q help inline disable commands' commands "$@"
}
(( $+functions[_q__help__inline__enable_commands] )) ||
_q__help__inline__enable_commands() {
    local commands; commands=()
    _describe -t commands 'q help inline enable commands' commands "$@"
}
(( $+functions[_q__help__inline__set-customization_commands] )) ||
_q__help__inline__set-customization_commands() {
    local commands; commands=()
    _describe -t commands 'q help inline set-customization commands' commands "$@"
}
(( $+functions[_q__help__inline__show-customizations_commands] )) ||
_q__help__inline__show-customizations_commands() {
    local commands; commands=()
    _describe -t commands 'q help inline show-customizations commands' commands "$@"
}
(( $+functions[_q__help__inline__status_commands] )) ||
_q__help__inline__status_commands() {
    local commands; commands=()
    _describe -t commands 'q help inline status commands' commands "$@"
}
(( $+functions[_q__help__integrations_commands] )) ||
_q__help__integrations_commands() {
    local commands; commands=(
'install:' \
'uninstall:' \
'reinstall:' \
'status:' \
    )
    _describe -t commands 'q help integrations commands' commands "$@"
}
(( $+functions[_q__help__integrations__install_commands] )) ||
_q__help__integrations__install_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
    )
    _describe -t commands 'q help integrations install commands' commands "$@"
}
(( $+functions[_q__help__integrations__install__all_commands] )) ||
_q__help__integrations__install__all_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations install all commands' commands "$@"
}
(( $+functions[_q__help__integrations__install__autostart-entry_commands] )) ||
_q__help__integrations__install__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations install autostart-entry commands' commands "$@"
}
(( $+functions[_q__help__integrations__install__dotfiles_commands] )) ||
_q__help__integrations__install__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations install dotfiles commands' commands "$@"
}
(( $+functions[_q__help__integrations__install__gnome-shell-extension_commands] )) ||
_q__help__integrations__install__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations install gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__help__integrations__install__input-method_commands] )) ||
_q__help__integrations__install__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations install input-method commands' commands "$@"
}
(( $+functions[_q__help__integrations__install__intellij-plugin_commands] )) ||
_q__help__integrations__install__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations install intellij-plugin commands' commands "$@"
}
(( $+functions[_q__help__integrations__install__ssh_commands] )) ||
_q__help__integrations__install__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations install ssh commands' commands "$@"
}
(( $+functions[_q__help__integrations__install__vscode_commands] )) ||
_q__help__integrations__install__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations install vscode commands' commands "$@"
}
(( $+functions[_q__help__integrations__reinstall_commands] )) ||
_q__help__integrations__reinstall_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
    )
    _describe -t commands 'q help integrations reinstall commands' commands "$@"
}
(( $+functions[_q__help__integrations__reinstall__all_commands] )) ||
_q__help__integrations__reinstall__all_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations reinstall all commands' commands "$@"
}
(( $+functions[_q__help__integrations__reinstall__autostart-entry_commands] )) ||
_q__help__integrations__reinstall__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations reinstall autostart-entry commands' commands "$@"
}
(( $+functions[_q__help__integrations__reinstall__dotfiles_commands] )) ||
_q__help__integrations__reinstall__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations reinstall dotfiles commands' commands "$@"
}
(( $+functions[_q__help__integrations__reinstall__gnome-shell-extension_commands] )) ||
_q__help__integrations__reinstall__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations reinstall gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__help__integrations__reinstall__input-method_commands] )) ||
_q__help__integrations__reinstall__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations reinstall input-method commands' commands "$@"
}
(( $+functions[_q__help__integrations__reinstall__intellij-plugin_commands] )) ||
_q__help__integrations__reinstall__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations reinstall intellij-plugin commands' commands "$@"
}
(( $+functions[_q__help__integrations__reinstall__ssh_commands] )) ||
_q__help__integrations__reinstall__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations reinstall ssh commands' commands "$@"
}
(( $+functions[_q__help__integrations__reinstall__vscode_commands] )) ||
_q__help__integrations__reinstall__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations reinstall vscode commands' commands "$@"
}
(( $+functions[_q__help__integrations__status_commands] )) ||
_q__help__integrations__status_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
    )
    _describe -t commands 'q help integrations status commands' commands "$@"
}
(( $+functions[_q__help__integrations__status__all_commands] )) ||
_q__help__integrations__status__all_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations status all commands' commands "$@"
}
(( $+functions[_q__help__integrations__status__autostart-entry_commands] )) ||
_q__help__integrations__status__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations status autostart-entry commands' commands "$@"
}
(( $+functions[_q__help__integrations__status__dotfiles_commands] )) ||
_q__help__integrations__status__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations status dotfiles commands' commands "$@"
}
(( $+functions[_q__help__integrations__status__gnome-shell-extension_commands] )) ||
_q__help__integrations__status__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations status gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__help__integrations__status__input-method_commands] )) ||
_q__help__integrations__status__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations status input-method commands' commands "$@"
}
(( $+functions[_q__help__integrations__status__intellij-plugin_commands] )) ||
_q__help__integrations__status__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations status intellij-plugin commands' commands "$@"
}
(( $+functions[_q__help__integrations__status__ssh_commands] )) ||
_q__help__integrations__status__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations status ssh commands' commands "$@"
}
(( $+functions[_q__help__integrations__status__vscode_commands] )) ||
_q__help__integrations__status__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations status vscode commands' commands "$@"
}
(( $+functions[_q__help__integrations__uninstall_commands] )) ||
_q__help__integrations__uninstall_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
    )
    _describe -t commands 'q help integrations uninstall commands' commands "$@"
}
(( $+functions[_q__help__integrations__uninstall__all_commands] )) ||
_q__help__integrations__uninstall__all_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations uninstall all commands' commands "$@"
}
(( $+functions[_q__help__integrations__uninstall__autostart-entry_commands] )) ||
_q__help__integrations__uninstall__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations uninstall autostart-entry commands' commands "$@"
}
(( $+functions[_q__help__integrations__uninstall__dotfiles_commands] )) ||
_q__help__integrations__uninstall__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations uninstall dotfiles commands' commands "$@"
}
(( $+functions[_q__help__integrations__uninstall__gnome-shell-extension_commands] )) ||
_q__help__integrations__uninstall__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations uninstall gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__help__integrations__uninstall__input-method_commands] )) ||
_q__help__integrations__uninstall__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations uninstall input-method commands' commands "$@"
}
(( $+functions[_q__help__integrations__uninstall__intellij-plugin_commands] )) ||
_q__help__integrations__uninstall__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations uninstall intellij-plugin commands' commands "$@"
}
(( $+functions[_q__help__integrations__uninstall__ssh_commands] )) ||
_q__help__integrations__uninstall__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations uninstall ssh commands' commands "$@"
}
(( $+functions[_q__help__integrations__uninstall__vscode_commands] )) ||
_q__help__integrations__uninstall__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q help integrations uninstall vscode commands' commands "$@"
}
(( $+functions[_q__help__internal_commands] )) ||
_q__help__internal_commands() {
    local commands; commands=(
'pre-cmd:Command that is run during the PreCmd section of the Amazon Q integrations' \
'local-state:Change the local-state file' \
'callback:Callback used for the internal pseudoterminal' \
'install:Install the Amazon Q cli' \
'uninstall:Uninstall the Amazon Q cli' \
'get-shell:' \
'hostname:' \
'should-figterm-launch:Detects if Figterm should be launched' \
'event:' \
'sockets-dir:' \
'stream-from-socket:' \
'figterm-socket-path:' \
'ipc:' \
'uninstall-for-all-users:' \
'remove-data-dir:' \
'uuidgen:' \
'open-uninstall-page:' \
'ssh-local-command:Displays prompt to install remote shell integrations' \
'prompt-ssh:\\\[Deprecated\\\] Displays prompt to install remote shell integrations' \
'attempt-to-finish-input-method-installation:' \
'dump-state:' \
'finish-update:' \
'swap-files:' \
'brew-uninstall:' \
'generate-ssh:Generates an SSH configuration file' \
'inline-shell-completion:' \
'inline-shell-completion-accept:' \
'multiplexer:' \
    )
    _describe -t commands 'q help internal commands' commands "$@"
}
(( $+functions[_q__help__internal__attempt-to-finish-input-method-installation_commands] )) ||
_q__help__internal__attempt-to-finish-input-method-installation_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal attempt-to-finish-input-method-installation commands' commands "$@"
}
(( $+functions[_q__help__internal__brew-uninstall_commands] )) ||
_q__help__internal__brew-uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal brew-uninstall commands' commands "$@"
}
(( $+functions[_q__help__internal__callback_commands] )) ||
_q__help__internal__callback_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal callback commands' commands "$@"
}
(( $+functions[_q__help__internal__dump-state_commands] )) ||
_q__help__internal__dump-state_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal dump-state commands' commands "$@"
}
(( $+functions[_q__help__internal__event_commands] )) ||
_q__help__internal__event_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal event commands' commands "$@"
}
(( $+functions[_q__help__internal__figterm-socket-path_commands] )) ||
_q__help__internal__figterm-socket-path_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal figterm-socket-path commands' commands "$@"
}
(( $+functions[_q__help__internal__finish-update_commands] )) ||
_q__help__internal__finish-update_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal finish-update commands' commands "$@"
}
(( $+functions[_q__help__internal__generate-ssh_commands] )) ||
_q__help__internal__generate-ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal generate-ssh commands' commands "$@"
}
(( $+functions[_q__help__internal__get-shell_commands] )) ||
_q__help__internal__get-shell_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal get-shell commands' commands "$@"
}
(( $+functions[_q__help__internal__hostname_commands] )) ||
_q__help__internal__hostname_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal hostname commands' commands "$@"
}
(( $+functions[_q__help__internal__inline-shell-completion_commands] )) ||
_q__help__internal__inline-shell-completion_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal inline-shell-completion commands' commands "$@"
}
(( $+functions[_q__help__internal__inline-shell-completion-accept_commands] )) ||
_q__help__internal__inline-shell-completion-accept_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal inline-shell-completion-accept commands' commands "$@"
}
(( $+functions[_q__help__internal__install_commands] )) ||
_q__help__internal__install_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal install commands' commands "$@"
}
(( $+functions[_q__help__internal__ipc_commands] )) ||
_q__help__internal__ipc_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal ipc commands' commands "$@"
}
(( $+functions[_q__help__internal__local-state_commands] )) ||
_q__help__internal__local-state_commands() {
    local commands; commands=(
'init:Reload the state listener' \
'all:List all the settings' \
    )
    _describe -t commands 'q help internal local-state commands' commands "$@"
}
(( $+functions[_q__help__internal__local-state__all_commands] )) ||
_q__help__internal__local-state__all_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal local-state all commands' commands "$@"
}
(( $+functions[_q__help__internal__local-state__init_commands] )) ||
_q__help__internal__local-state__init_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal local-state init commands' commands "$@"
}
(( $+functions[_q__help__internal__multiplexer_commands] )) ||
_q__help__internal__multiplexer_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal multiplexer commands' commands "$@"
}
(( $+functions[_q__help__internal__open-uninstall-page_commands] )) ||
_q__help__internal__open-uninstall-page_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal open-uninstall-page commands' commands "$@"
}
(( $+functions[_q__help__internal__pre-cmd_commands] )) ||
_q__help__internal__pre-cmd_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal pre-cmd commands' commands "$@"
}
(( $+functions[_q__help__internal__prompt-ssh_commands] )) ||
_q__help__internal__prompt-ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal prompt-ssh commands' commands "$@"
}
(( $+functions[_q__help__internal__remove-data-dir_commands] )) ||
_q__help__internal__remove-data-dir_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal remove-data-dir commands' commands "$@"
}
(( $+functions[_q__help__internal__should-figterm-launch_commands] )) ||
_q__help__internal__should-figterm-launch_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal should-figterm-launch commands' commands "$@"
}
(( $+functions[_q__help__internal__sockets-dir_commands] )) ||
_q__help__internal__sockets-dir_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal sockets-dir commands' commands "$@"
}
(( $+functions[_q__help__internal__ssh-local-command_commands] )) ||
_q__help__internal__ssh-local-command_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal ssh-local-command commands' commands "$@"
}
(( $+functions[_q__help__internal__stream-from-socket_commands] )) ||
_q__help__internal__stream-from-socket_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal stream-from-socket commands' commands "$@"
}
(( $+functions[_q__help__internal__swap-files_commands] )) ||
_q__help__internal__swap-files_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal swap-files commands' commands "$@"
}
(( $+functions[_q__help__internal__uninstall_commands] )) ||
_q__help__internal__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal uninstall commands' commands "$@"
}
(( $+functions[_q__help__internal__uninstall-for-all-users_commands] )) ||
_q__help__internal__uninstall-for-all-users_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal uninstall-for-all-users commands' commands "$@"
}
(( $+functions[_q__help__internal__uuidgen_commands] )) ||
_q__help__internal__uuidgen_commands() {
    local commands; commands=()
    _describe -t commands 'q help internal uuidgen commands' commands "$@"
}
(( $+functions[_q__help__issue_commands] )) ||
_q__help__issue_commands() {
    local commands; commands=()
    _describe -t commands 'q help issue commands' commands "$@"
}
(( $+functions[_q__help__launch_commands] )) ||
_q__help__launch_commands() {
    local commands; commands=()
    _describe -t commands 'q help launch commands' commands "$@"
}
(( $+functions[_q__help__login_commands] )) ||
_q__help__login_commands() {
    local commands; commands=()
    _describe -t commands 'q help login commands' commands "$@"
}
(( $+functions[_q__help__logout_commands] )) ||
_q__help__logout_commands() {
    local commands; commands=()
    _describe -t commands 'q help logout commands' commands "$@"
}
(( $+functions[_q__help__mcp_commands] )) ||
_q__help__mcp_commands() {
    local commands; commands=()
    _describe -t commands 'q help mcp commands' commands "$@"
}
(( $+functions[_q__help__profile_commands] )) ||
_q__help__profile_commands() {
    local commands; commands=()
    _describe -t commands 'q help profile commands' commands "$@"
}
(( $+functions[_q__help__quit_commands] )) ||
_q__help__quit_commands() {
    local commands; commands=()
    _describe -t commands 'q help quit commands' commands "$@"
}
(( $+functions[_q__help__restart_commands] )) ||
_q__help__restart_commands() {
    local commands; commands=()
    _describe -t commands 'q help restart commands' commands "$@"
}
(( $+functions[_q__help__settings_commands] )) ||
_q__help__settings_commands() {
    local commands; commands=(
'open:Open the settings file' \
'all:List all the settings' \
    )
    _describe -t commands 'q help settings commands' commands "$@"
}
(( $+functions[_q__help__settings__all_commands] )) ||
_q__help__settings__all_commands() {
    local commands; commands=()
    _describe -t commands 'q help settings all commands' commands "$@"
}
(( $+functions[_q__help__settings__open_commands] )) ||
_q__help__settings__open_commands() {
    local commands; commands=()
    _describe -t commands 'q help settings open commands' commands "$@"
}
(( $+functions[_q__help__setup_commands] )) ||
_q__help__setup_commands() {
    local commands; commands=()
    _describe -t commands 'q help setup commands' commands "$@"
}
(( $+functions[_q__help__telemetry_commands] )) ||
_q__help__telemetry_commands() {
    local commands; commands=(
'enable:' \
'disable:' \
'status:' \
    )
    _describe -t commands 'q help telemetry commands' commands "$@"
}
(( $+functions[_q__help__telemetry__disable_commands] )) ||
_q__help__telemetry__disable_commands() {
    local commands; commands=()
    _describe -t commands 'q help telemetry disable commands' commands "$@"
}
(( $+functions[_q__help__telemetry__enable_commands] )) ||
_q__help__telemetry__enable_commands() {
    local commands; commands=()
    _describe -t commands 'q help telemetry enable commands' commands "$@"
}
(( $+functions[_q__help__telemetry__status_commands] )) ||
_q__help__telemetry__status_commands() {
    local commands; commands=()
    _describe -t commands 'q help telemetry status commands' commands "$@"
}
(( $+functions[_q__help__theme_commands] )) ||
_q__help__theme_commands() {
    local commands; commands=()
    _describe -t commands 'q help theme commands' commands "$@"
}
(( $+functions[_q__help__translate_commands] )) ||
_q__help__translate_commands() {
    local commands; commands=()
    _describe -t commands 'q help translate commands' commands "$@"
}
(( $+functions[_q__help__uninstall_commands] )) ||
_q__help__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'q help uninstall commands' commands "$@"
}
(( $+functions[_q__help__update_commands] )) ||
_q__help__update_commands() {
    local commands; commands=()
    _describe -t commands 'q help update commands' commands "$@"
}
(( $+functions[_q__help__user_commands] )) ||
_q__help__user_commands() {
    local commands; commands=(
'login:Login' \
'logout:Logout' \
'whoami:Prints details about the current user' \
'profile:Show the profile associated with this idc user' \
    )
    _describe -t commands 'q help user commands' commands "$@"
}
(( $+functions[_q__help__user__login_commands] )) ||
_q__help__user__login_commands() {
    local commands; commands=()
    _describe -t commands 'q help user login commands' commands "$@"
}
(( $+functions[_q__help__user__logout_commands] )) ||
_q__help__user__logout_commands() {
    local commands; commands=()
    _describe -t commands 'q help user logout commands' commands "$@"
}
(( $+functions[_q__help__user__profile_commands] )) ||
_q__help__user__profile_commands() {
    local commands; commands=()
    _describe -t commands 'q help user profile commands' commands "$@"
}
(( $+functions[_q__help__user__whoami_commands] )) ||
_q__help__user__whoami_commands() {
    local commands; commands=()
    _describe -t commands 'q help user whoami commands' commands "$@"
}
(( $+functions[_q__help__version_commands] )) ||
_q__help__version_commands() {
    local commands; commands=()
    _describe -t commands 'q help version commands' commands "$@"
}
(( $+functions[_q__help__whoami_commands] )) ||
_q__help__whoami_commands() {
    local commands; commands=()
    _describe -t commands 'q help whoami commands' commands "$@"
}
(( $+functions[_q__hook_commands] )) ||
_q__hook_commands() {
    local commands; commands=(
'editbuffer:' \
'hide:' \
'init:' \
'integration-ready:' \
'keyboard-focus-changed:' \
'pre-exec:' \
'prompt:' \
'ssh:' \
'clear-autocomplete-cache:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q hook commands' commands "$@"
}
(( $+functions[_q__hook__clear-autocomplete-cache_commands] )) ||
_q__hook__clear-autocomplete-cache_commands() {
    local commands; commands=()
    _describe -t commands 'q hook clear-autocomplete-cache commands' commands "$@"
}
(( $+functions[_q__hook__editbuffer_commands] )) ||
_q__hook__editbuffer_commands() {
    local commands; commands=()
    _describe -t commands 'q hook editbuffer commands' commands "$@"
}
(( $+functions[_q__hook__help_commands] )) ||
_q__hook__help_commands() {
    local commands; commands=(
'editbuffer:' \
'hide:' \
'init:' \
'integration-ready:' \
'keyboard-focus-changed:' \
'pre-exec:' \
'prompt:' \
'ssh:' \
'clear-autocomplete-cache:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q hook help commands' commands "$@"
}
(( $+functions[_q__hook__help__clear-autocomplete-cache_commands] )) ||
_q__hook__help__clear-autocomplete-cache_commands() {
    local commands; commands=()
    _describe -t commands 'q hook help clear-autocomplete-cache commands' commands "$@"
}
(( $+functions[_q__hook__help__editbuffer_commands] )) ||
_q__hook__help__editbuffer_commands() {
    local commands; commands=()
    _describe -t commands 'q hook help editbuffer commands' commands "$@"
}
(( $+functions[_q__hook__help__help_commands] )) ||
_q__hook__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q hook help help commands' commands "$@"
}
(( $+functions[_q__hook__help__hide_commands] )) ||
_q__hook__help__hide_commands() {
    local commands; commands=()
    _describe -t commands 'q hook help hide commands' commands "$@"
}
(( $+functions[_q__hook__help__init_commands] )) ||
_q__hook__help__init_commands() {
    local commands; commands=()
    _describe -t commands 'q hook help init commands' commands "$@"
}
(( $+functions[_q__hook__help__integration-ready_commands] )) ||
_q__hook__help__integration-ready_commands() {
    local commands; commands=()
    _describe -t commands 'q hook help integration-ready commands' commands "$@"
}
(( $+functions[_q__hook__help__keyboard-focus-changed_commands] )) ||
_q__hook__help__keyboard-focus-changed_commands() {
    local commands; commands=()
    _describe -t commands 'q hook help keyboard-focus-changed commands' commands "$@"
}
(( $+functions[_q__hook__help__pre-exec_commands] )) ||
_q__hook__help__pre-exec_commands() {
    local commands; commands=()
    _describe -t commands 'q hook help pre-exec commands' commands "$@"
}
(( $+functions[_q__hook__help__prompt_commands] )) ||
_q__hook__help__prompt_commands() {
    local commands; commands=()
    _describe -t commands 'q hook help prompt commands' commands "$@"
}
(( $+functions[_q__hook__help__ssh_commands] )) ||
_q__hook__help__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q hook help ssh commands' commands "$@"
}
(( $+functions[_q__hook__hide_commands] )) ||
_q__hook__hide_commands() {
    local commands; commands=()
    _describe -t commands 'q hook hide commands' commands "$@"
}
(( $+functions[_q__hook__init_commands] )) ||
_q__hook__init_commands() {
    local commands; commands=()
    _describe -t commands 'q hook init commands' commands "$@"
}
(( $+functions[_q__hook__integration-ready_commands] )) ||
_q__hook__integration-ready_commands() {
    local commands; commands=()
    _describe -t commands 'q hook integration-ready commands' commands "$@"
}
(( $+functions[_q__hook__keyboard-focus-changed_commands] )) ||
_q__hook__keyboard-focus-changed_commands() {
    local commands; commands=()
    _describe -t commands 'q hook keyboard-focus-changed commands' commands "$@"
}
(( $+functions[_q__hook__pre-exec_commands] )) ||
_q__hook__pre-exec_commands() {
    local commands; commands=()
    _describe -t commands 'q hook pre-exec commands' commands "$@"
}
(( $+functions[_q__hook__prompt_commands] )) ||
_q__hook__prompt_commands() {
    local commands; commands=()
    _describe -t commands 'q hook prompt commands' commands "$@"
}
(( $+functions[_q__hook__ssh_commands] )) ||
_q__hook__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q hook ssh commands' commands "$@"
}
(( $+functions[_q__init_commands] )) ||
_q__init_commands() {
    local commands; commands=()
    _describe -t commands 'q init commands' commands "$@"
}
(( $+functions[_q__inline_commands] )) ||
_q__inline_commands() {
    local commands; commands=(
'enable:Enables inline' \
'disable:Disables inline' \
'status:Shows the status of inline' \
'set-customization:Select a customization if you have any available' \
'show-customizations:Show the available customizations' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q inline commands' commands "$@"
}
(( $+functions[_q__inline__disable_commands] )) ||
_q__inline__disable_commands() {
    local commands; commands=()
    _describe -t commands 'q inline disable commands' commands "$@"
}
(( $+functions[_q__inline__enable_commands] )) ||
_q__inline__enable_commands() {
    local commands; commands=()
    _describe -t commands 'q inline enable commands' commands "$@"
}
(( $+functions[_q__inline__help_commands] )) ||
_q__inline__help_commands() {
    local commands; commands=(
'enable:Enables inline' \
'disable:Disables inline' \
'status:Shows the status of inline' \
'set-customization:Select a customization if you have any available' \
'show-customizations:Show the available customizations' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q inline help commands' commands "$@"
}
(( $+functions[_q__inline__help__disable_commands] )) ||
_q__inline__help__disable_commands() {
    local commands; commands=()
    _describe -t commands 'q inline help disable commands' commands "$@"
}
(( $+functions[_q__inline__help__enable_commands] )) ||
_q__inline__help__enable_commands() {
    local commands; commands=()
    _describe -t commands 'q inline help enable commands' commands "$@"
}
(( $+functions[_q__inline__help__help_commands] )) ||
_q__inline__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q inline help help commands' commands "$@"
}
(( $+functions[_q__inline__help__set-customization_commands] )) ||
_q__inline__help__set-customization_commands() {
    local commands; commands=()
    _describe -t commands 'q inline help set-customization commands' commands "$@"
}
(( $+functions[_q__inline__help__show-customizations_commands] )) ||
_q__inline__help__show-customizations_commands() {
    local commands; commands=()
    _describe -t commands 'q inline help show-customizations commands' commands "$@"
}
(( $+functions[_q__inline__help__status_commands] )) ||
_q__inline__help__status_commands() {
    local commands; commands=()
    _describe -t commands 'q inline help status commands' commands "$@"
}
(( $+functions[_q__inline__set-customization_commands] )) ||
_q__inline__set-customization_commands() {
    local commands; commands=()
    _describe -t commands 'q inline set-customization commands' commands "$@"
}
(( $+functions[_q__inline__show-customizations_commands] )) ||
_q__inline__show-customizations_commands() {
    local commands; commands=()
    _describe -t commands 'q inline show-customizations commands' commands "$@"
}
(( $+functions[_q__inline__status_commands] )) ||
_q__inline__status_commands() {
    local commands; commands=()
    _describe -t commands 'q inline status commands' commands "$@"
}
(( $+functions[_q__integrations_commands] )) ||
_q__integrations_commands() {
    local commands; commands=(
'install:' \
'uninstall:' \
'reinstall:' \
'status:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q integrations commands' commands "$@"
}
(( $+functions[_q__integrations__help_commands] )) ||
_q__integrations__help_commands() {
    local commands; commands=(
'install:' \
'uninstall:' \
'reinstall:' \
'status:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q integrations help commands' commands "$@"
}
(( $+functions[_q__integrations__help__help_commands] )) ||
_q__integrations__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help help commands' commands "$@"
}
(( $+functions[_q__integrations__help__install_commands] )) ||
_q__integrations__help__install_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
    )
    _describe -t commands 'q integrations help install commands' commands "$@"
}
(( $+functions[_q__integrations__help__install__all_commands] )) ||
_q__integrations__help__install__all_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help install all commands' commands "$@"
}
(( $+functions[_q__integrations__help__install__autostart-entry_commands] )) ||
_q__integrations__help__install__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help install autostart-entry commands' commands "$@"
}
(( $+functions[_q__integrations__help__install__dotfiles_commands] )) ||
_q__integrations__help__install__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help install dotfiles commands' commands "$@"
}
(( $+functions[_q__integrations__help__install__gnome-shell-extension_commands] )) ||
_q__integrations__help__install__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help install gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__integrations__help__install__input-method_commands] )) ||
_q__integrations__help__install__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help install input-method commands' commands "$@"
}
(( $+functions[_q__integrations__help__install__intellij-plugin_commands] )) ||
_q__integrations__help__install__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help install intellij-plugin commands' commands "$@"
}
(( $+functions[_q__integrations__help__install__ssh_commands] )) ||
_q__integrations__help__install__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help install ssh commands' commands "$@"
}
(( $+functions[_q__integrations__help__install__vscode_commands] )) ||
_q__integrations__help__install__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help install vscode commands' commands "$@"
}
(( $+functions[_q__integrations__help__reinstall_commands] )) ||
_q__integrations__help__reinstall_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
    )
    _describe -t commands 'q integrations help reinstall commands' commands "$@"
}
(( $+functions[_q__integrations__help__reinstall__all_commands] )) ||
_q__integrations__help__reinstall__all_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help reinstall all commands' commands "$@"
}
(( $+functions[_q__integrations__help__reinstall__autostart-entry_commands] )) ||
_q__integrations__help__reinstall__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help reinstall autostart-entry commands' commands "$@"
}
(( $+functions[_q__integrations__help__reinstall__dotfiles_commands] )) ||
_q__integrations__help__reinstall__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help reinstall dotfiles commands' commands "$@"
}
(( $+functions[_q__integrations__help__reinstall__gnome-shell-extension_commands] )) ||
_q__integrations__help__reinstall__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help reinstall gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__integrations__help__reinstall__input-method_commands] )) ||
_q__integrations__help__reinstall__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help reinstall input-method commands' commands "$@"
}
(( $+functions[_q__integrations__help__reinstall__intellij-plugin_commands] )) ||
_q__integrations__help__reinstall__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help reinstall intellij-plugin commands' commands "$@"
}
(( $+functions[_q__integrations__help__reinstall__ssh_commands] )) ||
_q__integrations__help__reinstall__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help reinstall ssh commands' commands "$@"
}
(( $+functions[_q__integrations__help__reinstall__vscode_commands] )) ||
_q__integrations__help__reinstall__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help reinstall vscode commands' commands "$@"
}
(( $+functions[_q__integrations__help__status_commands] )) ||
_q__integrations__help__status_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
    )
    _describe -t commands 'q integrations help status commands' commands "$@"
}
(( $+functions[_q__integrations__help__status__all_commands] )) ||
_q__integrations__help__status__all_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help status all commands' commands "$@"
}
(( $+functions[_q__integrations__help__status__autostart-entry_commands] )) ||
_q__integrations__help__status__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help status autostart-entry commands' commands "$@"
}
(( $+functions[_q__integrations__help__status__dotfiles_commands] )) ||
_q__integrations__help__status__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help status dotfiles commands' commands "$@"
}
(( $+functions[_q__integrations__help__status__gnome-shell-extension_commands] )) ||
_q__integrations__help__status__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help status gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__integrations__help__status__input-method_commands] )) ||
_q__integrations__help__status__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help status input-method commands' commands "$@"
}
(( $+functions[_q__integrations__help__status__intellij-plugin_commands] )) ||
_q__integrations__help__status__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help status intellij-plugin commands' commands "$@"
}
(( $+functions[_q__integrations__help__status__ssh_commands] )) ||
_q__integrations__help__status__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help status ssh commands' commands "$@"
}
(( $+functions[_q__integrations__help__status__vscode_commands] )) ||
_q__integrations__help__status__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help status vscode commands' commands "$@"
}
(( $+functions[_q__integrations__help__uninstall_commands] )) ||
_q__integrations__help__uninstall_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
    )
    _describe -t commands 'q integrations help uninstall commands' commands "$@"
}
(( $+functions[_q__integrations__help__uninstall__all_commands] )) ||
_q__integrations__help__uninstall__all_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help uninstall all commands' commands "$@"
}
(( $+functions[_q__integrations__help__uninstall__autostart-entry_commands] )) ||
_q__integrations__help__uninstall__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help uninstall autostart-entry commands' commands "$@"
}
(( $+functions[_q__integrations__help__uninstall__dotfiles_commands] )) ||
_q__integrations__help__uninstall__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help uninstall dotfiles commands' commands "$@"
}
(( $+functions[_q__integrations__help__uninstall__gnome-shell-extension_commands] )) ||
_q__integrations__help__uninstall__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help uninstall gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__integrations__help__uninstall__input-method_commands] )) ||
_q__integrations__help__uninstall__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help uninstall input-method commands' commands "$@"
}
(( $+functions[_q__integrations__help__uninstall__intellij-plugin_commands] )) ||
_q__integrations__help__uninstall__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help uninstall intellij-plugin commands' commands "$@"
}
(( $+functions[_q__integrations__help__uninstall__ssh_commands] )) ||
_q__integrations__help__uninstall__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help uninstall ssh commands' commands "$@"
}
(( $+functions[_q__integrations__help__uninstall__vscode_commands] )) ||
_q__integrations__help__uninstall__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations help uninstall vscode commands' commands "$@"
}
(( $+functions[_q__integrations__install_commands] )) ||
_q__integrations__install_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q integrations install commands' commands "$@"
}
(( $+functions[_q__integrations__install__all_commands] )) ||
_q__integrations__install__all_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install all commands' commands "$@"
}
(( $+functions[_q__integrations__install__autostart-entry_commands] )) ||
_q__integrations__install__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install autostart-entry commands' commands "$@"
}
(( $+functions[_q__integrations__install__dotfiles_commands] )) ||
_q__integrations__install__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install dotfiles commands' commands "$@"
}
(( $+functions[_q__integrations__install__gnome-shell-extension_commands] )) ||
_q__integrations__install__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__integrations__install__help_commands] )) ||
_q__integrations__install__help_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q integrations install help commands' commands "$@"
}
(( $+functions[_q__integrations__install__help__all_commands] )) ||
_q__integrations__install__help__all_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install help all commands' commands "$@"
}
(( $+functions[_q__integrations__install__help__autostart-entry_commands] )) ||
_q__integrations__install__help__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install help autostart-entry commands' commands "$@"
}
(( $+functions[_q__integrations__install__help__dotfiles_commands] )) ||
_q__integrations__install__help__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install help dotfiles commands' commands "$@"
}
(( $+functions[_q__integrations__install__help__gnome-shell-extension_commands] )) ||
_q__integrations__install__help__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install help gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__integrations__install__help__help_commands] )) ||
_q__integrations__install__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install help help commands' commands "$@"
}
(( $+functions[_q__integrations__install__help__input-method_commands] )) ||
_q__integrations__install__help__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install help input-method commands' commands "$@"
}
(( $+functions[_q__integrations__install__help__intellij-plugin_commands] )) ||
_q__integrations__install__help__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install help intellij-plugin commands' commands "$@"
}
(( $+functions[_q__integrations__install__help__ssh_commands] )) ||
_q__integrations__install__help__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install help ssh commands' commands "$@"
}
(( $+functions[_q__integrations__install__help__vscode_commands] )) ||
_q__integrations__install__help__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install help vscode commands' commands "$@"
}
(( $+functions[_q__integrations__install__input-method_commands] )) ||
_q__integrations__install__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install input-method commands' commands "$@"
}
(( $+functions[_q__integrations__install__intellij-plugin_commands] )) ||
_q__integrations__install__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install intellij-plugin commands' commands "$@"
}
(( $+functions[_q__integrations__install__ssh_commands] )) ||
_q__integrations__install__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install ssh commands' commands "$@"
}
(( $+functions[_q__integrations__install__vscode_commands] )) ||
_q__integrations__install__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations install vscode commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall_commands] )) ||
_q__integrations__reinstall_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q integrations reinstall commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__all_commands] )) ||
_q__integrations__reinstall__all_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall all commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__autostart-entry_commands] )) ||
_q__integrations__reinstall__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall autostart-entry commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__dotfiles_commands] )) ||
_q__integrations__reinstall__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall dotfiles commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__gnome-shell-extension_commands] )) ||
_q__integrations__reinstall__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__help_commands] )) ||
_q__integrations__reinstall__help_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q integrations reinstall help commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__help__all_commands] )) ||
_q__integrations__reinstall__help__all_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall help all commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__help__autostart-entry_commands] )) ||
_q__integrations__reinstall__help__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall help autostart-entry commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__help__dotfiles_commands] )) ||
_q__integrations__reinstall__help__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall help dotfiles commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__help__gnome-shell-extension_commands] )) ||
_q__integrations__reinstall__help__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall help gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__help__help_commands] )) ||
_q__integrations__reinstall__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall help help commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__help__input-method_commands] )) ||
_q__integrations__reinstall__help__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall help input-method commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__help__intellij-plugin_commands] )) ||
_q__integrations__reinstall__help__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall help intellij-plugin commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__help__ssh_commands] )) ||
_q__integrations__reinstall__help__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall help ssh commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__help__vscode_commands] )) ||
_q__integrations__reinstall__help__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall help vscode commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__input-method_commands] )) ||
_q__integrations__reinstall__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall input-method commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__intellij-plugin_commands] )) ||
_q__integrations__reinstall__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall intellij-plugin commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__ssh_commands] )) ||
_q__integrations__reinstall__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall ssh commands' commands "$@"
}
(( $+functions[_q__integrations__reinstall__vscode_commands] )) ||
_q__integrations__reinstall__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations reinstall vscode commands' commands "$@"
}
(( $+functions[_q__integrations__status_commands] )) ||
_q__integrations__status_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q integrations status commands' commands "$@"
}
(( $+functions[_q__integrations__status__all_commands] )) ||
_q__integrations__status__all_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status all commands' commands "$@"
}
(( $+functions[_q__integrations__status__autostart-entry_commands] )) ||
_q__integrations__status__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status autostart-entry commands' commands "$@"
}
(( $+functions[_q__integrations__status__dotfiles_commands] )) ||
_q__integrations__status__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status dotfiles commands' commands "$@"
}
(( $+functions[_q__integrations__status__gnome-shell-extension_commands] )) ||
_q__integrations__status__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__integrations__status__help_commands] )) ||
_q__integrations__status__help_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q integrations status help commands' commands "$@"
}
(( $+functions[_q__integrations__status__help__all_commands] )) ||
_q__integrations__status__help__all_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status help all commands' commands "$@"
}
(( $+functions[_q__integrations__status__help__autostart-entry_commands] )) ||
_q__integrations__status__help__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status help autostart-entry commands' commands "$@"
}
(( $+functions[_q__integrations__status__help__dotfiles_commands] )) ||
_q__integrations__status__help__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status help dotfiles commands' commands "$@"
}
(( $+functions[_q__integrations__status__help__gnome-shell-extension_commands] )) ||
_q__integrations__status__help__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status help gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__integrations__status__help__help_commands] )) ||
_q__integrations__status__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status help help commands' commands "$@"
}
(( $+functions[_q__integrations__status__help__input-method_commands] )) ||
_q__integrations__status__help__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status help input-method commands' commands "$@"
}
(( $+functions[_q__integrations__status__help__intellij-plugin_commands] )) ||
_q__integrations__status__help__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status help intellij-plugin commands' commands "$@"
}
(( $+functions[_q__integrations__status__help__ssh_commands] )) ||
_q__integrations__status__help__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status help ssh commands' commands "$@"
}
(( $+functions[_q__integrations__status__help__vscode_commands] )) ||
_q__integrations__status__help__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status help vscode commands' commands "$@"
}
(( $+functions[_q__integrations__status__input-method_commands] )) ||
_q__integrations__status__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status input-method commands' commands "$@"
}
(( $+functions[_q__integrations__status__intellij-plugin_commands] )) ||
_q__integrations__status__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status intellij-plugin commands' commands "$@"
}
(( $+functions[_q__integrations__status__ssh_commands] )) ||
_q__integrations__status__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status ssh commands' commands "$@"
}
(( $+functions[_q__integrations__status__vscode_commands] )) ||
_q__integrations__status__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations status vscode commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall_commands] )) ||
_q__integrations__uninstall_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q integrations uninstall commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__all_commands] )) ||
_q__integrations__uninstall__all_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall all commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__autostart-entry_commands] )) ||
_q__integrations__uninstall__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall autostart-entry commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__dotfiles_commands] )) ||
_q__integrations__uninstall__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall dotfiles commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__gnome-shell-extension_commands] )) ||
_q__integrations__uninstall__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__help_commands] )) ||
_q__integrations__uninstall__help_commands() {
    local commands; commands=(
'dotfiles:' \
'ssh:' \
'input-method:' \
'vscode:' \
'intellij-plugin:' \
'autostart-entry:' \
'gnome-shell-extension:' \
'all:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q integrations uninstall help commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__help__all_commands] )) ||
_q__integrations__uninstall__help__all_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall help all commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__help__autostart-entry_commands] )) ||
_q__integrations__uninstall__help__autostart-entry_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall help autostart-entry commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__help__dotfiles_commands] )) ||
_q__integrations__uninstall__help__dotfiles_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall help dotfiles commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__help__gnome-shell-extension_commands] )) ||
_q__integrations__uninstall__help__gnome-shell-extension_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall help gnome-shell-extension commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__help__help_commands] )) ||
_q__integrations__uninstall__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall help help commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__help__input-method_commands] )) ||
_q__integrations__uninstall__help__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall help input-method commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__help__intellij-plugin_commands] )) ||
_q__integrations__uninstall__help__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall help intellij-plugin commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__help__ssh_commands] )) ||
_q__integrations__uninstall__help__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall help ssh commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__help__vscode_commands] )) ||
_q__integrations__uninstall__help__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall help vscode commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__input-method_commands] )) ||
_q__integrations__uninstall__input-method_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall input-method commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__intellij-plugin_commands] )) ||
_q__integrations__uninstall__intellij-plugin_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall intellij-plugin commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__ssh_commands] )) ||
_q__integrations__uninstall__ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall ssh commands' commands "$@"
}
(( $+functions[_q__integrations__uninstall__vscode_commands] )) ||
_q__integrations__uninstall__vscode_commands() {
    local commands; commands=()
    _describe -t commands 'q integrations uninstall vscode commands' commands "$@"
}
(( $+functions[_q__internal_commands] )) ||
_q__internal_commands() {
    local commands; commands=(
'pre-cmd:Command that is run during the PreCmd section of the Amazon Q integrations' \
'local-state:Change the local-state file' \
'callback:Callback used for the internal pseudoterminal' \
'install:Install the Amazon Q cli' \
'uninstall:Uninstall the Amazon Q cli' \
'get-shell:' \
'hostname:' \
'should-figterm-launch:Detects if Figterm should be launched' \
'event:' \
'sockets-dir:' \
'stream-from-socket:' \
'figterm-socket-path:' \
'ipc:' \
'uninstall-for-all-users:' \
'remove-data-dir:' \
'uuidgen:' \
'open-uninstall-page:' \
'ssh-local-command:Displays prompt to install remote shell integrations' \
'prompt-ssh:\\\[Deprecated\\\] Displays prompt to install remote shell integrations' \
'attempt-to-finish-input-method-installation:' \
'dump-state:' \
'finish-update:' \
'swap-files:' \
'brew-uninstall:' \
'generate-ssh:Generates an SSH configuration file' \
'inline-shell-completion:' \
'inline-shell-completion-accept:' \
'multiplexer:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q internal commands' commands "$@"
}
(( $+functions[_q__internal__attempt-to-finish-input-method-installation_commands] )) ||
_q__internal__attempt-to-finish-input-method-installation_commands() {
    local commands; commands=()
    _describe -t commands 'q internal attempt-to-finish-input-method-installation commands' commands "$@"
}
(( $+functions[_q__internal__brew-uninstall_commands] )) ||
_q__internal__brew-uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'q internal brew-uninstall commands' commands "$@"
}
(( $+functions[_q__internal__callback_commands] )) ||
_q__internal__callback_commands() {
    local commands; commands=()
    _describe -t commands 'q internal callback commands' commands "$@"
}
(( $+functions[_q__internal__dump-state_commands] )) ||
_q__internal__dump-state_commands() {
    local commands; commands=()
    _describe -t commands 'q internal dump-state commands' commands "$@"
}
(( $+functions[_q__internal__event_commands] )) ||
_q__internal__event_commands() {
    local commands; commands=()
    _describe -t commands 'q internal event commands' commands "$@"
}
(( $+functions[_q__internal__figterm-socket-path_commands] )) ||
_q__internal__figterm-socket-path_commands() {
    local commands; commands=()
    _describe -t commands 'q internal figterm-socket-path commands' commands "$@"
}
(( $+functions[_q__internal__finish-update_commands] )) ||
_q__internal__finish-update_commands() {
    local commands; commands=()
    _describe -t commands 'q internal finish-update commands' commands "$@"
}
(( $+functions[_q__internal__generate-ssh_commands] )) ||
_q__internal__generate-ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q internal generate-ssh commands' commands "$@"
}
(( $+functions[_q__internal__get-shell_commands] )) ||
_q__internal__get-shell_commands() {
    local commands; commands=()
    _describe -t commands 'q internal get-shell commands' commands "$@"
}
(( $+functions[_q__internal__help_commands] )) ||
_q__internal__help_commands() {
    local commands; commands=(
'pre-cmd:Command that is run during the PreCmd section of the Amazon Q integrations' \
'local-state:Change the local-state file' \
'callback:Callback used for the internal pseudoterminal' \
'install:Install the Amazon Q cli' \
'uninstall:Uninstall the Amazon Q cli' \
'get-shell:' \
'hostname:' \
'should-figterm-launch:Detects if Figterm should be launched' \
'event:' \
'sockets-dir:' \
'stream-from-socket:' \
'figterm-socket-path:' \
'ipc:' \
'uninstall-for-all-users:' \
'remove-data-dir:' \
'uuidgen:' \
'open-uninstall-page:' \
'ssh-local-command:Displays prompt to install remote shell integrations' \
'prompt-ssh:\\\[Deprecated\\\] Displays prompt to install remote shell integrations' \
'attempt-to-finish-input-method-installation:' \
'dump-state:' \
'finish-update:' \
'swap-files:' \
'brew-uninstall:' \
'generate-ssh:Generates an SSH configuration file' \
'inline-shell-completion:' \
'inline-shell-completion-accept:' \
'multiplexer:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q internal help commands' commands "$@"
}
(( $+functions[_q__internal__help__attempt-to-finish-input-method-installation_commands] )) ||
_q__internal__help__attempt-to-finish-input-method-installation_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help attempt-to-finish-input-method-installation commands' commands "$@"
}
(( $+functions[_q__internal__help__brew-uninstall_commands] )) ||
_q__internal__help__brew-uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help brew-uninstall commands' commands "$@"
}
(( $+functions[_q__internal__help__callback_commands] )) ||
_q__internal__help__callback_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help callback commands' commands "$@"
}
(( $+functions[_q__internal__help__dump-state_commands] )) ||
_q__internal__help__dump-state_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help dump-state commands' commands "$@"
}
(( $+functions[_q__internal__help__event_commands] )) ||
_q__internal__help__event_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help event commands' commands "$@"
}
(( $+functions[_q__internal__help__figterm-socket-path_commands] )) ||
_q__internal__help__figterm-socket-path_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help figterm-socket-path commands' commands "$@"
}
(( $+functions[_q__internal__help__finish-update_commands] )) ||
_q__internal__help__finish-update_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help finish-update commands' commands "$@"
}
(( $+functions[_q__internal__help__generate-ssh_commands] )) ||
_q__internal__help__generate-ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help generate-ssh commands' commands "$@"
}
(( $+functions[_q__internal__help__get-shell_commands] )) ||
_q__internal__help__get-shell_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help get-shell commands' commands "$@"
}
(( $+functions[_q__internal__help__help_commands] )) ||
_q__internal__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help help commands' commands "$@"
}
(( $+functions[_q__internal__help__hostname_commands] )) ||
_q__internal__help__hostname_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help hostname commands' commands "$@"
}
(( $+functions[_q__internal__help__inline-shell-completion_commands] )) ||
_q__internal__help__inline-shell-completion_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help inline-shell-completion commands' commands "$@"
}
(( $+functions[_q__internal__help__inline-shell-completion-accept_commands] )) ||
_q__internal__help__inline-shell-completion-accept_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help inline-shell-completion-accept commands' commands "$@"
}
(( $+functions[_q__internal__help__install_commands] )) ||
_q__internal__help__install_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help install commands' commands "$@"
}
(( $+functions[_q__internal__help__ipc_commands] )) ||
_q__internal__help__ipc_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help ipc commands' commands "$@"
}
(( $+functions[_q__internal__help__local-state_commands] )) ||
_q__internal__help__local-state_commands() {
    local commands; commands=(
'init:Reload the state listener' \
'all:List all the settings' \
    )
    _describe -t commands 'q internal help local-state commands' commands "$@"
}
(( $+functions[_q__internal__help__local-state__all_commands] )) ||
_q__internal__help__local-state__all_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help local-state all commands' commands "$@"
}
(( $+functions[_q__internal__help__local-state__init_commands] )) ||
_q__internal__help__local-state__init_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help local-state init commands' commands "$@"
}
(( $+functions[_q__internal__help__multiplexer_commands] )) ||
_q__internal__help__multiplexer_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help multiplexer commands' commands "$@"
}
(( $+functions[_q__internal__help__open-uninstall-page_commands] )) ||
_q__internal__help__open-uninstall-page_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help open-uninstall-page commands' commands "$@"
}
(( $+functions[_q__internal__help__pre-cmd_commands] )) ||
_q__internal__help__pre-cmd_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help pre-cmd commands' commands "$@"
}
(( $+functions[_q__internal__help__prompt-ssh_commands] )) ||
_q__internal__help__prompt-ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help prompt-ssh commands' commands "$@"
}
(( $+functions[_q__internal__help__remove-data-dir_commands] )) ||
_q__internal__help__remove-data-dir_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help remove-data-dir commands' commands "$@"
}
(( $+functions[_q__internal__help__should-figterm-launch_commands] )) ||
_q__internal__help__should-figterm-launch_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help should-figterm-launch commands' commands "$@"
}
(( $+functions[_q__internal__help__sockets-dir_commands] )) ||
_q__internal__help__sockets-dir_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help sockets-dir commands' commands "$@"
}
(( $+functions[_q__internal__help__ssh-local-command_commands] )) ||
_q__internal__help__ssh-local-command_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help ssh-local-command commands' commands "$@"
}
(( $+functions[_q__internal__help__stream-from-socket_commands] )) ||
_q__internal__help__stream-from-socket_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help stream-from-socket commands' commands "$@"
}
(( $+functions[_q__internal__help__swap-files_commands] )) ||
_q__internal__help__swap-files_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help swap-files commands' commands "$@"
}
(( $+functions[_q__internal__help__uninstall_commands] )) ||
_q__internal__help__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help uninstall commands' commands "$@"
}
(( $+functions[_q__internal__help__uninstall-for-all-users_commands] )) ||
_q__internal__help__uninstall-for-all-users_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help uninstall-for-all-users commands' commands "$@"
}
(( $+functions[_q__internal__help__uuidgen_commands] )) ||
_q__internal__help__uuidgen_commands() {
    local commands; commands=()
    _describe -t commands 'q internal help uuidgen commands' commands "$@"
}
(( $+functions[_q__internal__hostname_commands] )) ||
_q__internal__hostname_commands() {
    local commands; commands=()
    _describe -t commands 'q internal hostname commands' commands "$@"
}
(( $+functions[_q__internal__inline-shell-completion_commands] )) ||
_q__internal__inline-shell-completion_commands() {
    local commands; commands=()
    _describe -t commands 'q internal inline-shell-completion commands' commands "$@"
}
(( $+functions[_q__internal__inline-shell-completion-accept_commands] )) ||
_q__internal__inline-shell-completion-accept_commands() {
    local commands; commands=()
    _describe -t commands 'q internal inline-shell-completion-accept commands' commands "$@"
}
(( $+functions[_q__internal__install_commands] )) ||
_q__internal__install_commands() {
    local commands; commands=()
    _describe -t commands 'q internal install commands' commands "$@"
}
(( $+functions[_q__internal__ipc_commands] )) ||
_q__internal__ipc_commands() {
    local commands; commands=()
    _describe -t commands 'q internal ipc commands' commands "$@"
}
(( $+functions[_q__internal__local-state_commands] )) ||
_q__internal__local-state_commands() {
    local commands; commands=(
'init:Reload the state listener' \
'all:List all the settings' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q internal local-state commands' commands "$@"
}
(( $+functions[_q__internal__local-state__all_commands] )) ||
_q__internal__local-state__all_commands() {
    local commands; commands=()
    _describe -t commands 'q internal local-state all commands' commands "$@"
}
(( $+functions[_q__internal__local-state__help_commands] )) ||
_q__internal__local-state__help_commands() {
    local commands; commands=(
'init:Reload the state listener' \
'all:List all the settings' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q internal local-state help commands' commands "$@"
}
(( $+functions[_q__internal__local-state__help__all_commands] )) ||
_q__internal__local-state__help__all_commands() {
    local commands; commands=()
    _describe -t commands 'q internal local-state help all commands' commands "$@"
}
(( $+functions[_q__internal__local-state__help__help_commands] )) ||
_q__internal__local-state__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q internal local-state help help commands' commands "$@"
}
(( $+functions[_q__internal__local-state__help__init_commands] )) ||
_q__internal__local-state__help__init_commands() {
    local commands; commands=()
    _describe -t commands 'q internal local-state help init commands' commands "$@"
}
(( $+functions[_q__internal__local-state__init_commands] )) ||
_q__internal__local-state__init_commands() {
    local commands; commands=()
    _describe -t commands 'q internal local-state init commands' commands "$@"
}
(( $+functions[_q__internal__multiplexer_commands] )) ||
_q__internal__multiplexer_commands() {
    local commands; commands=()
    _describe -t commands 'q internal multiplexer commands' commands "$@"
}
(( $+functions[_q__internal__open-uninstall-page_commands] )) ||
_q__internal__open-uninstall-page_commands() {
    local commands; commands=()
    _describe -t commands 'q internal open-uninstall-page commands' commands "$@"
}
(( $+functions[_q__internal__pre-cmd_commands] )) ||
_q__internal__pre-cmd_commands() {
    local commands; commands=()
    _describe -t commands 'q internal pre-cmd commands' commands "$@"
}
(( $+functions[_q__internal__prompt-ssh_commands] )) ||
_q__internal__prompt-ssh_commands() {
    local commands; commands=()
    _describe -t commands 'q internal prompt-ssh commands' commands "$@"
}
(( $+functions[_q__internal__remove-data-dir_commands] )) ||
_q__internal__remove-data-dir_commands() {
    local commands; commands=()
    _describe -t commands 'q internal remove-data-dir commands' commands "$@"
}
(( $+functions[_q__internal__should-figterm-launch_commands] )) ||
_q__internal__should-figterm-launch_commands() {
    local commands; commands=()
    _describe -t commands 'q internal should-figterm-launch commands' commands "$@"
}
(( $+functions[_q__internal__sockets-dir_commands] )) ||
_q__internal__sockets-dir_commands() {
    local commands; commands=()
    _describe -t commands 'q internal sockets-dir commands' commands "$@"
}
(( $+functions[_q__internal__ssh-local-command_commands] )) ||
_q__internal__ssh-local-command_commands() {
    local commands; commands=()
    _describe -t commands 'q internal ssh-local-command commands' commands "$@"
}
(( $+functions[_q__internal__stream-from-socket_commands] )) ||
_q__internal__stream-from-socket_commands() {
    local commands; commands=()
    _describe -t commands 'q internal stream-from-socket commands' commands "$@"
}
(( $+functions[_q__internal__swap-files_commands] )) ||
_q__internal__swap-files_commands() {
    local commands; commands=()
    _describe -t commands 'q internal swap-files commands' commands "$@"
}
(( $+functions[_q__internal__uninstall_commands] )) ||
_q__internal__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'q internal uninstall commands' commands "$@"
}
(( $+functions[_q__internal__uninstall-for-all-users_commands] )) ||
_q__internal__uninstall-for-all-users_commands() {
    local commands; commands=()
    _describe -t commands 'q internal uninstall-for-all-users commands' commands "$@"
}
(( $+functions[_q__internal__uuidgen_commands] )) ||
_q__internal__uuidgen_commands() {
    local commands; commands=()
    _describe -t commands 'q internal uuidgen commands' commands "$@"
}
(( $+functions[_q__issue_commands] )) ||
_q__issue_commands() {
    local commands; commands=()
    _describe -t commands 'q issue commands' commands "$@"
}
(( $+functions[_q__launch_commands] )) ||
_q__launch_commands() {
    local commands; commands=()
    _describe -t commands 'q launch commands' commands "$@"
}
(( $+functions[_q__login_commands] )) ||
_q__login_commands() {
    local commands; commands=()
    _describe -t commands 'q login commands' commands "$@"
}
(( $+functions[_q__logout_commands] )) ||
_q__logout_commands() {
    local commands; commands=()
    _describe -t commands 'q logout commands' commands "$@"
}
(( $+functions[_q__mcp_commands] )) ||
_q__mcp_commands() {
    local commands; commands=()
    _describe -t commands 'q mcp commands' commands "$@"
}
(( $+functions[_q__profile_commands] )) ||
_q__profile_commands() {
    local commands; commands=()
    _describe -t commands 'q profile commands' commands "$@"
}
(( $+functions[_q__quit_commands] )) ||
_q__quit_commands() {
    local commands; commands=()
    _describe -t commands 'q quit commands' commands "$@"
}
(( $+functions[_q__restart_commands] )) ||
_q__restart_commands() {
    local commands; commands=()
    _describe -t commands 'q restart commands' commands "$@"
}
(( $+functions[_q__settings_commands] )) ||
_q__settings_commands() {
    local commands; commands=(
'open:Open the settings file' \
'all:List all the settings' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q settings commands' commands "$@"
}
(( $+functions[_q__settings__all_commands] )) ||
_q__settings__all_commands() {
    local commands; commands=()
    _describe -t commands 'q settings all commands' commands "$@"
}
(( $+functions[_q__settings__help_commands] )) ||
_q__settings__help_commands() {
    local commands; commands=(
'open:Open the settings file' \
'all:List all the settings' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q settings help commands' commands "$@"
}
(( $+functions[_q__settings__help__all_commands] )) ||
_q__settings__help__all_commands() {
    local commands; commands=()
    _describe -t commands 'q settings help all commands' commands "$@"
}
(( $+functions[_q__settings__help__help_commands] )) ||
_q__settings__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q settings help help commands' commands "$@"
}
(( $+functions[_q__settings__help__open_commands] )) ||
_q__settings__help__open_commands() {
    local commands; commands=()
    _describe -t commands 'q settings help open commands' commands "$@"
}
(( $+functions[_q__settings__open_commands] )) ||
_q__settings__open_commands() {
    local commands; commands=()
    _describe -t commands 'q settings open commands' commands "$@"
}
(( $+functions[_q__setup_commands] )) ||
_q__setup_commands() {
    local commands; commands=()
    _describe -t commands 'q setup commands' commands "$@"
}
(( $+functions[_q__telemetry_commands] )) ||
_q__telemetry_commands() {
    local commands; commands=(
'enable:' \
'disable:' \
'status:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q telemetry commands' commands "$@"
}
(( $+functions[_q__telemetry__disable_commands] )) ||
_q__telemetry__disable_commands() {
    local commands; commands=()
    _describe -t commands 'q telemetry disable commands' commands "$@"
}
(( $+functions[_q__telemetry__enable_commands] )) ||
_q__telemetry__enable_commands() {
    local commands; commands=()
    _describe -t commands 'q telemetry enable commands' commands "$@"
}
(( $+functions[_q__telemetry__help_commands] )) ||
_q__telemetry__help_commands() {
    local commands; commands=(
'enable:' \
'disable:' \
'status:' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q telemetry help commands' commands "$@"
}
(( $+functions[_q__telemetry__help__disable_commands] )) ||
_q__telemetry__help__disable_commands() {
    local commands; commands=()
    _describe -t commands 'q telemetry help disable commands' commands "$@"
}
(( $+functions[_q__telemetry__help__enable_commands] )) ||
_q__telemetry__help__enable_commands() {
    local commands; commands=()
    _describe -t commands 'q telemetry help enable commands' commands "$@"
}
(( $+functions[_q__telemetry__help__help_commands] )) ||
_q__telemetry__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q telemetry help help commands' commands "$@"
}
(( $+functions[_q__telemetry__help__status_commands] )) ||
_q__telemetry__help__status_commands() {
    local commands; commands=()
    _describe -t commands 'q telemetry help status commands' commands "$@"
}
(( $+functions[_q__telemetry__status_commands] )) ||
_q__telemetry__status_commands() {
    local commands; commands=()
    _describe -t commands 'q telemetry status commands' commands "$@"
}
(( $+functions[_q__theme_commands] )) ||
_q__theme_commands() {
    local commands; commands=()
    _describe -t commands 'q theme commands' commands "$@"
}
(( $+functions[_q__translate_commands] )) ||
_q__translate_commands() {
    local commands; commands=()
    _describe -t commands 'q translate commands' commands "$@"
}
(( $+functions[_q__uninstall_commands] )) ||
_q__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'q uninstall commands' commands "$@"
}
(( $+functions[_q__update_commands] )) ||
_q__update_commands() {
    local commands; commands=()
    _describe -t commands 'q update commands' commands "$@"
}
(( $+functions[_q__user_commands] )) ||
_q__user_commands() {
    local commands; commands=(
'login:Login' \
'logout:Logout' \
'whoami:Prints details about the current user' \
'profile:Show the profile associated with this idc user' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q user commands' commands "$@"
}
(( $+functions[_q__user__help_commands] )) ||
_q__user__help_commands() {
    local commands; commands=(
'login:Login' \
'logout:Logout' \
'whoami:Prints details about the current user' \
'profile:Show the profile associated with this idc user' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'q user help commands' commands "$@"
}
(( $+functions[_q__user__help__help_commands] )) ||
_q__user__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'q user help help commands' commands "$@"
}
(( $+functions[_q__user__help__login_commands] )) ||
_q__user__help__login_commands() {
    local commands; commands=()
    _describe -t commands 'q user help login commands' commands "$@"
}
(( $+functions[_q__user__help__logout_commands] )) ||
_q__user__help__logout_commands() {
    local commands; commands=()
    _describe -t commands 'q user help logout commands' commands "$@"
}
(( $+functions[_q__user__help__profile_commands] )) ||
_q__user__help__profile_commands() {
    local commands; commands=()
    _describe -t commands 'q user help profile commands' commands "$@"
}
(( $+functions[_q__user__help__whoami_commands] )) ||
_q__user__help__whoami_commands() {
    local commands; commands=()
    _describe -t commands 'q user help whoami commands' commands "$@"
}
(( $+functions[_q__user__login_commands] )) ||
_q__user__login_commands() {
    local commands; commands=()
    _describe -t commands 'q user login commands' commands "$@"
}
(( $+functions[_q__user__logout_commands] )) ||
_q__user__logout_commands() {
    local commands; commands=()
    _describe -t commands 'q user logout commands' commands "$@"
}
(( $+functions[_q__user__profile_commands] )) ||
_q__user__profile_commands() {
    local commands; commands=()
    _describe -t commands 'q user profile commands' commands "$@"
}
(( $+functions[_q__user__whoami_commands] )) ||
_q__user__whoami_commands() {
    local commands; commands=()
    _describe -t commands 'q user whoami commands' commands "$@"
}
(( $+functions[_q__version_commands] )) ||
_q__version_commands() {
    local commands; commands=()
    _describe -t commands 'q version commands' commands "$@"
}
(( $+functions[_q__whoami_commands] )) ||
_q__whoami_commands() {
    local commands; commands=()
    _describe -t commands 'q whoami commands' commands "$@"
}

if [ "$funcstack[1]" = "_q" ]; then
    _q "$@"
else
    compdef _q q
fi

