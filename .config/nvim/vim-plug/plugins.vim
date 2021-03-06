let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdcommenter'

" notes - slows down closing buffers to 2 secs
"Plug 'vimwiki/vimwiki'
"Plug 'Konfekt/FastFold'

"vim-dotoo - org mode or sth
"Plug 'dhruvasagar/vim-dotoo'

" js-highlighting
Plug 'yuezk/vim-js'

" telescope
"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'

" html live preview
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

" js-highlighting
Plug 'yuezk/vim-js'

" closing tags in html
Plug 'alvan/vim-closetag'

" snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" python highlighting
Plug 'vim-python/python-syntax'

"Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

" fuzzyfinder - fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" telescope
"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'

Plug 'jiangmiao/auto-pairs'

" themes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'nanotech/jellybeans.vim'
Plug 'sickill/vim-monokai'
"Plug 'danilo-augusto/vim-afterglow'

" Plug 'neovim/nvim-lspconfig'

" barbar (tabs)
"Plug 'kyazdani42/nvim-web-devicons'
"Plug 'romgrk/barbar.nvim'

" ctrlp/fuzzyfinder
"Plug 'ctrlpvim/ctrlp.vim'

" nerdtree
"Plug 'preservim/nerdtree'

" colorizer
Plug 'norcalli/nvim-colorizer.lua'

Plug 'ryanoasis/vim-devicons'

" coc-nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Discord presence
Plug 'andweeb/presence.nvim'

" airLINE
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

Plug 'lervag/vimtex'

" vim markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" markdown preview
"Plug 'JamshedVesuna/vim-markdown-preview'
call plug#end()
