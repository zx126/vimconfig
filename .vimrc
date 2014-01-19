" runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax on
syntax enable
filetype plugin on
filetype indent plugin on
autocmd FileType python setlocal et sta sw=4 sts=4
filetype on

set number
set ruler
set t_Co=256

colorscheme desert

set tags=tags
set tags+=$HOME/.vim/tags/python.ctags

let g:NERDTree_title='[NERD Tree]'

let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1

autocmd FileType python set omnifunc=pythoncomplete#Complete  
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS  
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags  
autocmd FileType css set omnifunc=csscomplete#CompleteCSS  
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags  
autocmd FileType php set omnifunc=phpcomplete#CompletePHP  
autocmd FileType c set omnifunc=ccomplete#Complete

let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0 

let winManagerWindowLayout = 'NERDTree|TagList,BufExplorer'

function! NERDTree_Start()
	exec 'NERDTree %:h'
endfunction

function! NERDTree_IsValid()
	return 1
endfunction

nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
nmap <F3> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
"nmap <silent> <F3> :WMToggle<cr>

map <C-j> <C-w>j<C-w>
map <C-h> <C-w>h<C-w>
map <C-k> <C-w>k<C-w>
map <C-l> <C-w>l<C-w>
