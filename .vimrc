" シンタックス有効
syntax on

" Vundleを利用
set rtp+=~/.vim/vundle/
call vundle#rc()

" ファイルタイプ判定ON
filetype plugin indent on

" 行番号を表示
set number

" 折り返さない
set nowrap

" カーソル位置を表示
set ruler

"変更されたときに自動読み込み
set autoread

" モードラインを無効にする
set nomodeline
set modelines=0

" バックアップはとらない
set nobackup
set noswapfile
set directory=~/.vim/swp

" バックスペースで何でも消せるように
set backspace=indent,eol,start

" ペアとなる括弧の定義
set matchpairs+=<:>

" undoを記録
" set undofile

" 編集中もほかファイルを開けるように
set hidden

" タブを表示するときの幅
set tabstop=4
" タブを挿入するときの幅
set shiftwidth=4
" タブをタブとして扱う(スペースに展開しない)
set noexpandtab
" タブキーを押したときの挿入量をtabstopに合わせる
set softtabstop=0

" タブと改行を表示
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:↵
highlight SpecialKey term=underline ctermfg=darkgray guifg=darkgray
highlight NonText term=underline ctermfg=darkgray guifg=darkgray

" 全角スペース表示
highlight ZenkakuSpace cterm=underline ctermfg=red guibg=red guifg=white
match ZenkakuSpace /　/

" C-Cでエスケープキーと同等
noremap <C-C> <ESC>

" arpeggio(同時押し設定)
Bundle "arpeggio"
let g:arpeggio_timeoutlen = 70
call arpeggio#load()

" jkでエスケープキーと同等
Arpeggio inoremap jk <Esc>
Arpeggio onoremap jk <Esc>
Arpeggio vnoremap jk <Esc>

" シフト移動
noremap J 30j
noremap K 30k
noremap L 20l
noremap H 20h

" 補完
imap <Nul> <C-P>

" 行頭と行末に移動
noremap <C-A> <Home>
inoremap <C-A> <Home>
noremap <C-E> <End>
inoremap <C-E> <End>

" 検索ハイライトを使う
set hlsearch

"" カーソル行のハイライト
"" カレントウィンドウにのみ罫線を引く
"augroup cch
"	autocmd! cch
"	autocmd WinLeave * set nocursorline
"	autocmd WinLeave * set nocursorcolumn
"	autocmd WinEnter,BufRead * set cursorline
"	autocmd WinEnter,BufRead * set cursorcolumn
"augroup END

" xはヤンクしない
" nnoremap <buffer> x v"xc<ESC>l"

" ファイルを開き直した時にカーソルの位置を記憶

