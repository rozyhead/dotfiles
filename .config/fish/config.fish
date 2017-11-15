balias g 'git'
balias gst 'git status -sb; and git stash list'
balias gcm 'git commit -v'
balias gch 'git cherry-pick -v'
balias glgg 'git lgg'
balias glg 'git lgg | head'
balias gfs 'git flow feature start'
balias gff 'git flow feature finish'

set -U fish_user_paths $fish_user_paths $HOME/.nodebrew/current/bin
