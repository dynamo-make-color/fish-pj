function __pj_get --description "Get absolute path of project"
  set -l argc (count $argv)
  if test $argc -le 0 -o $argc -gt 1
    return 1
  end
  grep --color=never -P $argv[1]'$' ~/.project/list
end
