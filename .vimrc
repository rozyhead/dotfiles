" ChangeLog用の設定
:au BufNewFile,BufRead *.changelog setf changelog
:let g:changelog_dateformat = "%Y-%m-%d"
:let g:changelog_username = "miyajima <rozyhead@gmail.com>"
runtime ftplugin/changelog.vim

" バックアップを作成しない
set nobackup

" スワップファイルを作成しない
set noswapfile

" 行番号を表示する
set number

" タブの指定
set expandtab
set tabstop=2
set softtabstop=2

" 自動的にインデントする
set autoindent
set smartindent

" 空行のインデントを勝手に消さない
"nnoremap o oX<C-h>
"nnoremap O OX<C-h>
"inoremap <CR> <CR>X<C-h>

" ステータスバーの設定
set statusline=%<[%n]%F%=\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}\ %l,%c\ %P

" 空白類文字を表示
set list
set listchars=tab:>-,extends:<,trail:-,eol:\

" 全角スペースを視覚化
if has('syntax')
	syntax enable
	function! ActivateInvisibleIndicator()
		highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=#FF0000
		match ZenkakuSpace /　/
	endfunction
	augroup InvisibleIndicator()
		autocmd!
		autocmd BufEnter * call ActivateInvisibleIndicator()
	augroup END
endif

" 文字コードの自動解釈の優先順位
set fileencodings=utf-8,cp932,euc-jp
" 改行コードの解釈の優先順位
set fileformats=unix,dos

nmap <Space>b :ls<CR>:buffer 
nmap <Space>f :edit .<CR>
nmap <Space>v :vsplit<CR><C-w><C-w>:ls<CR>:buffer
nmap <Space>V :Vexplore!<CR><CR>

" 自動補完の設定
let g:neocomplcache_enable_at_startup = 1

" ヤンクをクリップボードへ
set clipboard+=unnamed

" 編集中でもバッファを切り替えれる
set hidden

set ruler
set title

" カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
augroup cch
autocmd! cch
autocmd WinLeave * set nocursorline
autocmd WinEnter,BufRead * set cursorline
augroup END
:hi clear CursorLine
:hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

" Escの2回押しでハイライト消去
nmap <ESC><ESC> ;nohlsearch<CR><ESC>
