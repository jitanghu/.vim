set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

set rtp+=~/.vim/fzf
Plugin 'junegunn/fzf.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'dracula/vim'
Plugin 'ajh17/VimCompletesMe'
Plugin 'majutsushi/tagbar' 
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on


" lightline配置
set laststatus=2

" fzf设置
map <C-p> :Files<CR>

syntax on
set nu
set hls
color dracula

if has("gui_running")
  if has("gui_macvim")
    set guifont=Menlo\ Regular:h12
  endif
endif

" 自定义mapping
map <leader><SPACE> :noh<CR>
map <F8> :TagbarToggle<CR>


set backspace=2

" 设置NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-n> :NERDTreeToggle<CR>
