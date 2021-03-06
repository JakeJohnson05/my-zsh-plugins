#compdef _circleci circleci

function _circleci {
	local -a commands

	_arguments -C \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:' \
		"1: :->cmnds" \
		"*::arg:->args"

	case $state in
	cmnds)
		commands=(
			"completion:Generate shell completion scripts"
			"config:Operate on build config files"
			"context:Contexts provide a mechanism for securing and sharing environment variables across projects. The environment variables are defined as name/value pairs and are injected at runtime."
			"diagnostic:Check the status of your CircleCI CLI."
			"follow:Attempt to follow the project for the current git repository."
			"help:Help about any command"
			"local:Debug jobs on the local machine"
			"namespace:Operate on namespaces"
			"open:Open the current project in the browser."
			"orb:Operate on orbs"
			"runner:Operate on runners"
			"setup:Setup the CLI with your credentials"
			"update:This command is unavailable on your platform"
			"version:Display version information"
		)
		_describe "command" commands
		;;
	esac

	case "$words[1]" in
	completion)
		_circleci_completion
		;;
	config)
		_circleci_config
		;;
	context)
		_circleci_context
		;;
	diagnostic)
		_circleci_diagnostic
		;;
	follow)
		_circleci_follow
		;;
	help)
		_circleci_help
		;;
	local)
		_circleci_local
		;;
	namespace)
		_circleci_namespace
		;;
	open)
		_circleci_open
		;;
	orb)
		_circleci_orb
		;;
	runner)
		_circleci_runner
		;;
	setup)
		_circleci_setup
		;;
	update)
		_circleci_update
		;;
	version)
		_circleci_version
		;;
	esac
}

function _circleci_completion {
	local -a commands

	_arguments -C \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:' \
		"1: :->cmnds" \
		"*::arg:->args"

	case $state in
	cmnds)
		commands=(
			"bash:Generate bash completion scripts"
			"zsh:Generate zsh completion scripts"
		)
		_describe "command" commands
		;;
	esac

	case "$words[1]" in
	bash)
		_circleci_completion_bash
		;;
	zsh)
		_circleci_completion_zsh
		;;
	esac
}

function _circleci_completion_bash {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_completion_zsh {
	_arguments \
		'(-h --help)'{-h,--help}'[help for zsh]' \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_config {
	local -a commands

	_arguments -C \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:' \
		"1: :->cmnds" \
		"*::arg:->args"

	case $state in
	cmnds)
		commands=(
			"pack:Pack up your CircleCI configuration into a single file."
			"process:Validate config and display expanded configuration."
			"validate:Check that the config file is well formed."
		)
		_describe "command" commands
		;;
	esac

	case "$words[1]" in
	pack)
		_circleci_config_pack
		;;
	process)
		_circleci_config_process
		;;
	validate)
		_circleci_config_validate
		;;
	esac
}

function _circleci_config_pack {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_config_process {
	_arguments \
		'(-o --org-slug)'{-o,--org-slug}'[organization slug (for example: github/example-org), used when a config depends on private orbs belonging to that org]:' \
		'--pipeline-parameters[YAML/JSON map of pipeline parameters, accepts either YAML/JSON directly or file path (for example: my-params.yml)]:' \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_config_validate {
	_arguments \
		'--ignore-deprecated-images[ignores the deprecated images error]' \
		'(-o --org-slug)'{-o,--org-slug}'[organization slug (for example: github/example-org), used when a config depends on private orbs belonging to that org]:' \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_context {
	local -a commands

	_arguments -C \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:' \
		"1: :->cmnds" \
		"*::arg:->args"

	case $state in
	cmnds)
		commands=(
			"create:Create a new context"
			"delete:Delete the named context"
			"list:List all contexts"
			"remove-secret:Remove an environment variable from the named context"
			"show:Show a context"
			"store-secret:Store a new environment variable in the named context. The value is read from stdin."
		)
		_describe "command" commands
		;;
	esac

	case "$words[1]" in
	create)
		_circleci_context_create
		;;
	delete)
		_circleci_context_delete
		;;
	list)
		_circleci_context_list
		;;
	remove-secret)
		_circleci_context_remove-secret
		;;
	show)
		_circleci_context_show
		;;
	store-secret)
		_circleci_context_store-secret
		;;
	esac
}

