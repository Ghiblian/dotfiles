# Path
set ANDROID_HOME ~/Library/Android/sdk
set YARN_BIN (yarn global bin)
set -U fish_user_paths \
    /usr/local/bin \
    $YARN_BIN \
    $ANDROID_HOME/tools \
    $ANDROID_HOME/platform-tools \
    $fish_user_paths
setenv EDITOR nvim

# Commands
alias ll 'ls -alF'
alias la 'ls -A'
alias l 'ls -CF'
alias vi 'nvim'
alias rbpost 'rbt-log-post --parent=HEAD~1'
alias tm 'tmux -CC attach; or tmux -CC'
alias title 'tmux rename-window'

set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  set_color normal
end
