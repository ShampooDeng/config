# config
My linux .config directory

## how to use dotfiles with `stow`

```shell
$ mkdir ~/dotfiles # or ~/stow
# remember to backup your ~/.config/ before stowing
$ cd ~/stow/
$ stow --adopt --stow ./
```

>Note:`--dot-files` and `--adopt` doesn't compatable with each other.

To tell `stow` to ignore certain files while stowing, check `--ignore` parameters.
(use `info stow` and go to "source file" section for more info about `--ignore`)
Similar to `.gitignore`, stow has "ignore list" to encounter numerous to
encounter numerous files to ignore, go check [stow manual](https://www.gnu.org/software/stow/manual/stow.html#Motivation-For-Ignore-Lists).

## TODO: how to install package from txt file

```sh
yay -Sy $(cat ./script/packgelist.txt)
```
