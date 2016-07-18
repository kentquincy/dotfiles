set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" "alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'bling/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'chrisbra/Colorizer'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-repeat'
Plugin 'briandoll/change-inside-surroundings.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ryanoasis/vim-devicons'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto       - approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""
" Config
"""""

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

set backspace=2
" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
let mapleader='§'

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

syntax enable       " enable syntax processingle
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set showtabline=2
set number          " show line numbers
set showcmd         " show command in bottom bar
" set cursorline      " highlight current line
set lazyredraw      " redraw only when we need to.
set wildmenu        " visual autocomplete for command menu
set showmatch       " highlight matching [{()}]
set incsearch       " search as characters are entered
set hlsearch        " highlight matches

set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set autoread      " Reload files changed outside vim
set showmode      " Show current mode down the bottom
set title         " change the terminal's title

" keys
map <C-t> :NERDTreeToggle<CR>

" Airline
let g:airline_powerline_fonts = 1
set showtabline=2
set guioptions-=e
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:colorizer_auto_filetype='css,html,scss'
let g:ctrlp_working_path_mode=0

" NerTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
" NERDTress File highlighting
" function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
" exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
" exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
" endfunction

"call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
"call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
"call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
"call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
"call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" Relative numbers key
map <F3> :set relativenumber<CR>
map <F4> :set number<CR>

" Emmet
let g:user_emmet_leader_key='<C-Z>'

" Easymotion
let g:EasyMotion_do_mapping = 1 " Disable default mappings

" Bi-directional find motion
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1

" Line motions
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" Multiple cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>' 
let g:multi_cursor_quit_key='<Esc>'

" Indent Guides
"colorscheme tir_black
set background=dark
set ts=2 sw=2 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
