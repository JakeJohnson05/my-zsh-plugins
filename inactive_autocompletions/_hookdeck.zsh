#compdef _hookdeck hookdeck

function _hookdeck {
  local -a commands

  _arguments -C \
    '--api-base[Sets the API base URL (default "https://api.hookdeck.com")]:' \
    '--api-key[Your API key to use for the command]:' \
    '--cli-key[(deprecated) Your API key to use for the command]:' \
    '--color[turn on/off color output (on, off, auto)]:' \
    '--config[config file (default is $HOME/.config/hookdeck/config.toml)]:' \
    '--console-base[Sets the web console base URL (default "https://console.hookdeck.com")]:' \
    '--dashboard-base[Sets the web dashboard base URL (default "https://dashboard.hookdeck.com")]:' \
    '--device-name[device name]:' \
    '--insecure[Allow invalid TLS certificates]' \
    '--log-level[log level (debug, info, warn, error)]:' \
    '(-p --profile)'{-p,--profile}'[profile name (default "default")]:' \
    '(-v --version)'{-v,--version}'[Get the version of the Hookdeck CLI]' \
    '--ws-base[Sets the Websocket base URL (default "wss://ws.hookdeck.com")]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "ci:Login to your Hookdeck workspace in CI"
      "completion:Generate bash and zsh completion scripts"
      "help:Help about any command"
      "listen:Forward webhooks for a source to your local server"
      "login:Login to your Hookdeck account"
      "logout:Logout of your Hookdeck account"
      "version:Get the version of the Hookdeck CLI"
      "whoami:Show the logged-in user"
      "workspace:Manage your workspaces"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  ci)
    _hookdeck_ci
    ;;
  completion)
    _hookdeck_completion
    ;;
  help)
    _hookdeck_help
    ;;
  listen)
    _hookdeck_listen
    ;;
  login)
    _hookdeck_login
    ;;
  logout)
    _hookdeck_logout
    ;;
  version)
    _hookdeck_version
    ;;
  whoami)
    _hookdeck_whoami
    ;;
  workspace)
    _hookdeck_workspace
    ;;
  esac
}

function _hookdeck_ci {
  _arguments \
    '--name[Your CI name (ex: $GITHUB_REF)]:' \
    '--api-base[Sets the API base URL (default "https://api.hookdeck.com")]:' \
    '--api-key[Your API key to use for the command]:' \
    '--cli-key[(deprecated) Your API key to use for the command]:' \
    '--color[turn on/off color output (on, off, auto)]:' \
    '--config[config file (default is $HOME/.config/hookdeck/config.toml)]:' \
    '--console-base[Sets the web console base URL (default "https://console.hookdeck.com")]:' \
    '--dashboard-base[Sets the web dashboard base URL (default "https://dashboard.hookdeck.com")]:' \
    '--device-name[device name]:' \
    '--insecure[Allow invalid TLS certificates]' \
    '--log-level[log level (debug, info, warn, error)]:' \
    '(-p --profile)'{-p,--profile}'[profile name (default "default")]:' \
    '--ws-base[Sets the Websocket base URL (default "wss://ws.hookdeck.com")]:'
}

function _hookdeck_completion {
  _arguments \
    '(-h --help)'{-h,--help}'[help for completion]' \
    '--shell[The shell to generate completion commands for. Supports "bash" or "zsh"]:' \
    '--api-base[Sets the API base URL (default "https://api.hookdeck.com")]:' \
    '--api-key[Your API key to use for the command]:' \
    '--cli-key[(deprecated) Your API key to use for the command]:' \
    '--color[turn on/off color output (on, off, auto)]:' \
    '--config[config file (default is $HOME/.config/hookdeck/config.toml)]:' \
    '--console-base[Sets the web console base URL (default "https://console.hookdeck.com")]:' \
    '--dashboard-base[Sets the web dashboard base URL (default "https://dashboard.hookdeck.com")]:' \
    '--device-name[device name]:' \
    '--insecure[Allow invalid TLS certificates]' \
    '--log-level[log level (debug, info, warn, error)]:' \
    '(-p --profile)'{-p,--profile}'[profile name (default "default")]:' \
    '--ws-base[Sets the Websocket base URL (default "wss://ws.hookdeck.com")]:'
}

