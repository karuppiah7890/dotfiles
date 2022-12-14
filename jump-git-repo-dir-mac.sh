
# Requires `fd`, `sed`, `fzf` tools to be installed
jump () {
	repo_dir=$(fd --hidden --type directory ^.git$ $HOME | sed "s/\/Users\/$(whoami)\///g" | sed "s/.git\///g" | fzf) 
	cd "$HOME/$repo_dir"
}

alias j=jump
