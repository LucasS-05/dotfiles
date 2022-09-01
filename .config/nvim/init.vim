"▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬
"
"▒█▄░▒█ ▒█░░▒█ ▀█▀ ▒█▀▄▀█ 　 ▒█▀▀█ ▒█▀▀▀█ ▒█▄░▒█ ▒█▀▀▀ ▀█▀ ▒█▀▀█ 　 ▒█▀▀▀ ▀█▀ ▒█░░░ ▒█▀▀▀ 
"▒█▒█▒█ ░▒█▒█░ ▒█░ ▒█▒█▒█ 　 ▒█░░░ ▒█░░▒█ ▒█▒█▒█ ▒█▀▀▀ ▒█░ ▒█░▄▄ 　 ▒█▀▀▀ ▒█░ ▒█░░░ ▒█▀▀▀ 
"▒█░░▀█ ░░▀▄▀░ ▄█▄ ▒█░░▒█ 　 ▒█▄▄█ ▒█▄▄▄█ ▒█░░▀█ ▒█░░░ ▄█▄ ▒█▄▄█ 　 ▒█░░░ ▄█▄ ▒█▄▄█ ▒█▄▄▄
"
"▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬ ▬


"█▀█ █░░ █░█ █▀▀ █ █▄░█ █▀
"█▀▀ █▄▄ █▄█ █▄█ █ █░▀█ ▄█

call plug#begin()
Plug 'numToStr/Comment.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Friendly Shougo
Plug 'rafamadriz/friendly-snippets'

"Plug nerdtree
Plug 'preservim/nerdtree'

"Plug nord theme
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }

"Plug start ify
Plug 'mhinz/vim-startify'

"Vim Polygot
Plug 'sheerun/vim-polyglot'

"Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

"tagbar
Plug 'majutsushi/tagbar'

"Denite
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Echodoc
Plug 'Shougo/echodoc.vim'

Plug 'jiangmiao/auto-pairs'

Plug 'alvan/vim-closetag'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'wellle/context.vim'

call plug#end()

lua require('Comment').setup()




"█▀▀ █▀▀ █▄░█ █▀▀ █▀█ ▄▀█ █░░
"█▄█ ██▄ █░▀█ ██▄ █▀▄ █▀█ █▄▄

"command line height
set cmdheight=1
" Don't dispay mode in command line (airilne already shows it)
set noshowmode
" Set floating window to be slightly transparent
set winbl=10
" Set preview window to appear at bottom
set splitbelow

"Colorscheme
set termguicolors
colorscheme nord

set tabstop=4
set shiftwidth=4
set expandtab " <-- (optional) 4-spaces instead of Tab indentation

" Change vertical split character to be a space (essentially hide it)
set fillchars+=vert:.

let mapleader = ","

set ignorecase


