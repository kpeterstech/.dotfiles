set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_default_branch yes
set -g theme_git_default_branches master main
set -g theme_use_abbreviated_branch_name no

set -g theme_display_vagrant yes
set -g theme_display_docker_machine no
set -g theme_display_hg yes
set -g theme_display_virtualenv yes
set -g theme_display_ruby no
set -g theme_display_user no
set -g theme_display_vi no
set -g theme_display_date yes
set -g theme_display_cmd_duration yes
set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -g theme_title_display_process yes
set -g theme_title_display_path yes
set -g theme_title_use_abbreviated_path yes
set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs no
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g default_user your_normal_user
set -g theme_color_scheme solarized
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -gx EDITOR hx

if string match -q 'screen*' -- $TERM
    powerline-config tmux setup
end

set -xg PYTHONPATH /usr/bin/python3 $PYTHONPATH

abbr -a -- dc docker-compose
abbr -a -- dcstart 'docker-compose start'
abbr -a -- dcstop 'docker-compose stop'
abbr -a -- d docker
abbr -a -- drit 'docker run -it'
abbr -a -- dritrm 'docker run -it --rm'
abbr -a -- gaa 'git add -A'
abbr -a -- ga 'git add'
abbr -a -- gbd 'git branch --delete'
abbr -a -- gb 'git branch'
abbr -a -- gc 'git commit'
abbr -a -- gcm 'git commit -m'
abbr -a -- gcob 'git checkout -b'
abbr -a -- gco 'git checkout'
abbr -a -- gd 'git diff'
abbr -a -- gl 'git log'
abbr -a -- gp 'git push'
abbr -a -- gpom 'git push origin master'
abbr -a -- gs 'git status'
abbr -a -- gst 'git stash'
abbr -a -- gstp 'git stash pop'
abbr -a -- nv nvim

oh-my-posh init fish --config ~/.poshthemes/powerlevel10k_rainbow.omp.json | source
cd ~/
