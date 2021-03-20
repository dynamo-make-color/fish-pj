# pj
Easily jump between your project folders in fish shell

## Installation

### System Requirements

- [fish](https://github.com/fish-shell/fish-shell)
- [fisher](https://github.com/jorgebucaran/fisher)

Install by following command:
```fish
fisher install dynamo-make-color/fish-pj
```


## Configuration

- You must move your project into your home folder (with n-depth). Each project must have unique folder name.
- Create `~/.project` folder and edit a `template` file in it:
    ```fish
    mkdir -p ~/.project && vim ~/.project/template
    ```
- Insert each line of project path into `~/.project/template` with POSIX Extended Regex like below
    ```
    Dotfiles
    Dotfiles/(fish|vim)
    Working/personal/[^/]*
    Working/community/[^/]*
    Working/enterprise/[^/]*
    ```
    In above example, your projects list will have `~/Dotfiles`, `~/Dotfiles/fish`, `~/Dotfiles/vim`, all projects in `~/Working/personal`, `~/Working/community`, `~/Working/enterprise`.
- Run command
    ```fish
    pj update
    ```

## Usage

To jump to a project, simply run `pj` with the name of the project folder you would like to jump to.

```fish
pj foo
```
