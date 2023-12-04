set nocompatible
let mapleader = " "

" vim-plug begin
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

call plug#end()
" vim-plug end

set nu
set hls

if has("gui_running")
  if has("gui_macvim")
    set guifont=JetBrainsMono\ Nerd\ Font:h13
  endif
endif

" nerdtree配置
nnoremap <leader>e :NERDTreeToggle<CR>

" leaderF
nnoremap <leader>f :Leaderf<CR>
let g:Lf_ShortcutF = '<C-P>'

set backspace=2
" 设置增量搜索
set incsearch

" 设置缩进
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" keymap
inoremap jk <ESC>
vnoremap jk <ESC>

" colorscheme
colorscheme molokai
