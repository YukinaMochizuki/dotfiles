set nocompatible              " be iMproved, required
filetype off                  " required

" START - Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"YCM
Plugin 'Valloric/YouCompleteMe'

" nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'

" UltiSnips - The ultimate snippet solution for Vim.
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Comment functions so powerful—no comment necessary.
Plugin 'scrooloose/nerdcommenter'

" Colorscheme
Plugin 'doums/darcula'

" Indent Guides
" A Vim plugin for visually displaying indent levels in code
Plugin 'nathanaelkane/vim-indent-guides'

" Emmet — the essential toolkit for web-developers
Plugin 'mattn/emmet-vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'ananagame/vimsence'

if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :PluginInstall
endif
" END - Setting up Vundle - the vim plugin bundler

filetype plugin indent on     " required
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
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

" Basic Setting
:set ai
:set expandtab
:set tabstop=4
:set softtabstop=4
:set encoding=utf-8

filetype indent on

" Line Number
set nu
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Airline Theme
let g:airline_theme="luna"
let g:airline_solarized_bg='dark'

" nerdtree
" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_config_file_enabled = 1

" Indent Guides
set ts=2 sw=2 et
let g:indent_guides_enable_on_vim_startup = 1

" YCM
let g:syntastic_java_checkers = []
let g:ycm_auto_trigger = 1

" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


" color
set t_Co=256
set background=dark
syntax on
colorscheme darcula


