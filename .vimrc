" 顯示行號
set nu

" 自動縮排，新增一行時會沿用上一行的縮排
set ai

" 高亮顯示目前游標所在的那一行
set cursorline

" 設定背景色系為亮色，讓 Vim 選擇適合亮色背景的配色
set bg=light

" Tab 鍵顯示為 4 個空白寬度
set tabstop=4

" 自動縮排時，每一層縮排使用 4 個空白寬度
set shiftwidth=4

" 在註解中按 Enter 換行時，自動延續註解符號
set formatoptions+=r

" 指令歷史紀錄保留 100 筆
set history=100

" 搜尋時即時顯示符合的結果
set incsearch

" 設定終端機支援 256 色
set t_Co=256

" 啟用 C/C++ 風格的自動縮排
set cindent

" 在底部顯示目前模式，例如 INSERT、VISUAL
set showmode

" 文字太長時自動換行顯示，不會超出螢幕
set wrap

" Vim 內部使用 UTF-8 編碼
set encoding=utf-8

" 開啟檔案時依序嘗試這些編碼，避免中文或日韓文字亂碼
set fileencodings=utf-8,utf-16,big5,gb2312,gbk,gb18030,euc-jp,euc-kr,latin1


" 使用 Vim 預設配色
colo default


" 根據檔案類型啟用對應的縮排規則
filetype indent on


" 設定一般行號的顯示樣式：
" cterm=bold      表示粗體
" ctermfg=208     表示前景色使用 208 號顏色
" ctermbg=None    表示背景色不特別設定
hi LineNr cterm=bold ctermfg=208 ctermbg=None

" 設定目前游標所在行的行號樣式：
" 粗體、前景色為 40、背景色為 234
hi CursorLineNr cterm=bold ctermfg=40 ctermbg=234

" 設定目前游標所在行的整行樣式：
" 不改變文字樣式與前景色，只設定背景色為 234
hi CursorLine cterm=None ctermfg=None ctermbg=234


" 開始 vim-plug 外掛管理區塊
" 外掛會安裝到 ~/.vim/plugged 這個資料夾
call plug#begin('~/.vim/plugged')


" NERDTree：檔案總管，可以在 Vim 左側瀏覽資料夾與檔案
Plug 'preservim/nerdtree'

" fzf：模糊搜尋工具本體
" 安裝後會執行 fzf#install() 來完成 fzf 的安裝
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" fzf.vim：讓 fzf 整合到 Vim 裡，例如搜尋檔案、Buffer、文字內容
Plug 'junegunn/fzf.vim'

" vim-airline：美化 Vim 底部狀態列，顯示模式、檔名、編碼、Git 分支等資訊
Plug 'vim-airline/vim-airline'

" nerdcommenter：快速註解或取消註解程式碼
Plug 'preservim/nerdcommenter'

" vim-gitgutter：在行號旁顯示 Git 修改狀態，例如新增、修改、刪除的行
Plug 'airblade/vim-gitgutter'

" auto-pairs：自動補齊括號、引號等成對符號
Plug 'jiangmiao/auto-pairs'


" 結束 vim-plug 外掛管理區塊
call plug#end()


" 設定 leader 鍵為空白鍵
" 之後 <leader> 就代表空白鍵
let mapleader = " "


" 按 F2 開啟或關閉 NERDTree 檔案總管
nnoremap <F2> :NERDTreeToggle<CR>

" 在普通模式按 Ctrl + p，使用 fzf 搜尋檔案
nnoremap <C-p> :Files<CR>

" 按 空白鍵 + g，使用 ripgrep 搜尋專案內文字
" 需要系統有安裝 rg，也就是 ripgrep
nnoremap <leader>g :Rg<CR>

" 按 空白鍵 + b，使用 fzf 切換目前開啟的 Buffer
nnoremap <leader>b :Buffers<CR>

" 按 空白鍵 + w，儲存目前檔案
nnoremap <leader>w :w<CR>

" 按 空白鍵 + q，關閉目前視窗或離開 Vim
nnoremap <leader>q :q<CR>
