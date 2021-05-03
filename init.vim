" ░░░░░██╗██╗░░░██╗██╗███╗░░░███╗  ░░░░░░
" ░░░░░██║██║░░░██║██║████╗░████║  ░░░░░░
" ░░░░░██║╚██╗░██╔╝██║██╔████╔██║  █████╗
" ██╗░░██║░╚████╔╝░██║██║╚██╔╝██║  ╚════╝
" ╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║  ░░░░░░
" ░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝  ░░░░░░
" 
" ░░░░░██╗░█████╗░███╗░░██╗░█████╗░████████╗██╗░░██╗░█████╗░███╗░░██╗██╗░██████╗  ███████╗██████╗░██╗░█████╗░
" ░░░░░██║██╔══██╗████╗░██║██╔══██╗╚══██╔══╝██║░░██║██╔══██╗████╗░██║╚█║██╔════╝  ██╔════╝██╔══██╗██║██╔══██╗
" ░░░░░██║██║░░██║██╔██╗██║███████║░░░██║░░░███████║███████║██╔██╗██║░╚╝╚█████╗░  █████╗░░██████╔╝██║██║░░╚═╝
" ██╗░░██║██║░░██║██║╚████║██╔══██║░░░██║░░░██╔══██║██╔══██║██║╚████║░░░░╚═══██╗  ██╔══╝░░██╔═══╝░██║██║░░██╗
" ╚█████╔╝╚█████╔╝██║░╚███║██║░░██║░░░██║░░░██║░░██║██║░░██║██║░╚███║░░░██████╔╝  ███████╗██║░░░░░██║╚█████╔╝
" ░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝░░░╚═════╝░  ╚══════╝╚═╝░░░░░╚═╝░╚════╝░
" 
" ██╗░░░██╗██╗███╗░░░███╗  ░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░
" ██║░░░██║██║████╗░████║  ██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░
" ╚██╗░██╔╝██║██╔████╔██║  ██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░
" ░╚████╔╝░██║██║╚██╔╝██║  ██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗
" ░░╚██╔╝░░██║██║░╚═╝░██║  ╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝
" ░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝  ░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░╚═╝░╚═════╝░
"
"
"
" Head generated using: https://fsymbols.com/generators/
"
" Recommended to use Tmux for vim terminal usage.
"
"
"
" Recommended using neovim plugin for vscode, because it is awesome.
"
" Other fun recommendations to try out is Neovide: https://github.com/Kethku/neovide
"
" For integration into vscode
" Make sure packages are not interfering
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

    if !exists('g:vscode')
        " Fuzzy search
        Plugin 'kien/ctrlp.vim'
        " Nerd tree
        Plugin 'preservim/nerdtree'
        
        "{{ Git integration
        " ---> git commands within vim <---
        Plugin 'tpope/vim-fugitive'
        " ---> git changes on the gutter <---
        Plugin 'airblade/vim-gitgutter'
        " ---> nerdtree git changes <---
        Plugin 'Xuyuanp/nerdtree-git-plugin'
        "}}
        
        " TMux - Vim integration
        Plugin 'christoomey/vim-tmux-navigator'
        "
        
        Plugin 'ayu-theme/ayu-vim'
        Plugin 'Rigellute/shades-of-purple.vim'
        Plugin 'vim-airline/vim-airline'
        Plugin 'romgrk/doom-one.vim'
        Plugin 'rust-lang/rust.vim'
        Plugin 'Townk/vim-autoclose'
        Plugin 'neoclide/coc.nvim'
    endif
call vundle#end()            " required
filetype plugin indent on    " required
" --- End Vundle Plugin Install ---


if !exists('g:vscode')
    " Don't use if using inside of vscode
    syntax on
    set termguicolors     " enable true colors support
    
    " let ayucolor="light"  " for light version of theme
    let ayucolor="mirage" " for mirage version of theme
    " let ayucolor="dark"   " for dark version of theme
    " colorscheme ayu
    " colorscheme shades_of_purple
    colorscheme ayu
    set number
    
    set nowrap
    
    filetype plugin indent on
    " show existing tab with 4 spaces width
    set tabstop=4
    " when indenting with '>', use 4 spaces width
    set shiftwidth=4
    " On pressing tab, insert 4 spaces
    set expandtab
    
    " Format json
    com! FormatJSON %!python -m json.tool

    " json format alternative
    com! FormatJSON2 :%!jq

    " Terminal normal mode with escpae key
    :tnoremap <Esc> <C-\><C-n>
    function! s:GoToDefinition()
      if CocAction('jumpDefinition')
        return v:true
      endif
    
      let ret = execute("silent! normal \<C-]>")
      if ret =~ "Error" || ret =~ "错误"
        call searchdecl(expand('<cword>'))
      endif
    endfunction
    
    nmap <silent> gd :call <SID>GoToDefinition()<CR>

    let g:rustfmt_autosave = 1

    " use <tab> for trigger completion and navigate to the next complete item
    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~ '\s'
    endfunction
    
    inoremap <silent><expr> <Tab>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<Tab>" :
          \ coc#refresh()

endif


" Hotkeys
com! Ref :source ~/.config/nvim/init.vim
com Nvim :e ~/.config/nvim/init.vim
map <Space>nvim :tabnew ~/.config/nvim/init.vim

" Splitting
noremap <Space>vv :vsp<Esc>
noremap <Space>ss :sp<Esc>

" Remove all trailing whitespaces
com Clean :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Replace word under cursor
noremap <Space>rw bvep<Esc>

" Copy word under cursor
noremap <Space>yw bvey<Esc>

" System clipboard
noremap <Space>yy "*y
noremap <Space>pp "*p

" Format list
com FormatList :s/,/,\r/g

noremap <Space>tt :tab sp<CR>

" Quick run functions
com Rust :!cargo run

