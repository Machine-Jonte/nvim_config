" Vundle setup
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" --- Vundle Plugin Install ---
set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" gc comment
Plugin 'tomtom/tcomment_vim'
" Fuzzy search
Plugin 'kien/ctrlp.vim'

"{{ Git integration
" ---> git commands within vim <---
Plugin 'tpope/vim-fugitive'
" ---> git changes on the gutter <---
Plugin 'airblade/vim-gitgutter'
" ---> nerdtree git changes <---
Plugin 'Xuyuanp/nerdtree-git-plugin'
"}}

"{{ TMux - Vim integration
Plugin 'christoomey/vim-tmux-navigator'
"}}

Plugin 'ayu-theme/ayu-vim'
Plugin 'Rigellute/shades-of-purple.vim'
Plugin 'vim-airline/vim-airline'
" Plugin 'neoclide/coc.nvim'

call vundle#end()            " required
filetype plugin indent on    " required
" --- End Vundle Plugin Install ---

set nowrap

" Don't use if using inside of vscode
syntax on
set termguicolors     " enable true colors support

" let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
colorscheme ayu
" colorscheme shades_of_purple
set number

" filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Hotkeys
map ,nvim :vs ~/.config/nvim/init.vim
map ,ref :source ~/.config/nvim/init.vim
map <Space>" bi"<Esc>f i"
map <Space>' bi'<Esc>f i'
map <Space><Space>' bi'<Esc>$a'
map <Space><Space>" bi"<Esc>$a"
