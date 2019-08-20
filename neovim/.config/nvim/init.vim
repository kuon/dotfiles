"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
set runtimepath+=/usr/share/vim/vimfiles/

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')


  " Other languages support
  call dein#add('sheerun/vim-polyglot')

  " Vimproc
  "call dein#add('Shougo/vimproc.vim', {'build' : 'make'})

  " Autocompletion
  "call dein#add('Valloric/YouCompleteMe')
  call dein#add('Shougo/deoplete.nvim')
  "
  " Surround util
  call dein#add('tpope/vim-surround')

  " Git utils
  call dein#add('tpope/vim-fugitive')

  " Javascript
  call dein#add('pangloss/vim-javascript')

  " OpenSCAD
  call dein#add('sirtaj/vim-openscad')

  " Color theme
  " call dein#add('altercation/vim-colors-solarized')
  call dein#add('chriskempson/base16-vim')

  " NERDtree
  call dein#add('scrooloose/nerdtree')

  " Undo Tree
  call dein#add('mbbill/undotree')

  " Typescript integration
  "call dein#add('mhartington/nvim-typescript')
  call dein#add('leafgarland/typescript-vim')
  "call dein#add('Quramy/tsuquyomi')

  " Autoformat
  call dein#add('Chiel92/vim-autoformat')
  " call dein#add('sbdchd/neoformat')

  " Parse .editorconfig
  call dein#add('editorconfig/editorconfig-vim')

  " Ruby
  call dein#add('vim-ruby/vim-ruby')

  " Slim templates
  call dein#add('slim-template/vim-slim')

  " Ansible
  call dein#add('pearofducks/ansible-vim')

  " Swift
  call dein#add('keith/swift.vim')

  " Json
  " call dein#add('XadillaX/json-formatter.vim')

  " Elixir
  call dein#add('elixir-editors/vim-elixir')

  " Elixir bis
  "call dein#add('slashmili/alchemist.vim')

  " Markdown
  call dein#add('plasticboy/vim-markdown')

  " Status bar search status
  call dein#add('osyo-manga/vim-anzu')

  " Fuzzy finder
  call dein#add('junegunn/fzf.vim')
  " call dein#add('wincent/command-t')
  " call dein#add('vim-ctrlspace/vim-ctrlspace')

  " Powerline
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " Snippets
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
  "
  "
  " Elm support
  call dein#add('elmcast/elm-vim')
  " call dein#add('pbogut/deoplete-elm')

  " Linter
  call dein#add('w0rp/ale')
  " Tandem
  " call dein#add('typeintandem/vim')

  " Csharp
  " call dein#add('OmniSharp/omnisharp-vim')
  "
  " call dein#add('beyondmarc/hlsl.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" Installed missing plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Force sh based shell
set shell=/bin/bash

" Show line numbers
set number

" Break lines at word (requires Wrap lines)
set linebreak

" Wrap-broken line prefix
set showbreak=+++

" Line wrap (number of cols)
set textwidth=80

" Don't Highlight matching brace as it's slow
set noshowmatch

" No modeline
set nomodeline

" Bracket blinking.
set matchtime=5

" Use visual bell (no beeping)
set visualbell

" hidden buffers
set hidden

" display cursor line
set cursorline
set nocursorcolumn

" mouse support
set mouse=a


" Highlight all search results
set hlsearch

" Enable smart-case search
set smartcase

" Always case-insensitive
set ignorecase

" Searches for strings incrementally
set incsearch

" Auto-indent new lines
set autoindent

" Use spaces instead of tabs
set expandtab

" Number of auto-indent spaces
set shiftwidth=2

" Enable smart-indent
set smartindent

" Enable smart-tabs
set smarttab

" Number of spaces per Tab
set softtabstop=2

" Auto re-read files
set autoread

" Auto chdir
" set autochdir

" Change terminal's title
set title

" Show column 80
set colorcolumn=80

