function __pj_update --description "Update list of projects"
  rm -rf ~/.project/list
  cat ~/.project/template | while read -l line
    if string match -rq '#.*' $line
      continue
    else
      set -l full_path "$HOME/$line"
      if type -q fd
        fd -t d -p $full_path"\$" $HOME >> ~/.project/list
      else
        find $HOME -type d -regextype posix-extended -regex $full_path >> ~/.project/list
      end
    end
  end
end
