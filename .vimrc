##### 基本配置

# 不与 Vi 兼容，采用 Vim 自己的操作命令
set nocompatible

# 打开语法高亮
syntax on

# 底部显示 Vim 模式
set showmode

# 命令模式下，底部显示键入的指令
set showcmd

# 支持使用鼠标
set mouse=a

# 使用 utf-8 编码
set encoding=utf-8

# 启用 256 色
set t_Co=256

# 开启文件类型检查，并且载入与该类型对应的缩进规则。如，如果编辑的是 .py 文件，Vim 就会找 Python 的缩进规则 ~/.vim/indent/python.vim
# filetype indent on



##### 缩进

# 回车后下一行会自动跟上一行缩进保持一致
set autoindent

# Tab 键显示空格数
set tabstop=2



##### 外观

# 显示行号
set number

# 显示相对行号
set relativenumber

# 浅色显示当前行
autocmd InsertLeave * se nocul

# 设置行宽（一行显示多少个字符）
set textwidth=80

# 自动折行
set wrap

# 遇到指定符号（空格、连词号、其他标点符号），才发生折行。即不会在单词内折行
set linebreak

# 指定折行处于编辑窗口右边缘之间空出的字符数
set wrapmargin=2

# 是否显示状态栏（0，不显示；1 只在多窗口时显示；2 显示）
set laststatus=0

# 在状态栏显示光标位置
set ruler



##### 搜索

# 光标遇到括号时，自动高亮对应的括号
set showmatch

# 搜索时，高亮匹配结果
set hlsearch

# 输入模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch

# 搜索时忽略大小写
set ignorecase

# 如果同时打开了
# ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索
# Test 时，将不匹配 test；搜索 test 时，将匹配 Test
set smartcase



##### 编辑

# 打开英语单词拼写检查
# set spell spelllang=en_us
# 会高亮汉字和单词的背景，很丑

# 不创建备份文件
set nobackup

# 不创建交换文件
set noswapfile

# 设置 Vim 需要记住多少次历史操作
set history=1000

# 命令模式下，底部操作指令按下 Tab 自动补全。第一次按下
# Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令
set wildmenu
set wildmode=longest:list,full

# 行尾空格高亮显示
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

# 括号与引号自动配对
inoremap ( ()<esc>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {<CR>}<esc>O
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<esc>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap < <><esc>i
inoremap > <c-r>=ClosePair('>')<CR>
inoremap " ""<esc>i
inoremap ' ''<esc>i
function! ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endfunction



##### 按键（映射）

# 设置 leader 键
let mapleader=","

# 映射 jj 到 ESC
inoremap jj <esc>`^

# 保存与退出
noremap <leader>wq :wq<CR>
noremap <leader>w :w!<CR>
noremap <leader>q :q!<CR>
inoremap <leader>w <esc>:w<CR>