" Show row and column ruler information
set ruler


" Number of undo levels
set undolevels=1000
set undoreload=10000

" remember more commands and search history
set history=1000

" Backspace behaviour
set backspace=indent,eol,start

" Draw everything (slower)
set nolazyredraw
"
" Lazy redraw (faster)
" set lazyredraw
"
syntax sync minlines=256
set synmaxcol=200

" Dark background
set background=dark

" Scroll more when outside of visible area
set scrolljump=10
set scrolloff=3

" Use base16 color scheme
"let g:solarized_termcolors=256
"colorscheme solarized
let base16colorspace=256
colorscheme base16-harmonic-dark

" Nice font, only for gvim and thelike
set guifont=Mononoki:h15

" Use mac clipboard
set clipboard=unnamedplus

"" Centralised temporary files
set backupcopy=auto
set backup
set backupdir=~/.vim/backup//
set swapfile
set directory=~/.vim/swap//
set undofile
set undodir=~/.vim/undo//

" Show  tab characters. Visual Whitespace.
set list
set listchars=tab:>.,nbsp:¯,trail:¶

" Set status line
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*
set statusline+=%#warningmsg#
set statusline+=%*
set statusline+=\ \ %{anzu#search_status()}

" Always display a status line at the bottom of the window
set laststatus=2

" Autowrite
set autowriteall

" Ignore some files
set wildignore+=*.o,*.obj,.git,.svn,*.png,*.jpg,*.gif,*.pdf

set ttimeoutlen=10

" Update SWAP file every 2 seconds (triggers CursorHold)
set updatetime=2000

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Autocommands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ensure cursor moves quickly
" This clears all autocommand when the cursor is moved
au! CursorMoved

" Quit vim if NERDTree is last buffer
au BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

fun! CheckAndSave()
  " checktime
  " silent! wall
  checktime
  silent! up!
endfun

" Autowrite when buffer changes and when focus is lost
"au InsertLeave,BufLeave,FocusLost,CursorHold,CursorHoldI * :call CheckAndSave()
au BufLeave,FocusLost * :call CheckAndSave()

" Start NERDTree automatically
augroup ProjectDrawer
  " Clear group
  au!
  " Start NERDTree
  au VimEnter * NERDTree
  " Go to previous (last accessed) window.
  au VimEnter * wincmd p
augroup END

au BufEnter term://* startinsert
au BufEnter * :syn sync maxlines=500

fun! StripTrailingWhitespaces()
  if &modifiable && &binary == 0
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
  endif
endfun

au FileWritePre * :call StripTrailingWhitespaces()
au FileAppendPre * :call StripTrailingWhitespaces()
au FilterWritePre * :call StripTrailingWhitespaces()
au BufWritePre * :call StripTrailingWhitespaces()

au BufLeave,FocusLost,CursorHold,CursorHoldI * :call StripTrailingWhitespaces()

"au CursorMoved * :call StripTrailingWhitespaces()


au FileType make setlocal noexpandtab sw=4 ts=4
au BufNewFile,BufRead *.cginc set ft=hlsl
au BufNewFile,BufRead *.cg set ft=hlsl

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Keyboard shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


" Change the leader key to something handy on the swiss keyboard
let mapleader = '§'

" Shift Enter insert a new line
nmap <M-Enter> a<Enter><Esc>


"" F1-F4 search files

" Fuzzy find git files with F1
noremap <F1> :FZF<CR>

" Fuzzy find buffers with F2
noremap <F2> :Buffers<CR>

" Fuzzy find in files with F3
noremap <F3> :Rg<CR>

" Find in NERDTree
noremap <F4> :NERDTreeFind<CR>


"" F5-F8 file management

" F5 save all
noremap <F5> <Esc>:call CheckAndSave()<CR>

" F6 closes current
inoremap <F6> <Esc>:q!<CR>
nnoremap <F6> :q!<CR>
tnoremap <F6> <C-\><C-n>:q!<CR>

" Toggle UndoTree
noremap <F7> :UndotreeToggle<CR>

"" F9-F12 text management

" F9 autoformat
noremap <F9> :Autoformat<CR>

" F10 wrap paragraph
noremap <F10> gqip<CR>

" anzu
" mapping
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)

