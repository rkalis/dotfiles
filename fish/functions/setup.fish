## Defines abbreviations
function setup
	abbr mci maven clean install
	abbr gf git fetch
	abbr gs git status
	abbr gc git commit -m
	abbr gm git merge origin/master --ff-only
	abbr ga git add
	abbr gp git push
	abbr gd git diff
	abbr gco git checkout
	abbr ll ls -lhA
	set -x -U HOMEBREW_CASK_OPTS "--appdir=/Applications"
	set -x -U LSCOLORS "gxfxcxdxbxegedabagacad"
end