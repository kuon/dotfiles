""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin(stdpath('data') . '/plugged')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Defaults
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sensible defaults
Plug 'tpope/vim-sensible'

" Standard terminal integration improvements
"Plug 'wincent/terminus'

" NERDTree
Plug 'preservim/nerdtree'

" Local configuration files
Plug 'embear/vim-localvimrc'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Visual style
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Status line
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

" Startup screen
" Plug 'mhinz/vim-startify'

" Makes tmux use airline colros
Plug 'edkolev/tmuxline.vim'

" Show git info in sidebar
Plug 'mhinz/vim-signify'

" Distraction free writing
Plug 'junegunn/goyo.vim'

" Dev icons
Plug 'ryanoasis/vim-devicons'

" Nicer scrolling
Plug 'psliwka/vim-smoothie'

" Show indentation
Plug 'Yggdroot/indentLine'


" Toggle relative line numbering <Leader>r
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Color theme
Plug 'chriskempson/base16-vim'
"Plug 'jacoborus/tender.vim'
"Plug 'dracula/vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Navigation and search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug '/usr/share/vim/vimfiles/plugin/fzf'
Plug 'junegunn/fzf.vim'

" Auto root switching
Plug 'airblade/vim-rooter'

" File picker using ranger
"Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" Allows Rg to populate the quickfix list
"Plug 'jremmen/vim-ripgrep'

" Jump to interesting places with a Git or Mercurial repo
Plug 'wincent/vcs-jump'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Motions and editor
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Undo tree
Plug 'mbbill/undotree'

" Better commenting
Plug 'tomtom/tcomment_vim'

" Surround motions
Plug 'tpope/vim-surround'

" Adds ability to adjust alignment in visual mode
Plug 'godlygeek/tabular'

" Allows repeating of various custom commands
Plug 'tpope/vim-repeat'

" Allows for easy repeat of last used macro
Plug 'wincent/replay'

" Split and join programming lines
Plug 'AndrewRadev/splitjoin.vim'

" Nice docblock generator
Plug 'kkoomen/vim-doge'

" Better search replace
Plug 'tpope/vim-abolish'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Code formatting and linter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Import tabs etc from editorconfig
Plug 'editorconfig/editorconfig-vim'

" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Formatting
Plug 'Chiel92/vim-autoformat'

" Linter
Plug 'w0rp/ale'

" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Language support
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Other languages support
Plug 'sheerun/vim-polyglot'

" OpenSCAD
Plug 'sirtaj/vim-openscad'

" Ruby
Plug 'vim-ruby/vim-ruby'

" Slim templates
Plug 'slim-template/vim-slim'

" Ansible
Plug 'pearofducks/ansible-vim'

" Swift
Plug 'keith/swift.vim'

" Typescript
Plug 'leafgarland/typescript-vim'

" Elixir
Plug 'elixir-editors/vim-elixir'

" Markdown
Plug 'plasticboy/vim-markdown'

" Elm support
Plug 'elmcast/elm-vim'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" Kotlin
Plug 'udalov/kotlin-vim'

call plug#end()

  " NERDtree
  "call dein#add('scrooloose/nerdtree')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Be improved
set nocompatible


" Default file encoding
set encoding=UTF-8

" Force sh based shell
set shell=/bin/bash

" Show line numbers
set number

" Break lines at word (requires Wrap lines)
set linebreak

set nowrap
set sidescroll=5

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
"set noautochdir

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

" Set conceal level
set conceallevel=2

" Draw everything (slower)
set nolazyredraw
"
" Lazy redraw (faster)
" set lazyredraw
"
"syntax sync minlines=256
set synmaxcol=200

" Dark background
set background=dark

" Scroll more when outside of visible area
set scrolljump=10
set scrolloff=3

" Use base16 color scheme
"let g:solarized_termcolors=256
"colorscheme solarized
set termguicolors
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
"if (has("termguicolors"))
" set termguicolors
"endif
"colorscheme dracula

" Nice font, only for gvim and thelike
set guifont=Mononoki:h15

" Use general clipboard
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
set listchars=nbsp:⇒,trail:¶,tab:-->
set listchars+=precedes:<,extends:>

" Set status line
"set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*
"set statusline+=%#warningmsg#
"set statusline+=%*
"set statusline+=\ \ %{anzu#search_status()}

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
"" Plugins configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" You complete me
"let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:deoplete#enable_at_startup = 1

" CommandT ignored files
let g:CommandTWildIgnore=&wildignore . ",*/node_modules,*/_build,*/tmp"

let g:NERDTreeDirArrowExpandable = '⏵'
let g:NERDTreeDirArrowCollapsible = '⏷'
"let g:NERDTreeNodeDelimiter="\u00b7"
let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeIgnore = ['node-modules$']

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