function _circleci_context_create {
	_arguments \
		'--org-id[The id of your organization.]:' \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_context_delete {
	_arguments \
		'(-f --force)'{-f,--force}'[Delete the context without asking for confirmation.]' \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_context_list {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_context_remove-secret {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_context_show {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_context_store-secret {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_diagnostic {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_follow {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_help {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_local {
	local -a commands

	_arguments -C \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:' \
		"1: :->cmnds" \
		"*::arg:->args"

	case $state in
	cmnds)
		commands=(
			"execute:Run a job in a container on the local machine"
		)
		_describe "command" commands
		;;
	esac

	case "$words[1]" in
	execute)
		_circleci_local_execute
		;;
	esac
}

function _circleci_local_execute {
	_arguments \
		'--branch[Git branch]:' \
		'--checkout-key[Git Checkout key]:' \
		'(-c --config)'{-c,--config}'[config file]:' \
		'(*-e *--env)'{\*-e,\*--env}'[Set environment variables, e.g. `-e VAR=VAL`]:' \
		'--index[node index of parallelism]:' \
		'--job[job to be executed]:' \
		'--node-total[total number of parallel nodes]:' \
		'(-o --org-slug)'{-o,--org-slug}'[organization slug (for example: github/example-org), used when a config depends on private orbs belonging to that org]:' \
		'--repo-url[Git Url]:' \
		'--revision[Git Revision]:' \
		'--skip-checkout[use local path as-is]' \
		'(*-v *--volume)'{\*-v,\*--volume}'[Volume bind-mounting]:' \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_namespace {
	local -a commands

	_arguments -C \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:' \
		"1: :->cmnds" \
		"*::arg:->args"

	case $state in
	cmnds)
		commands=(
			"create:Create a namespace"
		)
		_describe "command" commands
		;;
	esac

	case "$words[1]" in
	create)
		_circleci_namespace_create
		;;
	esac
}

function _circleci_namespace_create {
	_arguments \
		'--no-prompt[Disable prompt to bypass interactive UI.]' \
		'--org-id[The id of your organization.]:' \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_open {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_orb {
	local -a commands

	_arguments -C \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:' \
		"1: :->cmnds" \
		"*::arg:->args"

	case $state in
	cmnds)
		commands=(
			"add-to-category:Add an orb to a category"
			"create:Create an orb in the specified namespace"
			"info:Show the meta-data of an orb"
			"init:Initialize a new orb project."
			"list:List orbs"
			"list-categories:List orb categories"
			"pack:Pack an Orb with local scripts."
			"process:Validate an orb and print its form after all pre-registration processing"
			"publish:Publish an orb to the registry"
			"remove-from-category:Remove an orb from a category"
			"source:Show the source of an orb"
			"unlist:Disable or enable an orb's listing in the registry"
			"validate:Validate an orb.yml"
		)
		_describe "command" commands
		;;
	esac

	case "$words[1]" in
	add-to-category)
		_circleci_orb_add-to-category
		;;
	create)
		_circleci_orb_create
		;;
	info)
		_circleci_orb_info
		;;
	init)
		_circleci_orb_init
		;;
	list)
		_circleci_orb_list
		;;
	list-categories)
		_circleci_orb_list-categories
		;;
	pack)
		_circleci_orb_pack
		;;
	process)
		_circleci_orb_process
		;;
	publish)
		_circleci_orb_publish
		;;
	remove-from-category)
		_circleci_orb_remove-from-category
		;;
	source)
		_circleci_orb_source
		;;
	unlist)
		_circleci_orb_unlist
		;;
	validate)
		_circleci_orb_validate
		;;
	esac
}