function _hookdeck_help {
  _arguments \
    '--api-base[Sets the API base URL (default "https://api.hookdeck.com")]:' \
    '--api-key[Your API key to use for the command]:' \
    '--cli-key[(deprecated) Your API key to use for the command]:' \
    '--color[turn on/off color output (on, off, auto)]:' \
    '--config[config file (default is $HOME/.config/hookdeck/config.toml)]:' \
    '--console-base[Sets the web console base URL (default "https://console.hookdeck.com")]:' \
    '--dashboard-base[Sets the web dashboard base URL (default "https://dashboard.hookdeck.com")]:' \
    '--device-name[device name]:' \
    '--insecure[Allow invalid TLS certificates]' \
    '--log-level[log level (debug, info, warn, error)]:' \
    '(-p --profile)'{-p,--profile}'[profile name (default "default")]:' \
    '--ws-base[Sets the Websocket base URL (default "wss://ws.hookdeck.com")]:'
}

function _hookdeck_listen {
  _arguments \
    '--no-wss[Force unencrypted ws:// protocol instead of wss://]' \
    '--api-base[Sets the API base URL (default "https://api.hookdeck.com")]:' \
    '--api-key[Your API key to use for the command]:' \
    '--cli-key[(deprecated) Your API key to use for the command]:' \
    '--color[turn on/off color output (on, off, auto)]:' \
    '--config[config file (default is $HOME/.config/hookdeck/config.toml)]:' \
    '--console-base[Sets the web console base URL (default "https://console.hookdeck.com")]:' \
    '--dashboard-base[Sets the web dashboard base URL (default "https://dashboard.hookdeck.com")]:' \
    '--device-name[device name]:' \
    '--insecure[Allow invalid TLS certificates]' \
    '--log-level[log level (debug, info, warn, error)]:' \
    '(-p --profile)'{-p,--profile}'[profile name (default "default")]:' \
    '--ws-base[Sets the Websocket base URL (default "wss://ws.hookdeck.com")]:'
}

function _hookdeck_login {
  _arguments \
    '(-i --interactive)'{-i,--interactive}'[Run interactive configuration mode if you cannot open a browser]' \
    '--api-base[Sets the API base URL (default "https://api.hookdeck.com")]:' \
    '--api-key[Your API key to use for the command]:' \
    '--cli-key[(deprecated) Your API key to use for the command]:' \
    '--color[turn on/off color output (on, off, auto)]:' \
    '--config[config file (default is $HOME/.config/hookdeck/config.toml)]:' \
    '--console-base[Sets the web console base URL (default "https://console.hookdeck.com")]:' \
    '--dashboard-base[Sets the web dashboard base URL (default "https://dashboard.hookdeck.com")]:' \
    '--device-name[device name]:' \
    '--insecure[Allow invalid TLS certificates]' \
    '--log-level[log level (debug, info, warn, error)]:' \
    '(-p --profile)'{-p,--profile}'[profile name (default "default")]:' \
    '--ws-base[Sets the Websocket base URL (default "wss://ws.hookdeck.com")]:'
}

function _hookdeck_logout {
  _arguments \
    '(-a --all)'{-a,--all}'[Clear credentials for all projects you are currently logged into.]' \
    '--api-base[Sets the API base URL (default "https://api.hookdeck.com")]:' \
    '--api-key[Your API key to use for the command]:' \
    '--cli-key[(deprecated) Your API key to use for the command]:' \
    '--color[turn on/off color output (on, off, auto)]:' \
    '--config[config file (default is $HOME/.config/hookdeck/config.toml)]:' \
    '--console-base[Sets the web console base URL (default "https://console.hookdeck.com")]:' \
    '--dashboard-base[Sets the web dashboard base URL (default "https://dashboard.hookdeck.com")]:' \
    '--device-name[device name]:' \
    '--insecure[Allow invalid TLS certificates]' \
    '--log-level[log level (debug, info, warn, error)]:' \
    '(-p --profile)'{-p,--profile}'[profile name (default "default")]:' \
    '--ws-base[Sets the Websocket base URL (default "wss://ws.hookdeck.com")]:'
}

function _hookdeck_version {
  _arguments \
    '--api-base[Sets the API base URL (default "https://api.hookdeck.com")]:' \
    '--api-key[Your API key to use for the command]:' \
    '--cli-key[(deprecated) Your API key to use for the command]:' \
    '--color[turn on/off color output (on, off, auto)]:' \
    '--config[config file (default is $HOME/.config/hookdeck/config.toml)]:' \
    '--console-base[Sets the web console base URL (default "https://console.hookdeck.com")]:' \
    '--dashboard-base[Sets the web dashboard base URL (default "https://dashboard.hookdeck.com")]:' \
    '--device-name[device name]:' \
    '--insecure[Allow invalid TLS certificates]' \
    '--log-level[log level (debug, info, warn, error)]:' \
    '(-p --profile)'{-p,--profile}'[profile name (default "default")]:' \
    '--ws-base[Sets the Websocket base URL (default "wss://ws.hookdeck.com")]:'
}

