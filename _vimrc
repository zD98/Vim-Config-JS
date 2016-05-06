"设置coding
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'zh_CN.UTF-8'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set fileencodings=utf-8,GB2312

set nocompatible
source $VIMRUNTIME/mswin.vim
behave mswin

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
"
set noundofile
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
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
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
"设置gvim显示字体
set guifont=YaHei\ Consolas\ Hybrid:h14

"YCM             
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>  
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>  

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['eslint']
"multi_cursor 
execute pathogen#infect()
exec 'cd ' . fnameescape('c:\Workspace\WebstormProjects')

