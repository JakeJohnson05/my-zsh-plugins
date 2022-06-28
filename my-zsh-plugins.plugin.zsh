fpath+="${0:A:h}/autocompletions"

autoload -Uz ${0:A:h}/pip3-autocompletions/pip3-autocompletions.zsh

{
	pip3-autocompletions.zsh
} always {
	unfunction pip3-autocompletions.zsh
}
