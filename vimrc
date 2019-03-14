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

let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

noremap <silent> <C-n> :call ToggleNetrw()<CR>
