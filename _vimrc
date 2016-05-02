"设置coding
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'zh_CN.UTF-8'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set fileencodings=utf-8,GB2312

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction


"设置tab
set autoindent
filetype plugin indent on
"禁止折行
set nowrap
set smartindent

set tabstop=4
set softtabstop=4
set shiftwidth=4

if has("autocmd")
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
endif
"不回滚
set nobackup
" 开启行号显示
set number
" 显示光标当前位置
set ruler
" 总是显示状态栏
set laststatus=2
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch


"设置style
syntax enable
syntax on
set background=dark
colorscheme solarized

set gcr=a:block-blinkon0
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
" set guioptions-=m
set guioptions-=T


execute pathogen#infect()
exec 'cd ' . fnameescape('c:\Workspace\VimProjects')
