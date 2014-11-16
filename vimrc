set nu
set cursorline
set tabstop=4
set shiftwidth=4
set smartindent
set showmatch
set matchtime=5
set ignorecase
set nobackup
set foldmethod=syntax
execute pathogen#infect()
syntax on
filetype plugin indent on
let g:vim_markdown_folding_disabled=1

set laststatus=2
syntax enable
"set background=light
colorscheme desert

"Tex 的配置文件
command!Tex call Tex()
function! Tex()
w
!xelatex %
"silent !pdflatex %:r
silent !rm %:r.aux
silent !rm %:r.log
silent !xpdf %:r.pdf
endfunction

nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_width = 30

nmap <silent> <F3> :NERDTreeToggle<CR>
""vimim
""<Ctrl+/> <Ctrl+Shift+6>
""vimim + <Ctrl_Shift+6> 快捷键打开点石成金
let g:vimim_toggle='wubi,pinyin'
