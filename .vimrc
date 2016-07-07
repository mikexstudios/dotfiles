set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ciaranm/inkpot'
" Plugin 'Raimondi/YAIFA'
" Plugin 'MarcWeber/vim-addon-mw-utils' "dependencies for snipmate
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'scrooloose/snipmate-snippets'
" Plugin 'honza/vim-snippets'
" Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
" Plugin 'tpope/vim-haml'
" Plugin 'jcfaria/Vim-R-plugin'
" let vimrplugin_underscore = 0 "disable _ convert to <-
Plugin 'tpope/vim-commentary'
Plugin 'fatih/vim-go' "run :GoInstallBinaries afterwards
Plugin 'pangloss/vim-javascript' "dependency for vim-jsx
Plugin 'mxw/vim-jsx'
if v:version >= 704
  Plugin 'Valloric/YouCompleteMe'
endif
" Plugin 'ajh17/VimCompletesMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" --------------------------------------------------------------------------
" Don't create *.ext~ backup files.
set nobackup    " No backup files.
set nowritebackup    " No backup files during editing.

set nowrap
" set textwidth=78

" Tab settings
set tabstop=2    " 4-space indents.
set shiftwidth=2    " Allow use of < and > in visual mode to block
                    " indent/unindent.
set expandtab    " Use spaces instead of <TAB> character.
set softtabstop=2    " Backspace deletes 4 spaces (views it as a tab).
set autoindent    " Indents should match that of previous line.
 
" Make auto complete a bit more bash-like
" set completeopt=longest,menu,preview

" set scrolloff=999 " makes cursor always at center of screen
" set ruler		" show the cursor position all the time

" set some directives...
syntax on
set nocompatible
set incsearch         " find the next match as we type the search
set hlsearch          " hilight searches by default

set lisp "treat - as part of a word, good for css
" etc.  http://github.com/bronson/vimsy/blob/master/vimrc is one example
" --------------------------------------------------------------------------

" Treat <tab> as actual tab for Makefiles
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

"" --------------------------------------------------------------------------

" Set .md files as markdown. Fixed in newer versions of vim.
autocmd BufNewFile,BufRead *.md set filetype=markdown

"" For latex-vim:
"" IMPORTANT: grep will sometimes skip displaying the file name if you
"" search in a singe file. This will confuse Latex-Suite. Set your grep
"" program to always generate a file-name.
"set grepprg=grep\ -nH\ $*
"
"" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
"" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
"" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'
"
"" Fix viewing error:
"let g:Tex_ViewRule_pdf = 'open -a Preview.app'
"" --------------------------------------------------------------------------

"" --------------------------------------------------------------------------
"" For NERDTree:
"if exists('g:loaded_nerd_tree')
"  map <Leader>n :NERDTreeToggle<CR>
"end
"" --------------------------------------------------------------------------

" For CtrP
nmap <leader>t :CtrlP<CR>
nmap <leader>b :CtrlPClearCache<CR>
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" For YouCompleteMe
" Close preview window after completion
let g:ycm_add_preview_to_completeopt = 1
" let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