"BRACKET AUTO
inoremap {<CR> {<CR>}<Esc>ko
inoremap {;<CR> {<CR>};<ESC>O

" Console log from insert mode; Puts focus inside parentheses
imap cll console.log(<Right>;<Left><Left>

" Allows you to save files you opened without write permissions via sudo
cmap w!! w !sudo tee %

set modifiable

" Go to tab by number
noremap <A-1> 1gt
noremap <A-2> 2gt
noremap <A-3> 3gt
noremap <A-4> 4gt
noremap <A-5> 5gt
noremap <A-6> 6gt
noremap <A-7> 7gt
noremap <A-8> 8gt
noremap <A-9> 9gt
noremap <A-0> 0gt

"Prettier 

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

map <C-o> <Nop>
map <C-i> <Nop>


" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact


let g:closetag_filetypes = 'html,xhtml,jsx,javascript'
let g:closetag_xhtml_filetypes = 'xhtml,javascript'

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
nmap <leader>f  <Plug>(coc-format-selected)


nnoremap ; <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>t <cmd>Telescope buffers<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>



"   ▀▄ █▀▀ █▄░█ █ ▀█▀ █▀▀   █▀ █▀▀ ▀█▀ ▀█▀ █ █▄░█ █▀▀ █▀
" "█▄▀ ██▄ █░▀█ █ ░█░ ██▄   ▄█ ██▄ ░█░ ░█░ █ █░▀█ █▄█ ▄█
"
" try
" " === Denite setup ==="
" " Use ripgrep for searching current directory for files
" " By default, ripgrep will respect rules in .gitignore
" "   --files: Print each file that would be searched (but don't search)
" "   --glob:  Include or exclues files for searching that match the given glob
" "            (aka ignore .git files)
" "
" call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])
"
" " Use ripgrep in place of "grep"
" call denite#custom#var('grep', 'command', ['rg'])
"
" " Custom options for ripgrep
" "   --vimgrep:  Show results with every match on it's own line
" "   --hidden:   Search hidden directories and files
" "   --heading:  Show the file name above clusters of matches from each file
" "   --S:        Search case insensitively if the pattern is all lowercase
" call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])
"
" " Recommended defaults for ripgrep via Denite docs
" call denite#custom#var('grep', 'recursive_opts', [])
" call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
" call denite#custom#var('grep', 'separator', ['--'])
" call denite#custom#var('grep', 'final_opts', [])
"
" " Remove date from buffer list
" call denite#custom#var('buffer', 'date_format', '')
"
" " Custom options for Denite
" "   split                       - Use floating window for Denite
" "   start_filter                - Start filtering on default
" "   auto_resize                 - Auto resize the Denite window height automatically.
" "   source_names                - Use short long names if multiple sources
" "   prompt                      - Customize denite prompt
" "   highlight_matched_char      - Matched characters highlight
" "   highlight_matched_range     - matched range highlight
" "   highlight_window_background - Change background group in floating window
" "   highlight_filter_background - Change background group in floating filter window
" "   winrow                      - Set Denite filter window to top
" "   vertical_preview            - Open the preview window vertically
"
" let s:denite_options = {'default' : {
" \ 'split': 'floating',
" \ 'start_filter': 1,
" \ 'auto_resize': 1,
" \ 'source_names': 'short',
" \ 'prompt': 'λ ',
" \ 'highlight_matched_char': 'QuickFixLine',
" \ 'highlight_matched_range': 'Visual',
" \ 'highlight_window_background': 'Visual',
" \ 'highlight_filter_background': 'DiffAdd',
" \ 'winrow': 1,
" \ 'vertical_preview': 1
" \ }}
"
" " Loop through denite options and enable them
" function! s:profile(opts) abort
"   for l:fname in keys(a:opts)
"     for l:dopt in keys(a:opts[l:fname])
"       call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
"     endfor
"   endfor
" endfunction
"
" call s:profile(s:denite_options)
" catch
"   echo 'Denite not installed. It should work after running :PlugInstall'
" endtry
"
"
" " === Denite shorcuts === "
" "   ;         - Browser currently open buffers
" "   <leader>t - Browse list of files in current directory
" "   <leader>g - Search current directory for occurences of given term and close window if no results
" "   <leader>j - Search current directory for occurences of word under cursor
" nmap ; :Denite buffer<CR>
" nmap <leader>t :DeniteProjectDir file/rec<CR>
" nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR>
" nnoremap <leader>j :<C-u>DeniteCursorWord grep:.<CR>
"
" " Define mappings while in 'filter' mode
" "   <C-o>         - Switch to normal mode inside of search results
" "   <Esc>         - Exit denite window in any mode
" "   <CR>          - Open currently selected file in any mode
" "   <C-t>         - Open currently selected file in a new tab
" "   <C-v>         - Open currently selected file a vertical split
" "   <C-h>         - Open currently selected file in a horizontal split
" autocmd FileType denite-filter call s:denite_filter_my_settings()
"
" function! s:denite_filter_my_settings() abort
"   imap <silent><buffer> <C-o>
"   \ <Plug>(denite_filter_update)
"   inoremap <silent><buffer><expr> <Esc>
"   \ denite#do_map('quit')
"   nnoremap <silent><buffer><expr> <Esc>
"   \ denite#do_map('quit')
"   inoremap <silent><buffer><expr> <CR>
"   \ denite#do_map('do_action') 
"   inoremap <silent><buffer><expr> <C-t>
"   \ denite#do_map('do_action','tabopen'))
"   inoremap <silent><buffer><expr> <C-v>
"   \ denite#do_map('do_action', 'vsplit')
"   inoremap <silent><buffer><expr> <C-h>
"   \ denite#do_map('do_action', 'split')
" endfunction
"
" " Define mappings while in denite window
" "   <CR>        - Opens currently selected file
" "   q or <Esc>  - Quit Denite window
" "   d           - Delete currenly selected file
" "   p           - Preview currently selected file
" "   <C-o> or i  - Switch to insert mode inside of filter prompt
" "   <C-t>       - Open currently selected file in a new tab
" "   <C-v>       - Open currently selected file a vertical split
" "   <C-h>       - Open currently selected file in a horizontal split
" autocmd FileType denite call s:denite_my_settings()
" function! s:denite_my_settings() abort
"   nnoremap <silent><buffer><expr> <CR>
"   \ denite#do_map('do_action', 'tabopen')
"   nnoremap <silent><buffer><expr> q
"   \ denite#do_map('quit')
"   nnoremap <silent><buffer><expr> <Esc>
"   \ denite#do_map('quit')
"   nnoremap <silent><buffer><expr> d
"   \ denite#do_map('do_action', 'delete')
"   nnoremap <silent><buffer><expr> p
"   \ denite#do_map('do_action', 'preview')
"   nnoremap <silent><buffer><expr> i
"   \ denite#do_map('open_filter_buffer')
"   nnoremap <silent><buffer><expr> <C-o>
"   \ denite#do_map('open_filter_buffer')
"   nnoremap <silent><buffer><expr> <C-t>
"   \ denite#do_map('do_action')
"   nnoremap <silent><buffer><expr> <C-v>
"   \ denite#do_map('do_action', 'vsplit')
"   nnoremap <silent><buffer><expr> <C-h>
"   \ denite#do_map('do_action', 'split')
" endfunction


"
""█░█ █ █▀▄▀█   ▄▀█ █ █▀█ █░░ █ █▄░█ █▀▀
""▀▄▀ █ █░▀░█   █▀█ █ █▀▄ █▄▄ █ █░▀█ ██▄
"
" Enable extensions
let g:airline_extensions = ['branch', 'hunks', 'coc']

" Update section z to just have line number
let g:airline_section_z = airline#section#create(['linenr'])

" Do not draw separators for empty sections (only for the active window) >
let g:airline_skip_empty_sections = 1

" Smartly uniquify buffers names with similar filename, suppressing common parts of paths.
let g:airline#extensions#tabline#formatter = 'unique_tail'



"█▀▀ █▀█ █▀▀ ░ █▄░█ █░█ █ █▀▄▀█
"█▄▄ █▄█ █▄▄ ▄ █░▀█ ▀▄▀ █ █░▀░█

" === Coc.nvim === "
" use <tab> for trigger completion and navigate to next complete item

" Use tab to trigger completion and navigate.

" Use <cr> to comfirm completion.

 "inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"let g:coc_snippet_next = '<tab>'

"inoremap <silent><expr> <TAB>
" \ pumvisible() ? "\<C-n>" :
 " \ <SID>check_back_space() ? "\<TAB>" :
 " \ coc#refresh()

 function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
    inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
    " remap for complete to use tab and <cr>
 
    inoremap <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#pum#next(1):
        \ <SID>check_back_space() ? "\<Tab>" :
        \ coc#refresh()
    inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
    inoremap <silent><expr> <c-space> coc#refresh()
 "Coc-snippets cu coc-Friendly Snippets pt html autocompletion

" === coc.nvim === "
"   <leader>dd    - Jump to definition of current symbol
"   <leader>dr    - Jump to references of current symbol
"   <leader>dj    - Jump to implementation of current symbol
"   <leader>ds    - Fuzzy search current project symbols
nmap <silent> <leader>dd <Plug>(coc-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)
nnoremap <silent> <leader>ds :<C-u>CocList -I -N --top symbols<CR>


"Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif



"█▄░█ █▀▀ █▀█ █▀▄ ▀█▀ █▀█ █▀▀ █▀▀
"█░▀█ ██▄ █▀▄ █▄▀ ░█░ █▀▄ ██▄ ██▄
"
"autocmd VimEnter * NERDTree | wincmd p
"
"" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"
nnoremap <F2> :NERDTreeToggle % <CR>
nnoremap <F3> :TagbarToggle<CR>
"


" Remap <C-f> and <C-b> for scroll float windows/popups.



"█▀▀ ▄█▄ ▄█▄
"█▄▄ ░▀░ ░▀░

"nnoremap <F9> :!g++ -o  %:r.out % -std=c++11<Enter>
augroup cpp_settings " {
    autocmd!
    autocmd BufNewFile,BufRead *.cpp nnoremap <F9> :!g++ -o  %:r.out % -std=c++11<Enter>
augroup END " }

"nnoremap <C-x> :!./%:r.out



"█▄░█ █░█ █▀▄▀█ █▄▄ █▀▀ █▀█   █▀▀ █▀█ █░░ █░█ █▀▄▀█ █▄░█
"█░▀█ █▄█ █░▀░█ █▄█ ██▄ █▀▄   █▄▄ █▄█ █▄▄ █▄█ █░▀░█ █░▀█

set number

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

