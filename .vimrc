set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Github上的插件 格式为'用户名/插件仓库名'
"http://vim-scripts.org/上的插件 格式为'插件名称'or'vim-scripts/插件仓库名'

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'rakr/vim-one'

call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载文件类型检测
"
" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
"
syntax enable

if has("autocmd")
  au BufReadPost * exe "normal! g`\""
endif

set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch  "高亮显示结果
set incsearch  "在输入要搜索的文字时，vim会实时匹配
set backspace=indent,eol,start whichwrap+=<,>,[,]

set number
set ruler

"设置NerdTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


set background=dark " for the dark version
" set background=light " for the light version
colorscheme one
