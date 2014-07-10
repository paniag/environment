#!/bin/bash
## vim-install.sh
## Mac Radigan

wget "http://www.vim.org/scripts/download_script.php?src_id=19094" -O abc.vim
cp ./abc.vim ~/.vim/syntax

wget "http://www.vim.org/scripts/download_script.php?src_id=13961"
wget "http://www.vim.org/scripts/download_script.php?src_id=13948"

mkdir -p ~/.vim/autoload ~/.vim/bundle; curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

(cd ~/.vim/bundle; git clone https://github.com/scrooloose/nerdtree.git)

(cd ~/.vim/bundle; git clone git://github.com/tpope/vim-vinegar.git)

(cd ~/.vim/bundle; git clone git://github.com/sjbach/lusty.git)

## *EOF*
