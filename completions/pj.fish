function __fish_pj_needs_command
  set cmd (commandline -opc)
  if [ (count $cmd) -eq 1 ]
    return 0
  else
    # Skip first word because it's "pj" or a wrapper
    for c in $cmd[2..-1]
      switch $c
        # We assume that any other token that's not an argument to a general option is a command
        case "*"
          return 1
      end
    end
    return 0
  end
  return 1
end

function __fish_pj_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
  return 1
end

function __fish_pj_list_project -e __pj_update_list_project
  __pj_list | while read -l project
    set -l name (basename $project)
    complete -f -c pj -n '__fish_pj_needs_command' -a $name -d "Change to $project folder"
    complete -f -c pj -n '__fish_pj_using_command get' -a $name -d "$project"
  end
end

complete -f -c pj -n '__fish_pj_needs_command' -a get -d "Get absolute path of project"
complete -f -c pj -n '__fish_pj_needs_command' -a add -d "Add pattern to ~/.project/template"
complete -f -c pj -n '__fish_pj_needs_command' -a remove -d "Remove pattern from ~/.project/template"
complete -f -c pj -n '__fish_pj_needs_command' -a list -d "List projects from ~/.project/template"
complete -f -c pj -n '__fish_pj_needs_command' -a update -d "Update list projects from ~/.project/template to ~/.project/list"
__fish_pj_list_project