let g:formatdef_prettydiff = "'prettydiff beautify readmethod:filescreen endquietly:quiet wrap:80 source:\"'.bufname('%').'\"  indent_size:'.shiftwidth()"
let g:formatdef_tidy_xml2 = '"tidy -q -xml --show-errors 0 --show-warnings 0 --force-output --indent-attributes yes --wrap-attributes yes --indent auto --indent-spaces ".shiftwidth()." --vertical-space yes --tidy-mark no -wrap ".&textwidth'
let g:formatters_xml = ['tidy_xml2']

let g:formatdef_ktlint = "'ktlint -F --stdin'"
let g:formatters_kotlin = ['ktlint']

let g:formatdef_standard2_javascript = '"/home/kuon/.npm-global/bin/standard --fix --stdin 2>/dev/null ; echo "'
let g:formatters_javascript = [ 'standard2_javascript' ]

" let g:formatters_hlsl = ['uncrustifyc']
" let g:formatters_c = ['uncrustifyc']
" let g:formatters_cs = ['uncrustifycs']
let g:autoformat_verbosemode = 0


" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

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

" colors
highlight ALEWarning guibg=#351300
highlight ALEError guibg=#35001a
highlight NonText guifg=#954EBC
highlight Title guifg=#954EBC

"let g:startify_lists = [ { 'type': 'dir', 'header': ['   Recent Files'] } ]

" Configure FZF to use a floating window configuration
let $FZF_DEFAULT_OPTS = '--layout=reverse'
let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }

" Indent guides
let g:indentLine_char_list = ['']
let g:indentLine_bufNameExclude = ["term:.*"]
"let g:indentLine_bufTypeExclude = ["startify"]
let g:indentLine_fileTypeExclude = ["markdown"]


" Wayland clipboard provider that strips carriage returns (GTK3 issue).
" This is needed because currently there's an issue where GTK3 applications on
" Wayland contain carriage returns at the end of the lines (this is a root
" issue that needs to be fixed).
let g:clipboard = {
      \   'name': 'wayland-strip-carriage',
      \   'copy': {
      \      '+': 'wl-copy --foreground --type text/plain',
      \      '*': 'wl-copy --foreground --type text/plain --primary',
      \    },
      \   'paste': {
      \      '+': {-> systemlist('wl-paste  | tr -d "\r"')},
      \      '*': {-> systemlist('wl-paste  --primary | tr -d "\r"')},
      \   },
      \   'cache_enabled': 1,
      \ }

let g:localvimrc_persistent = 1

let g:localvimrc_persistence_file = expand('$HOME') . "/.local/localvimrc_persistent"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key mapping for window navigation
"
" If you're in tmux it'll keep going to tmux splits if you hit the end of
" your vim splits.
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('$TMUX')
  fun! TmuxMove(direction)
    let wnr = winnr()
    silent! execute 'wincmd ' . a:direction
    " If the winnr is still the same after we moved, it is the last pane
    if wnr == winnr()
      silent! wall
      call system('tmux select-pane -' . tr(a:direction, 'phjkl', 'lLDUR'))
    end
  endfun

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


" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


" Change the leader key to something handy on the swiss keyboard
if exists('$TMUX')
let mapleader = "\<S-F1>"
else
let mapleader = "\<F13>"
endif

" alt enter is newline
noremap <M-Enter> i<Enter><Esc>


" save all
noremap <Leader>s <Esc>:call CheckAndSave()<CR>

" show undo
noremap <Leader>u :UndotreeToggle<CR>

" close window/buffer
inoremap <Leader>w <Esc>:Bclose<CR>
nnoremap <Leader>w :Bclose<CR>
tnoremap <Leader>w <C-\><C-n>:Bclose<CR>

" quit
inoremap <Leader>q <Esc>:qa!<CR>
nnoremap <Leader>q :qa!<CR>
tnoremap <Leader>q <C-\><C-n>:qa!<CR>

" format
noremap <Leader>a :Autoformat<CR>

" git
noremap <Leader>g :call ToggleLazyGit()<CR>

" Term shortcut
noremap <Leader>ot :call ToggleScratchTerm()<CR>

" Find files
noremap <Leader>f :Files<CR>
noremap <Leader>ff :Files<CR>
" Find buffers
noremap <Leader>fb :Buffers<CR>
" Grep in files
noremap <Leader>fg :Rg<CR>
" Find in NERDTree
noremap <Leader>fn :NERDTreeFind<CR>


" paragraph shortcut
noremap <Leader>pw gqip<CR>

" full screen
noremap <Leader>m :Goyo<CR>

" Build
noremap <Leader>b :silent make<CR>

