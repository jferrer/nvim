" Neovim initialization file.

" Configuration for Neovim out of the box
source /root/.config/nvim/general/settings.vim
source /root/.config/nvim/general/keys.vim

" Neovim extensions
call plug#begin('/root/.config/nvim/plugins')
  Plug 'catppuccin/nvim', {'as': 'catppuccin'}
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-markdown'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-endwise'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-ruby/vim-ruby'
  Plug 'w0rp/ale'
  Plug 'tpope/vim-rails'
  Plug 'pbrisbin/vim-mkdir'
  Plug 'slim-template/vim-slim'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-eunuch'
  Plug 'vim-scripts/tComment'
  Plug 'mhinz/vim-grepper'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
  Plug 'dhruvasagar/vim-zoom'

  Plug 'mhinz/vim-startify'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  "Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
  " optional for icon support
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'stsewd/fzf-checkout.vim'
  Plug 'ap/vim-css-color'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'puremourning/vimspector'
call plug#end()

" Extensions configuration
source /root/.config/nvim/theme/theme.vim
source /root/.config/nvim/airline/airline.vim
source /root/.config/nvim/nerdtree/nerdtree.vim
source /root/.config/nvim/nerdtree/nerdtree-git.vim
source /root/.config/nvim/startify/startify.vim
source /root/.config/nvim/telescope/telescope.vim
source /root/.config/nvim/fzf/fzf.vim
source /root/.config/nvim/git/fugitive.vim
source /root/.config/nvim/git/fzf-checkout.vim
source /root/.config/nvim/treesitter/treesitter.vim
source /root/.config/nvim/coc/coc.vim
source /root/.config/nvim/coc/extensions.vim
source /root/.config/nvim/vimspector/vimspector.vim