function _hookdeck_whoami {
  _arguments \
    '--api-base[Sets the API base URL (default "https://api.hookdeck.com")]:' \
    '--api-key[Your API key to use for the command]:' \
    '--cli-key[(deprecated) Your API key to use for the command]:' \
    '--color[turn on/off color output (on, off, auto)]:' \
    '--config[config file (default is $HOME/.config/hookdeck/config.toml)]:' \
    '--console-base[Sets the web console base URL (default "https://console.hookdeck.com")]:' \
    '--dashboard-base[Sets the web dashboard base URL (default "https://dashboard.hookdeck.com")]:' \
    '--device-name[device name]:' \
    '--insecure[Allow invalid TLS certificates]' \
    '--log-level[log level (debug, info, warn, error)]:' \
    '(-p --profile)'{-p,--profile}'[profile name (default "default")]:' \
    '--ws-base[Sets the Websocket base URL (default "wss://ws.hookdeck.com")]:'
}

function _hookdeck_workspace {
  local -a commands

  _arguments -C \
    '--api-base[Sets the API base URL (default "https://api.hookdeck.com")]:' \
    '--api-key[Your API key to use for the command]:' \
    '--cli-key[(deprecated) Your API key to use for the command]:' \
    '--color[turn on/off color output (on, off, auto)]:' \
    '--config[config file (default is $HOME/.config/hookdeck/config.toml)]:' \
    '--console-base[Sets the web console base URL (default "https://console.hookdeck.com")]:' \
    '--dashboard-base[Sets the web dashboard base URL (default "https://dashboard.hookdeck.com")]:' \
    '--device-name[device name]:' \
    '--insecure[Allow invalid TLS certificates]' \
    '--log-level[log level (debug, info, warn, error)]:' \
    '(-p --profile)'{-p,--profile}'[profile name (default "default")]:' \
    '--ws-base[Sets the Websocket base URL (default "wss://ws.hookdeck.com")]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "list:List your workspaces"
      "use:Select your active workspace for future commands"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  list)
    _hookdeck_workspace_list
    ;;
  use)
    _hookdeck_workspace_use
    ;;
  esac
}

function _hookdeck_workspace_list {
  _arguments \
    '--api-base[Sets the API base URL (default "https://api.hookdeck.com")]:' \
    '--api-key[Your API key to use for the command]:' \
    '--cli-key[(deprecated) Your API key to use for the command]:' \
    '--color[turn on/off color output (on, off, auto)]:' \
    '--config[config file (default is $HOME/.config/hookdeck/config.toml)]:' \
    '--console-base[Sets the web console base URL (default "https://console.hookdeck.com")]:' \
    '--dashboard-base[Sets the web dashboard base URL (default "https://dashboard.hookdeck.com")]:' \
    '--device-name[device name]:' \
    '--insecure[Allow invalid TLS certificates]' \
    '--log-level[log level (debug, info, warn, error)]:' \
    '(-p --profile)'{-p,--profile}'[profile name (default "default")]:' \
    '--ws-base[Sets the Websocket base URL (default "wss://ws.hookdeck.com")]:'
}

function _hookdeck_workspace_use {
  _arguments \
    '--local[Pin active workspace to the current directory]' \
    '--api-base[Sets the API base URL (default "https://api.hookdeck.com")]:' \
    '--api-key[Your API key to use for the command]:' \
    '--cli-key[(deprecated) Your API key to use for the command]:' \
    '--color[turn on/off color output (on, off, auto)]:' \
    '--config[config file (default is $HOME/.config/hookdeck/config.toml)]:' \
    '--console-base[Sets the web console base URL (default "https://console.hookdeck.com")]:' \
    '--dashboard-base[Sets the web dashboard base URL (default "https://dashboard.hookdeck.com")]:' \
    '--device-name[device name]:' \
    '--insecure[Allow invalid TLS certificates]' \
    '--log-level[log level (debug, info, warn, error)]:' \
    '(-p --profile)'{-p,--profile}'[profile name (default "default")]:' \
    '--ws-base[Sets the Websocket base URL (default "wss://ws.hookdeck.com")]:'
}

_hookdeck "$@"
