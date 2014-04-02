"" .vimrc
"" Mac Radigan

setlocal autoread
filetype plugin on
set tags+=./tags;./src/tags;/
"let &makeprg='if [ -f Makefile ]; then make; else make -C ..; fi; '
let &makeprg='make -C .. '
set expandtab
let g:win=10
let g:lnum=1
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost l* nested lwindow
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd BufReadPre, FileReadPre *.[chy] setlocal cindent
autocmd BufReadPre, FileReadPre Makefile setlocal noexpandtab
autocmd BufReadPre, FileReadPre *.mk setlocal noexpandtab
runtime macros/matchit.vim
let mapleader = ","
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
set mouse=a
syntax on
"color torte
set path+=,,
set path+=.
set path+=./include
set nu
set scrolloff=3
set confirm
"set viminfo='20,<50,s10,h,%
set guioptions+=c
set autochdir
set shortmess=aTI
set vb t_vb=".  ## no beep
set visualbell
set title
"set backupdir=~/.vim-temp
"set directory=~/.vim-temp
"set dir=~/.vim-temp
set history=1000
set display=uhex
set showmatch
set cinoptions=(0
"set expandtab
set hlsearch
"set spelllang=en_us
set nocp
set ruler
set showmode
set shiftwidth=1
set modeline
set bs=2
set ls=2
set smartindent
set nu
set nolist
set incsearch

"cmap hs sp
"cmap buf buffers
nnoremap <leader>gm :exe @g<CR>
"nnoremap <leader>g :!%:p
"nnoremap <leader>gg :!%:p<CR>
nnoremap <leader>XX :!../test.sh<CR>
nnoremap <leader>gc :make clean<CR>
nnoremap <leader>gg :make <CR>
"nnoremap <leader>gg :make -C ..<CR>
nnoremap <leader>rr :make test<CR>
nnoremap <leader>ss :call MakeSession()<CR>
nnoremap <leader>cc :qall!<CR>
nnoremap j :cn<CR>
nnoremap k :cp<CR>
"nnoremap <leader>cc :hid<CR>
nnoremap <leader>zz :w!<CR>:qall<CR>
nnoremap <leader>cd :cd %:h<CR>
nnoremap <leader>nn :nonu!<CR>
nnoremap <leader>lpu :!enscript -b"HEADER" -h -G -L65 -r -fCourier7 -2 %<CR>
nnoremap <leader>se :Sex<CR>
nnoremap <leader>sp :Sex<CR>
nnoremap <leader>sv :Sex!<CR>
nnoremap <leader>sp :sp<CR>
nnoremap <leader>vv :vs<CR>
nnoremap <leader>vs :vs<CR>
nnoremap <leader>ev :new ~/.vimrc<CR>
nnoremap <leader>vc :new ~/.vimrc<CR>
nnoremap <leader>ve :new ~/.vimrc<CR>
nnoremap <leader>es :so ~/.vimrc<CR>
nnoremap <leader>ss :so ~/.vimrc<CR>:hid<CR>
nnoremap <leader>ei :cope<CR>
nnoremap <leader>rl :tabn<CR>
nnoremap <leader>rk :tabn<CR>
nnoremap <leader>rh :tabN<CR>
nnoremap <leader>rg :tabN<CR>
nnoremap <leader>rq :tabc<CR>
nnoremap <leader>r$ :tabl<CR>
nnoremap <leader>r0 :tabf<CR>
nnoremap <leader>ro :tabo<CR>
nnoremap <leader>rt :tabnew<CR>
nnoremap <leader>ta :ta 
nnoremap <leader>sts :stj /
nnoremap <leader>ts :tj /
nnoremap <leader>tk :tagN<CR>
nnoremap <leader>th :tagN<CR>
nnoremap <leader>tj :tagn<CR>
nnoremap <leader>tl :tagn<CR>
nnoremap <leader>tq :tagc<CR>
nnoremap <leader>t$ :tagl<CR>
nnoremap <leader>t0 :tagf<CR>
nnoremap <leader>to :tago<CR>
"nnoremap <leader>tu :!ctags --langmap=c:+.cu --exclude=".pc" --recurse<CR><CR>
nnoremap <leader>tu :!ctags -f tags *.[ch]*<CR><CR>
nnoremap <leader>sh :shell<CR>
nnoremap <leader>mm :!man 
nnoremap <F1> .j0
nnoremap <leader>gr :vimgrep 
nnoremap <leader>GR :!grep 
nnoremap <leader>wl :winc l<CR>
nnoremap <leader>wj :winc j<CR>
nnoremap <leader>wk :winc k<CR>
nnoremap <leader>wh :winc h<CR>
nnoremap <leader>wc :hid<CR>
nnoremap <leader>hi :hid<CR>
nnoremap <leader>wo :on<CR>
nnoremap <leader>ll :winc l<CR>
nnoremap <leader>jj :winc j<CR>
nnoremap <leader>kk :winc k<CR>
nnoremap <leader>hh :winc h<CR>
nnoremap <leader>oo :on<CR>
nnoremap <leader>ee :call TellScreenR()<CR>
nnoremap <leader>EE :call TellScreen()<CR>
nnoremap <leader>xx :!./%<CR>
"nnoremap <leader>xx :!root -l -q -x -b ./%<CR>
"nnoremap <leader>XX :call ExecVisual()<CR>
nnoremap <leader>nn <C-W>_<C-W><Bar>
nnoremap <leader>NN <C-W>_<C-W>=
nnoremap <leader>V <C-V><CR>
nnoremap <leader><leader>j :cn<CR>
nnoremap <leader><leader>k :cp<CR>
nnoremap <leader>. .n<CR>
nnoremap ∆ :cn<CR>
nnoremap  :cn<CR>
nnoremap ˚ : cp<CR>
nnoremap  : cp<CR>
nnoremap <leader>S :e ../src/%<.cpp<CR>
nnoremap <leader>H :e ../include/%<.hpp<CR>
nnoremap <leader># :call ToggleLineNumber()<CR>
nnoremap <leader>$ :call ToggleSyntax()<CR>
nnoremap <C-N> :next<Enter>
nnoremap <C-P> :prev<Enter>
nnoremap <leader>1 :b1<CR>
nnoremap <leader>2 :b2<CR>
nnoremap <leader>3 :b3<CR>
nnoremap <leader>4 :b4<CR>
nnoremap <leader>5 :b5<CR>
nnoremap <leader>6 :b6<CR>
nnoremap <leader>7 :b7<CR>
nnoremap <leader>8 :b8<CR>
nnoremap <leader>9 :b9<CR>
nnoremap <leader>0 :b0<CR>
imap <leader>c <ESC>
map <leader>c <ESC>
nnoremap <leader>f <C-Z>
set confirm

if exists('+autochdir')
 "set autochdir
else
  autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif

function! ToggleLineNumber()
  if g:lnum == 1
    let g:lnum = 0
    :set nonu
  else
    let g:lnum = 1
    :set nu
  endif
endfunction

function! ToggleSyntax()
  if exists("g:syntax_on")
    syntax off
  else
    syntax on
  endif
endfunction

function! TellScreenR() range
  normal!""gvy
  let text = getreg('"')
  let lines = split(text, '\n')
  "echo text
  for line in lines
    silent exec '!screen -R -D -p ' . g:win . ' -X stuff "' . line . '"'
  endfor
endfunction

function! TellScreen() 
  normal!""ggyG
  let text = getreg('"')
  let lines = split(text, '\n')
  "echo text
  for line in lines
    silent exec '!screen -R -D -p ' . g:win . ' -X stuff "' . line . '"'
  endfor
endfunction

function! ExecVisual()
  normal!""gvy
  let text = getreg('"')
  let line = substitute(text, '\n', '', 'g')
  exec 'echo "' . line . '"'
  exec line
endfunction

"" *EOF*
