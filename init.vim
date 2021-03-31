" --- Vundle Plugin Install ---
set nocompatible              " required
filetype off                  " required

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" ...
Plugin 'tomtom/tcomment_vim'
Plugin 'kien/ctrlp.vim'
" Plugin 'ayu-theme/ayu-vim'
" Plugin 'vim-airline/vim-airline'
" Plugin 'neoclide/coc.nvim'
" All ofyour Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" --- End Vundle Plugin Install ---

" Don't use if using inside of vscode
" syntax on
" set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu
" set number

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
