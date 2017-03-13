let g:neomake_haskell_hlint_maker = {
	\ 'exe': 'stack',
	\ 'postprocess': function('neomake#makers#ft#haskell#HlintEntryProcess'),
	\ 'args': [
		\ '--verbosity', 'silent', 'exec', '--',
		\ 'hlint', '-XUnicodeSyntax', '-XPackageImports', '-XQuasiQuotes'
	\ ],
	\ 'errorformat':
		\ '%E%f:%l:%v: Error: %m,' .
		\ '%W%f:%l:%v: Warning: %m,' .
		\ '%I%f:%l:%v: Suggestion: %m,' .
		\ '%C%m'
\ }
