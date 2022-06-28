#compdef pod
_pod() {
	local curcontext="$curcontext" state line _opts ret=1
	_load_pod_completions

	_describe 'Pod Command' pod_commands -- pod_options
}

_load_pod_completions() {
	(( ${+pod_commands} )) || _load_pod_commands
	(( ${+pod_options} )) || _load_pod_options
}

_load_pod_commands() {
	IFS=$'\n'
	pod_commands=($(pod --help | sed -En "/^Commands:/,/^[A-z]/ {
	s/^ *\+ ([A-z]+) +(.*)/\1:\2/p
	}"))
}

_load_pod_options() {
	IFS=$'\n'
	pod_options=($(pod --help | sed -En "/^Options:/,/^[A-z]/ {
	s/^ *(--[A-z-]+) +(.*)/\1:\2/p
	}"))
}

_pod "$@"
