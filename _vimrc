" 行番号を表示
set number

" vi互換をオフ
set nocompatible

" 新しい行のインデントを現在の行と同じに
set autoindent

" バックアップファイルのディレクトリを指定"
set backupdir = $HOME/vimbackup
" インクリメンタルサーチの設定
set incsearch

" タブや行末などの不可視文字を表示
set list

" とじ括弧を入力したときに対応する括弧を表示する
set showmatch

" 新しい行を作ったときに高度な自動インデントを行う
set smartindent

" シフトの移動幅を4に
set shiftwidth=4

" grep検索を設定"
set grepformat = %f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg = grep\ -nh

" 検索結果のハイライトをEscキー連打でクリア"
nnoremap <ESC><ESC> :nohlsearch<CR>

" Mac ClipBoard
vmap <silent> sy :!pbcopy; pbpaste<CR>
map <silent> sp <esc>o<esc>v :!pbpaste<CR>

" 入力モード時、ステータスラインのカラーを変更
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

" Solarizedに最適化
syntax enable
set background=dark
" colorscheme solarized
let g:solarized_termcolors=256