" anzu
" mapping
"nmap n <Plug>(anzu-n-with-echo)
"nmap N <Plug>(anzu-N-with-echo)
"nmap * <Plug>(anzu-star-with-echo)
"nmap # <Plug>(anzu-sharp-with-echo)

" clear status
"nmap <Esc><Esc> <Plug>(anzu-clear-search-status)

" exit terminal mode with esc
"tnoremap <Esc> <C-\><C-n>

nnoremap <M-<> :noh<CR>

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

nnoremap <Leader>t :%Tabularize <CR>


" Next buffer
nnoremap <silent>   <tab> :bnext<CR>
" Previous buffer
nnoremap <silent> <s-tab> :bprevious<CR>
" Create vsplit
nnoremap <silent> <Leader>. :vsp<CR>
" Creat hsplit
nnoremap <silent> <Leader>- :sp<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Autocommands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ensure cursor moves quickly
" This clears all autocommand when the cursor is moved
au! CursorMoved

" Quit vim if NERDTree is last buffer
au BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Autowrite when buffer changes and when focus is lost
"au InsertLeave,BufLeave,FocusLost,CursorHold,CursorHoldI * :call CheckAndSave()
au VimLeave,BufLeave,FocusLost * :call CheckAndSave()

" " Start NERDTree automatically
" augroup ProjectDrawer
"   " Clear group
"   au!
"   " Start NERDTree
"   au VimEnter * NERDTree
"   " Go to previous (last accessed) window.
"   au VimEnter * wincmd p
" augroup END

au BufEnter term://* startinsert
au BufEnter * :syn sync maxlines=500


au FileWritePre * :call StripTrailingWhitespaces()
au FileAppendPre * :call StripTrailingWhitespaces()
au FilterWritePre * :call StripTrailingWhitespaces()
au BufWritePre * :call StripTrailingWhitespaces()

au BufLeave,FocusLost * :call StripTrailingWhitespaces()

"au CursorMoved * :call StripTrailingWhitespaces()


au BufNewFile,BufRead *.cginc set ft=hlsl
au BufNewFile,BufRead *.cg set ft=hlsl

au BufNewFile,BufRead secret setlocal noswapfile nobackup noundofile
au BufRead,BufNewFile *.eex,*.leex set filetype=eelixir

au User StartifyBufferOpened :Rooter

"" Terminal Handling

" When term starts, auto go into insert mode
au TermOpen * startinsert

" Turn off line numbers etc
au TermOpen * setlocal listchars= nonumber norelativenumber

"" File Type AU
augroup FileTypes
  au!
  au FileType make setlocal noexpandtab sw=4 ts=4

augroup end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! CheckAndSave()
  " checktime
  silent! w
  checktime
  silent! up!
endfun

fun! StripTrailingWhitespaces()
  if &modifiable && &binary == 0
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
  endif
endfun

" Creates a floating window with a most recent buffer to be used
fun! CreateCenteredFloatingWindow()
    let width = float2nr(&columns * 0.6)
    let height = float2nr(&lines * 0.6)
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    autocmd BufWipeout <buffer> call CleanupBuffer(s:buf)
    "tnoremap <buffer> <silent> <Esc> <C-\><C-n><CR>:call DeleteUnlistedBuffers()<CR>
endfun

fun! ToggleTerm(cmd)
    if empty(bufname(a:cmd))
        call CreateCenteredFloatingWindow()
        call termopen(a:cmd, { 'on_exit': function('OnTermExit') })
    else
        call DeleteUnlistedBuffers()
    endif
endfun

" Opens a throwaway/scratch terminal
fun! ToggleScratchTerm()
    call ToggleTerm('fish')
endfun

" Opens lazygit
fun! ToggleLazyGit()
    call ToggleTerm('lazygit')
endfun


fun! OnTermExit(job_id, code, event) dict
    if a:code == 0
        call DeleteUnlistedBuffers()
    endif
endfun

fun! DeleteUnlistedBuffers()
    for n in nvim_list_bufs()
        if ! buflisted(n)
            let name = bufname(n)
            if name == '[Scratch]' ||
              \ matchend(name, "'fzf'") != -1 ||
              \ matchend(name, ":fish") != -1 ||
              \ matchend(name, ":lazygit") != -1
                call CleanupBuffer(n)
            endif
        endif
    endfor
endfun

fun! CleanupBuffer(buf)
    if bufexists(a:buf)
        silent execute 'bwipeout! '.a:buf
    endif
endfun



fun! PBin() range
  echo system('echo '.shellescape(join(getline(a:firstline, a:lastline), "\n")).'| wgetpaste -s dpaste 2>/dev/null | wl-copy -n ')
endfunction

com -range=% -nargs=0 PBin :<line1>,<line2>call PBin()

