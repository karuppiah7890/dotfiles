# Helps you to clone all the repositories (public and private) in a GitHub Organization

# Usage:
# ./github-org-repos-clone.sh TogaiHQ

# Requires `gh`, `jq`, `xargs` tools to be installed
# Requires `gh` tool to be setup with `gh auth login`
gh repo list $1 --json sshUrl | jq '.[] | .sshUrl' -r | xargs -I{} git clone {}
