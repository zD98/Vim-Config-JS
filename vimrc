"设置coding
set encoding=utf-8


set fileencodings=utf-8,GB2312

set nocompatible
filetype on
"设置插件文件类型
filetype plugin on
filetype plugin indent on
"禁止折行
set nowrap
set smartindent
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

if has("autocmd")
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
endif

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
" 禁止显示菜单和工具
" set guioptions-=m
set guioptions-=T

"设置gvim显示字体
set guifont=YaHei\ Consolas\ Hybrid:h18

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

"set fu

"set bundles
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ternjs/tern_for_vim' 
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim' 
Plugin 'altercation/vim-colors-solarized'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Lokaltog/vim-powerline'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'pangloss/vim-javascript'
Plugin 'yuezk/xtpl.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'posva/vim-vue'
Plugin 'mxw/vim-jsx'
Plugin 'airblade/vim-gitgutter'
call vundle#end()

"vim-jsx
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

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

"vim-jsbeautify
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

"nerdtree

nmap <Leader>fl :NERDTreeToggle<CR>
" 设置 NERDTree 子窗口宽度
let NERDTreeWinSize=22
" 设置 NERDTree 子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
"let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
"ignore 
let NERDTreeIgnore= ['\.DS_Store$','node_modules']
