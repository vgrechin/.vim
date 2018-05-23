# .vim

## Useful article
[Vim settings for Python and Django](http://habrahabr.ru/post/173473/)

## Cloning repository
`git clone https://github.com/vgrechin/.vim.git`

`ln -s ~/.vim/.vimrc`

## Updating submodules
`cd ~/.vim`

`git submodule update --init --remote --recursive`

`for dir in bundle/*; do (cd $dir && git checkout master && git pull); done`

ls bundle | parallel 'cd {} && git checkout master && git pull'
