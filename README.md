VIM Syntax File for Visual Data Flex
------------------------------------

Put this file in:
```
~/.vim/syntax
```
or
```
$HOME/vimfiles/syntax
```

Then add the following line to your .vimrc:
```
au BufRead,BufNewFile \c*.pkg\|\c*.vw\|\c*.rv\|\c*.src\|\c.*bp\|\c*.sl\|\c*.dg\|\c*.dd set filetype=vdf
```
