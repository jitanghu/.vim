set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

set rtp+=~/.vim/fzf
Plugin 'junegunn/fzf.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim'
 
call vundle#end()
filetype plugin indent on


" lightline配置
set laststatus=2

" NerdTree配置
map <C-n> :NERDTreeToggle<CR>
" 打开目录时自动打开NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" 关闭最后一个文件时关闭vim，即便NERDTree仍然打开
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" fzf设置
map <C-p> :Files<CR>

syntax on
set nu
colorscheme molokai

if has("gui_running")
  if has("gui_macvim")
    set guifont=Menlo\ Regular:h12
  endif
endif
