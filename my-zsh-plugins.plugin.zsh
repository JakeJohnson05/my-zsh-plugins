#!/bin/zsh
emulate zsh

autoload -Uz ${${(%):-%x}:P:h}/pip3-autocompletions/pip3-autocompletions.zsh

{
	pip3-autocompletions.zsh
} always {
	unfunction pip3-autocompletions.zsh
}
