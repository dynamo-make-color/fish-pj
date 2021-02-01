function __pj_usage --description "Usage of pj command"
  echo "
  Usage:
    - pj PROJECT: Change current directory to PROJECT
    - pj get PROJECT: Get absolute path of PROJECT
    - pj add/remove PATTERN: (TODO) Add/remove PATTERN to/from ~/.project/template and update list of projects in ~/.project/list
    - pj list: Show all current projects
    - pj update: Update list of projects from ~/.project/list

  PROJECT should be in your home directory, and your project name folder must be unique in all ~/.project/list
  PATTERN should be followed PCRE if you have fd command, otherwise, POSIX Extended Regex will be used
  "
end
