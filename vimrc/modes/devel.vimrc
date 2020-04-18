source ~/data/dotfiles/vimrc/plugins/default.vimrc

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

" Download and install automatically
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug        'airblade/vim-gitgutter'
Plug        'tpope/vim-fugitive'
Plug        'tpope/vim-sleuth'
Plug        'tpope/vim-surround'
Plug        'tpope/vim-unimpaired'
Plug        'tpope/vim-commentary'
Plug        'tpope/vim-markdown'
Plug        'tpope/vim-repeat'
PlugModule  'delimitMate'
PlugModule  'tagbar'
PlugModule  'nerdtree'
PlugModule  'plantuml-syntax'
PlugModule  'ctrlp'
PlugModule  'vim-airline'
PlugModule  'vim-hardtime'
PlugModule  'ultisnips'
PlugModule  'YouCompleteMe'

PlugModule  'colorschemes/vim-one'
" Initialize plugin system
call plug#end()

exec "colorscheme " . g:colors_name


