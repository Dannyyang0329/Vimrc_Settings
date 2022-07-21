" Vim
set nocompatible                " No compatible to Vi editor. Vim is useful.

" Appearance
set ruler                       " Show the line and column number of the cursor position, separated by a comma.
set number                      " Print the line number in front of each line.
set showcmd                     " Show (partial) command in the last line of the screen.
set hlsearch                    " When there is a previous search pattern, highlight all its matches.
set incsearch                   " While typing a search command, show where the pattern matches.
set laststatus=2                " Always show the status line.
set t_Co=256                    " Support 256 colors
" For windows gvim
set guifont=Source\ Code\ Pro\ for\ Powerline:h16


" Tab & Indentation
set smarttab                    " A tab in front of a line inserts blanks according to 'shiftwidth'.
set expandtab                   " In insert mode, use the appropriate number of spaces to insert a tab .
set tabstop=4                   " Number of spaces that a tab in the file counts for.
set shiftwidth=4                " Number of spaces to use for (auto) indentation.
set smartindent                 " Do an auto indentation when starting a new line.

" Useful Setting
syntax on
set nowrap                      " Lines will not wrap and only part of long lines will be displayed.
set mouse=a                     " Enable the use of mouse in all modes.
set history=100                 " A history of ':' commands, and a history of previous search patterns are remembered.
set scrolloff=5                 " Minimal number of screen lines to keep above and below the cursor.
set encoding=utf8               " Sets the character encoding used inside Vim.
set backspace=indent,eol,start  " Allow backspacing over indentation, line breaks(join lines) and starting of insert
set timeoutlen=1000 ttimeoutlen=0


" Key Mapping
"map <Caps> <Esc>
" nnoremap <Caps> <Esc>
" inoremap <Caps> <Esc>
" vnoremap <Caps> <Esc>

nnoremap <S-j> :bp<CR>
nnoremap <S-k> :bn<CR>
        

" Plugins
" Detail of information can be founded in https://vimawesome.com/
call plug#begin('~/.vim/plugged')

" ===================================================================================================
" The NERDTree is a file system explorer for the Vim editor.
" Using this plugin, users can visually browse complex directory hierarchies,
" quickly open files for reading or editing, and perform basic file system operations.
" ===================================================================================================
Plug 'scrooloose/nerdtree'

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


" ===================================================================================================
" Syntastic is a syntax checking plugin for Vim created by Martin Grenfell.
" It runs files through external syntax checkers and displays any resulting errors to the user.
" This can be done on deman, or automatically as files are saved. If syntax errors are detected,
" the user is notified and is happy because they didn't have to compile their code or execute their
" script to find them.
" p.s. :help syntastic-checkers -> check all supported programming language
" ===================================================================================================
Plug 'scrooloose/syntastic'

" Some recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" ===================================================================================================
" ALE (Asynchronous Lint Engine) is a plugin providing linting
" (syntax checking and semantic errors) in NeoVim 0.2.0+ and Vim 8
" while you edit your text files, and acts as a Vim Language Server Protocol client.
" ===================================================================================================
Plug 'dense-analysis/ale'

" Always turn on sign gutter
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0

" Show information of error or warning
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'


" ===================================================================================================
" Completor is an asynchronous code completion framework for vim8.
" New features of vim8 are used to implement the fast completion engine with low overhead.
" For using semantic completion, external completion tools should be installed.
" ===================================================================================================
Plug 'maralla/completor.vim'
let g:completor_clang_binary = '/usr/bin/clang'


" ===================================================================================================
" Lean & mean status/tabline for vim that's light as air.
" When the plugin is correctly loaded, there will be a nice statusline at the bottom of each vim window.
" ===================================================================================================
Plug 'vim-airline/vim-airline'


" ===================================================================================================
" This is the official theme repository for vim-airline
" ===================================================================================================
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme = 'bubblegum'
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{strftime("%c")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" ===================================================================================================
" This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.
" ===================================================================================================
Plug 'raimondi/delimitmate'


" ===================================================================================================
" A dark Vim/Neovim color scheme for the GUI and 16/256/true-color terminals, based on FlatColor, 
" with colors inspired by the excellent One Dark syntax theme for the Atom text editor.
" ===================================================================================================
Plug 'joshdick/onedark.vim'
let g:onedark_termcolors=256
colorscheme onedark


call plug#end()
