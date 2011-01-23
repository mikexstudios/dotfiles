" Avoid abbreviations!  Spelling everything out makes grepping easy.

set number

" Color schemes:
" colorscheme vividchalk
colorscheme inkpot

" Macvim specific:
" NOTE: Comment out for now so that Command-T extension can stay in root dir.
" autocmd BufEnter * :cd %:p:h " fix for Macvim, change to current dir so that
"                              " tabs display filename correctly.
set lines=54 " maximize the vertical direction on our screen.
set columns=90 " set width of window.
set guifont=Monaco:h11
set mousehide " Hide the mouse when typing text
