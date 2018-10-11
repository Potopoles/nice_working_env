" ~/.vimrc (configuration file for vim only)
" skeletons
function! SKEL_spec()
	0r /usr/share/vim/current/skeletons/skeleton.spec
	language time en_US
	let login = system('whoami')
	if v:shell_error
	   let login = 'unknown'
	else
	   let newline = stridx(login, "\n")
	   if newline != -1
		let login = strpart(login, 0, newline)
	   endif
	endif
	let hostname = system('hostname -f')
	if v:shell_error
	    let hostname = 'localhost'
	else
	    let newline = stridx(hostname, "\n")
	    if newline != -1
		let hostname = strpart(hostname, 0, newline)
	    endif
	endif
	exe "%s/specRPM_CREATION_DATE/" . strftime("%a\ %b\ %d\ %Y") . "/ge"
	exe "%s/specRPM_CREATION_AUTHOR_MAIL/" . login . "@" . hostname . "/ge"
	exe "%s/specRPM_CREATION_NAME/" . expand("%:t:r") . "/ge"
endfunction
autocmd BufNewFile	*.spec	call SKEL_spec()

" MY STUFF
:imap jk <Esc>

" MY STUFF
set number
imap jk <Esc>
set clipboard=unnamed
map <F9> gT
map <F10> gt
vnoremap <C-n> :norm
"set listchars=tab:>--,
"set listchars=tab:»\ ,trail:·
"set list
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
%retab
set autoindent

syntax enable
set t_Co=256
set background=dark
colorscheme PaperColor
set t_ut=
" Always show file name at bottom
set ls=2
" pasting should not copy at the same time
xnoremap p "_dP
" ~/.vimrc ends here
" Use r in visual mode to replace current selection
vmap r "_dP

:set ignorecase
:set smartcase
