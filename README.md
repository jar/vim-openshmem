# vim-openshmem
Vim plugin for syntax highlighting C code using the OpenSHMEM API (see http://openshmem.org)

Place openshmem.vim in your syntax directory:
```
~/.vim/syntax/openshmem.vim 
```

Add to your .vimrc:
```
filetype on
au Syntax openshmem source ~/.vim/syntax/openshmem.vim
au BufRead,BufNewFile *.c,*.cpp,*.h,*.hpp set ft=openshmem
```