" clear status
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)

" exit terminal mode with esc
tnoremap <Esc> <C-\><C-n>

nnoremap <M-<> :noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Plugins configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" You complete me
"let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:deoplete#enable_at_startup = 1

" CommandT ignored files
let g:CommandTWildIgnore=&wildignore . ",*/node_modules,*/_build,*/tmp"

let g:NERDTreeRespectWildIgnore = 1
let NERDTreeIgnore = ['node-modules$']

let g:formatdef_tsfmt = "'tsfmt --stdin '.bufname('%')"
let g:formatdef_nimpretty = "'nimpretty -'"
" let g:formatters_nim = ['nimpretty']


let g:formatdef_stylefmt = "'stylefmt --stdin-filename '.bufname('%')"
let g:formatters_css = ['stylefmt']

" let g:formatters_arduino = ['uncrustifyc']

let g:formatdef_elmfmt = "'elm-format --yes --stdin'"
let g:formatters_elm = ['elmfmt']
let g:formatdef_htmlbeautify = "'html-beautify --A force -editorconfig'"
let g:formatters_eelixir = ['htmlbeautify']

let g:formatdef_uncrustifycs = "'/usr/bin/uncrustify -q -c /home/kuon/.config/uncrustify/c.conf -l CS'"
let g:formatdef_uncrustifyc = "'/usr/bin/uncrustify -q -c /home/kuon/.config/uncrustify/c.conf -l C'"
" let g:formatters_hlsl = ['uncrustifyc']
" let g:formatters_c = ['uncrustifyc']
" let g:formatters_cs = ['uncrustifycs']
let g:autoformat_verbosemode = 0

" Indent guides
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

" Markdown
let g:vim_markdown_folding_disabled = 1

" Airline
let g:airline_powerline_fonts = 1

" Ctrl space
if executable("rg")
endif


let g:elm_format_autosave = 1
let g:vim_markdown_fenced_languages = ['makefile=make']
let g:polyglot_disabled = ['elm']
let g:OmniSharp_server_path = 'mono /opt/omnisharp/OmniSharp.exe'

let g:ale_linters = {
      \   'javascript': ['standard'],
      \}
let g:ale_fixers = {'javascript': ['standard']}

let g:neosnippet#snippets_directory='~/.config/nvim/snippets'

let g:ale_linters = {'javascript': ['eslint']}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key mapping for window navigation
"
" If you're in tmux it'll keep going to tmux splits if you hit the end of
" your vim splits.
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('$TMUX')
  function! TmuxMove(direction)
    let wnr = winnr()
    silent! execute 'wincmd ' . a:direction
    " If the winnr is still the same after we moved, it is the last pane
    if wnr == winnr()
      silent! wall
      call system('tmux select-pane -' . tr(a:direction, 'phjkl', 'lLDUR'))
    end
  endfunction

  nnoremap <silent> <M-h> :call TmuxMove('h')<cr>
  nnoremap <silent> <M-j> :call TmuxMove('j')<cr>
  nnoremap <silent> <M-k> :call TmuxMove('k')<cr>
  nnoremap <silent> <M-l> :call TmuxMove('l')<cr>
else
  " Use alt-[hjkl] to select the active split!
  nmap <M-h> :wincmd h<CR>
  nmap <M-j> :wincmd j<CR>
  nmap <M-k> :wincmd k<CR>
  nmap <M-l> :wincmd l<CR>
endif

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

au BufNewFile,BufRead secret setlocal noswapfile nobackup noundofile
au BufRead,BufNewFile *.eex,*.leex set filetype=eelixir