function _circleci_orb_add-to-category {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_orb_create {
	_arguments \
		'--no-prompt[Disable prompt to bypass interactive UI.]' \
		'--private[Specify that this orb is for private use within your org, unlisted from the public registry.]' \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_orb_info {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_orb_init {
	_arguments \
		'--private[initialize a private orb]' \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_orb_list {
	_arguments \
		'(-d --details)'{-d,--details}'[output all the commands, executors, and jobs, along with a tree of their parameters]' \
		'--private[exclusively list private orbs within a namespace]' \
		'--sort[one of "builds"|"projects"|"orgs"]:' \
		'(-u --uncertified)'{-u,--uncertified}'[include uncertified orbs]' \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_orb_list-categories {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_orb_pack {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_orb_process {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_orb_publish {
	local -a commands

	_arguments -C \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:' \
		"1: :->cmnds" \
		"*::arg:->args"

	case $state in
	cmnds)
		commands=(
			"increment:Increment a released version of an orb"
			"promote:Promote a development version of an orb to a semantic release"
		)
		_describe "command" commands
		;;
	esac

	case "$words[1]" in
	increment)
		_circleci_orb_publish_increment
		;;
	promote)
		_circleci_orb_publish_promote
		;;
	esac
}

function _circleci_orb_publish_increment {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_orb_publish_promote {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_orb_remove-from-category {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_orb_source {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_orb_unlist {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_orb_validate {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_runner {
	local -a commands

	_arguments -C \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:' \
		"1: :->cmnds" \
		"*::arg:->args"

	case $state in
	cmnds)
		commands=(
			"instance:Operate on runner instances"
			"resource-class:Operate on runner resource-classes"
			"token:Operate on runner tokens"
		)
		_describe "command" commands
		;;
	esac

	case "$words[1]" in
	instance)
		_circleci_runner_instance
		;;
	resource-class)
		_circleci_runner_resource-class
		;;
	token)
		_circleci_runner_token
		;;
	esac
}

function _circleci_runner_instance {
	local -a commands

	_arguments -C \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:' \
		"1: :->cmnds" \
		"*::arg:->args"

	case $state in
	cmnds)
		commands=(
			"list:List runner instances"
		)
		_describe "command" commands
		;;
	esac

	case "$words[1]" in
	list)
		_circleci_runner_instance_list
		;;
	esac
}

function _circleci_runner_instance_list {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_runner_resource-class {
	local -a commands

	_arguments -C \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:' \
		"1: :->cmnds" \
		"*::arg:->args"

	case $state in
	cmnds)
		commands=(
			"create:Create a resource-class"
			"delete:Delete a resource-class"
			"list:List resource-classes for a namespace"
		)
		_describe "command" commands
		;;
	esac

	case "$words[1]" in
	create)
		_circleci_runner_resource-class_create
		;;
	delete)
		_circleci_runner_resource-class_delete
		;;
	list)
		_circleci_runner_resource-class_list
		;;
	esac
}

function _circleci_runner_resource-class_create {
	_arguments \
		'--generate-token[Generate a default token]' \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_runner_resource-class_delete {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_runner_resource-class_list {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_runner_token {
	local -a commands

	_arguments -C \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:' \
		"1: :->cmnds" \
		"*::arg:->args"

	case $state in
	cmnds)
		commands=(
			"create:Create a token for a resource-class"
			"delete:Delete a token"
			"list:List tokens for a resource-class"
		)
		_describe "command" commands
		;;
	esac

	case "$words[1]" in
	create)
		_circleci_runner_token_create
		;;
	delete)
		_circleci_runner_token_delete
		;;
	list)
		_circleci_runner_token_list
		;;
	esac
}

function _circleci_runner_token_create {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_runner_token_delete {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_runner_token_list {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_setup {
	_arguments \
		'--no-prompt[Disable prompt to bypass interactive UI. (MUST supply --host and --token)]' \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_update {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

function _circleci_version {
	_arguments \
		'--host[URL to your CircleCI host, also CIRCLECI_CLI_HOST]:' \
		'--skip-update-check[Skip the check for updates check run before every command.]' \
		'--token[your token for using CircleCI, also CIRCLECI_CLI_TOKEN]:'
}

_circleci "$@"
