"" .vimrc
"" Mac Radigan


let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'nerdtree')
call add(g:pathogen_disabled, 'lusty')
execute pathogen#infect()
set clipboard=unnamed
set go+=a
setlocal autoread
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set tags+=./tags;./src/tags;/
"let &makeprg='if [ -f Makefile ]; then make; else make -C ..; fi; '
"let &makeprg='make -C .. '
let &makeprg='make -C . '
"color torte
"color delek
set expandtab
set guioptions-=m
set guioptions-=T
let g:win=10
let g:lnum=1
let g:cline=1
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
let NERDTreeShowHidden=1
let NERDTreeHijackNetrw=1
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
set mouse=a
syntax on
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
set vb t_vb=".
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
nnoremap <leader>K :!rlwrap -a -m -z shell q<CR>
nnoremap <leader>E :!rlwrap -a -m -z shell elix<CR>
nnoremap <leader>C :!octave -q<CR>
nnoremap <leader>A :!apl --silent<CR>
nnoremap <leader>J :!rlwrap -a -m -z shell jconsole<CR>
nnoremap <leader>U :!rlwrap -a -m -z shell julia<CR>
nnoremap <leader>O :!octave -q<CR>
nnoremap <leader>R :!rlwrap -a -m -z shell R -q<CR>
nnoremap <leader>G :!rlwrap -a -m -z shell gdl -q<CR>
nnoremap <leader>ro :!root -l<CR>
nnoremap <leader>py :!python -q<CR>
nnoremap <leader>cj :!clojure<CR>
nnoremap <leader>cl :!sbcl<CR>
nnoremap <leader>gm :exe @g<CR>
"nnoremap <leader>g :!%:p
"nnoremap <leader>gg :!%:p<CR>
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
nnoremap <leader>t1 1gt
nnoremap <leader>t2 2gt
nnoremap <leader>t3 3gt
nnoremap <leader>t4 4gt
nnoremap <leader>t5 5gt
nnoremap <leader>t6 6gt
nnoremap <leader>t7 7gt
nnoremap <leader>t8 8gt
nnoremap <leader>t9 9gt
nnoremap <leader>t0 1gt
nnoremap <leader>rl :tabn<CR>
nnoremap <leader>rk :tabn<CR>
nnoremap <leader>rh :tabN<CR>
nnoremap <leader>rg :tabN<CR>
nnoremap <leader>rq :tabc<CR>
nnoremap <leader>r$ :tabl<CR>
nnoremap <leader>r0 :tabf<CR>
"nnoremap <leader>ro :tabo<CR>
nnoremap <leader>tt :tabnew<CR>
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
"nnoremap <leader>wl :winc l<CR>
"nnoremap <leader>wj :winc j<CR>
"nnoremap <leader>wk :winc k<CR>
"nnoremap <leader>wh :winc h<CR>
"nnoremap <leader>wc :hid<CR>
nnoremap <leader>i :hid<CR>
"nnoremap <leader>wo :on<CR>
nnoremap <leader>l :winc l<CR>
nnoremap <leader>j :winc j<CR>
nnoremap <leader>k :winc k<CR>
nnoremap <leader>h :winc h<CR>
nnoremap <leader>o :on<CR>
"nnoremap <leader>ee :call TellScreenR()<CR>
"nnoremap <leader>EE :call TellScreen()<CR>
nnoremap <leader>mx :!chmod 755 %<CR>
nnoremap <leader>x :!./%<CR>
nnoremap <leader>ra :!ranger<CR>
nnoremap <leader>fm :!vifm<CR>
nnoremap <leader>QQ :call DoNMacro()<CR>
nnoremap <leader>QB :bufdo! normal! @q<CR>
nnoremap <leader>QW :windo! normal! @q<CR>
"nnoremap <leader>xx :!root -l -q -x -b ./%<CR>
map <leader>e :call ExecVisual()<CR>
nnoremap <leader>nn <C-W>_<C-W><Bar>
nnoremap <leader>NN <C-W>_<C-W>=
nnoremap <leader>V <C-V>
nnoremap <leader><leader>j :cn<CR>
nnoremap <leader><leader>k :cp<CR>
nnoremap <leader>. .n<CR>
nnoremap <leader>/ :noh<CR>
nnoremap <leader><Space> :cn<CR>
nnoremap ∆ :cn<CR>
nnoremap  :cn<CR>
nnoremap ˚ : cp<CR>
nnoremap  : cp<CR>
nnoremap <leader>S :e ../src/%<.cpp<CR>
nnoremap <leader>H :e ../include/%<.hpp<CR>
nmap <silent> <Leader>W :Project ~/.vimproject<CR>
nnoremap <leader>w :NERDTreeToggle<CR>
nnoremap <leader>F :NERDTreeFind<CR>
nnoremap <leader># :call ToggleLineNumber()<CR>
nnoremap <leader>$ :call ToggleSyntax()<CR>
nnoremap <leader>^ :colorscheme 
nnoremap <leader>) :call ToggleCursorLine()<CR>
"nnoremap <C-N> :next<Enter>
"nnoremap <C-P> :prev<Enter>
"nnoremap <C-P> :prev<Enter>
nnoremap <C-i> "*p
nnoremap <C-c> "*y
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
vmap / y:execute "/".escape(@",'[]/\.*')<CR>
inoremap <Tab> <C-n>
noremap ; :
cmap w!! w !sudo tee %>/dev/null
nnoremap <leader>f :FufFile **/<CR>
nnoremap <leader>b :FufBuffer **/<CR>
nnoremap <leader>T :FufTag<CR>
nnoremap <leader>F <C-Z>
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
set confirm

if exists('+autochdir')
 "set autochdir
else
  autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif

function! ToggleCursorLine()
  if g:cline == 1
    let g:cline = 0
    :set cursorline
  else
    let g:cline = 1
    :set nocursorline
  endif
endfunction


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

function! DoNMacro()
  call NMacro(@/, "q")
endfunction

function! NMacro(pattern, macro)
  exec(":lv ".a:pattern." ".expand("%"))
  let n = len(getloclist(0))
  exec("normal! ".n."@".a:macro)
endfunction

function! Browser()
  let buf = getline(".")
  let buf = matchstr (buf, "http[^ ]*")
  exec "!/opt/firefox/firefox-bin ".buf
" let result = system("!/opt/firefox/firefox-bin ".buf)
endfunction
map <leader>w :call Browser()<CR>

"" *EOF*
