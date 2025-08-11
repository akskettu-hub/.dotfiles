" Yank to system clipboard
set clipboard=unnamed

" Set j and k to move visually, not logically.
nmap j gj
nmap k gk
vmap j gj
vmap k gk

"exit insert move
imap jj <Esc>

" Go to next and previous tabs, something here.
exmap tabnext obcommand workspace:next-tab
nmap gt :tabnext<CR>
exmap tabprev obcommand workspace:previous-tab
nmap gT :tabprev<CR>

" integrating gx,gf,gd for vim {my way.. ok}
exmap followBothLinksAndNotes obcommand editor:follow-link
exmap openDefinitionSplit obcommand editor:open-link-in-new-split
exmap openNoteInNewTab obcommand editor:open-link-in-new-leaf
nmap gx :followBothLinksAndNotes
nmap gf :followBothLinksAndNotes
nmap gd :openDefinitionSplit
nmap gn :openNoteInNewTab

" pasteinto as space p {good with hyperlinks}.. i guess the function is implemented inside main.js of vimrc support plugin .. no? 
" remember this >> never forget to unbind space
unmap <Space>
map <Space>p :pasteinto

" we all know that the built-in vim in obsidian is limited
" so some features would not exist
" but we can still map/link to some corresponding obsidian ones.. as follows
	" like folds

exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold
nmap zc :togglefold
nmap za :togglefold

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall

exmap foldall obcommand editor:fold-all
nmap zM :foldall

" make splits {both n&v modes}
exmap vertsplit obcommand workspace:split-vertical
exmap horisplit obcommand workspace:split-horizontal
nmap <Space>v :vertsplit
nmap <Space>V :horisplit
vmap <Space>v :vertsplit
vmap <Space>V :horisplit

" Rename title
exmap rename obcommand workspace:edit-file-title
nmap <Space>r :rename

" command palette
exmap cmd obcommand command-palette:open
nmap <Space>cp :cmd

" Open today's note
exmap daily obcommand daily-notes
nmap <Space>d :daily

" Toggle file explorer
exmap tleftbar obcommand app:toggle-left-sidebar
nmap <Space>e :tleftbar

" Insert templates
exmap ins_temp obcommand templater-obsidian:insert-templater
nmap <Space>t :ins_temp

" filesearch
exmap fuzzyfind obcommand switcher:open
nmap <Space>ff :fuzzyfind

" Focus on global search input
exmap globalsearch obcommand global-search:open
nmap <Space>gs :globalsearch

" Close/restore current tab
exmap closetab obcommand workspace:close
exmap undoClosetab obcommand workspace:undo-close-pane
nmap <Space>x :closetab
nmap <Space>X :undoClosetab

" close obsidian itself {the whole window}
exmap obclose obcommand workspace:close-window
nmap <Space>qq :obclose
