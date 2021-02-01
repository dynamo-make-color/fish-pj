function pj --description "Common command to jump/open/add/remove a project"
  set -l argc (count $argv)

  if test $argc -le 0 -o $argc -gt 2
    return 1
  else if test $argc -eq 2; and not string match -rq 'remove|add|get' $argv[1]
    __pj_usage
    return 1
  else if contains -- --help $argv
    __pj_usage
  else
    switch $argv[1]
      case "get"
        __pj_get $argv[2]
      case "add"
        # __pj_add $argv[2]
      case "remove"
        # __pj_remove $argv[2]
      case "list"
        __pj_list
      case "update"
        __pj_update
      case "*"
        __pj_go $argv[1]
    end
  end
end


