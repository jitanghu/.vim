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


set backspace=2

" 设置netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>
