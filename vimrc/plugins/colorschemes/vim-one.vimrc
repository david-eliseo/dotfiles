" Colorscheme vim-one
Plug 'rakr/vim-one'

let g:airline_theme='one'
let g:colors_name='one'
let g:one_allow_italics = 1

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

if $BACKGROUND == 'light' || has("gui_running")
  set background=light
elseif $BACKGROUND == 'dark'
  set background=dark
  autocmd FileType tex call CustomColors()
endif

function CustomColors()
  highlight ExtraWhitespace guifg=#6a768a
  highlight Conceal guifg=#bcd4e6
  match ExtraWhitespace /\s\+$/
endfunction


