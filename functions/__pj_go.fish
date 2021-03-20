function __pj_go --description "Jump to a project"
  set -l argc (count $argv)
  if test $argc -le 0 -o $argc -gt 1
    return 1
  end
  set -l target (__pj_get $argv[1])
  if test -d "$target"
    cd $target
    test -n $TMUX; and tmux rename-window $argv[1]
  else
    echo "No such project: $argv[1]"
    return 1
  end
end
