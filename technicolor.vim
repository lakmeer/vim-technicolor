" ------------------
" Reset that shit yo
" ------------------

set	background=dark
hi clear



" -----------------------------
" Define s:master colour palletes
" -----------------------------

" Master dictionary
let s:master = {}


" TODO: Turn every colour reference into a length 2 array to provide terminal
" colour fallbacks


" Neutral default colors					default: All
let s:master['neutral'] 			= {}

let s:master['neutral']['bright']	= '#fff'
let s:master['neutral']['light']	= '#eee'
let s:master['neutral']['medium']	= '#bbb'
let s:master['neutral']['dark']		= '#666'
let s:master['neutral']['invert']	= '#212121'


" Red 										default: Ruby
let s:master['red'] 				= {}

let s:master['red']['bright'] 		= '#F44'
let s:master['red']['light']  		= '#F66'
let s:master['red']['dark']   		= '#B33'
let s:master['red']['invert'] 		= '#511'


" Orange									default: HTML5
let s:master['orange'] 				= {}

let s:master['orange']['bright']	= '#FB3'
let s:master['orange']['light']		= '#FC8'
let s:master['orange']['dark']		= '#C80'
let s:master['orange']['invert']	= '#530'


" Green										default: JavaScript
let s:master['green']				= {}

let s:master['green']['bright']		= '#6f8'
let s:master['green']['light']		= '#3f4'
let s:master['green']['dark']		= '#2b3'
let s:master['green']['invert']		= '#151'


" Magenta									default: CSS3

let s:master['magenta']				= {}

let s:master['magenta']['bright']	= '#f3f'
let s:master['magenta']['light']	= '#faf'
let s:master['magenta']['dark']		= '#b2b'
let s:master['magenta']['invert']	= '#515'


" Blue										default: PHP

let s:master['blue']				= {}

let s:master['blue']['bright']		= '#4bf'
let s:master['blue']['light']		= '#9ef'
let s:master['blue']['dark']		= '#07c'
let s:master['blue']['invert']		= '#115'







" ----------------------------------
" Define functions to apply palettes
" ----------------------------------


" Assign colors in a way that accepts variables for dryness
function! DryColor (name, color, ...)
	if a:0 > 0
		execute "hi " . a:name . " guifg=" . a:color . s:assignDetail(a:1)
	else
		execute "hi " . a:name . " guifg=" . a:color
	endif
endfunction


" Process any extra hilight parameters we want to include
function! s:assignDetail(map)

	let result = ''

	for this in keys(a:map)
		let result .= " " . this . "=" . a:map[this]
	endfor

	return result

endfunction


" Do multiple similar assignments taking an array of strings
function! DryMany (color, list)

	for i in range(0, len(a:list) - 1)

		call DryColor(a:list[i], a:color)

	endfor

endfunction

" -------------------------------
" Actual colour assignment begins
" -------------------------------

" b:f, l:d, m:b, d:6, i:3

" Normal
hi Normal			ctermbg=black	guibg=#1a1a1a   ctermfg=grey		guifg=#bbb

" Cursor
hi Cursor			guibg=#fff   	guifg=#000		ctermfg=white		ctermbg=black
hi CursorLine						guibg=#222
hi CursorColumn						guibg=#222
hi Visual							guibg=#333		ctermfg=white		ctermbg=darkgrey
hi VisualNOS                                        ctermfg=grey		

" Folding
hi Folded			guifg=#fff		guibg=#1a1a1a	ctermfg=white		ctermbg=black 
hi FoldColumn       guifg=yellow					ctermfg=yellow

" Window Elements
hi StatusLine		guifg=#666		guibg=#fff		ctermfg=grey		ctermbg=red		cterm=bold
hi StatusLineNC     guifg=#666		guibg=#000		ctermfg=white		ctermbg=black
hi VertSplit        guifg=#666		guibg=#666   	ctermfg=grey		
hi LineNr           guifg=#666		guibg=#1a1a1a   ctermfg=darkgrey	ctermbg=black

" Popups
hi Pmenu			guifg=#666		guibg=black		ctermfg=black		ctermbg=grey
hi PmenuSel			guifg=#fff		guibg=black		ctermfg=red			ctermbg=grey
hi IncSearch		guifg=#bbb		guibg=black		ctermfg=grey		ctermbg=black

" call DryMany([], 'grey')

hi Boolean 			guifg=#fff
hi Character 		guifg=#fff
hi Comment 			guifg=#666
hi Condtional		guifg=#fff
hi Constant			guifg=#fff
hi Debug			guifg=#bbb
hi Define			guifg=#fff
hi Delimiter		guifg=#bbb

hi DiffAdd			guifg=NONE 		guibg=NONE	 	gui=NONE
hi DiffChange		guifg=#666		guibg=#fff 
hi DiffDelete		guifg=#666 
hi DiffText			guifg=#fff		guibg=#1a1a1a 

hi Directory		guifg=#fff
hi Error			guifg=#fff		guibg=red 
hi ErrorMsg 		guifg=#fff
hi Exception		guifg=#fff
hi Float			guifg=#fff						gui=NONE
hi Function			guifg=#fff
hi Identifier		guifg=#fff
hi Include			guifg=#fff
hi Keyword			guifg=#fff
hi Label			guifg=#fff
hi Macro			guifg=#bbb
hi ModeMsg			guifg=#bbb
hi MoreMs			guifg=#bbb
hi NonTex			guifg=#666 
hi Number			guifg=#fff						gui=NONE
hi Operator			guifg=#fff
hi PreCondit		guifg=#fff
hi PreProc			guifg=#fff
hi Question			guifg=#bbb
hi Repeat			guifg=#fff						gui=bold
hi Search			guifg=#fff
hi SpecialChar		guifg=#fff
hi SpecialComment	guifg=#fff
hi Special			guifg=#fff
hi SpecialKey		guifg=#000		guibg=#fff		
hi Statement		guifg=#fff
hi StorageClass		guifg=#fff
hi String			guifg=#bbb
hi Structure		guifg=#fff
hi Tag				guifg=#fff
hi Title			guifg=#bbb
hi Todo				guifg=#999		guibg=#1a1a1a	gui=bold
hi Typedef			guifg=#fff
hi Type				guifg=#fff
hi WarningMsg		guifg=#fff
hi WildMenu			guifg=#666		guibg=#fff	



" Terminal fallback styles from REDBLACK.VIM - https://github.com/rdineiu/vim-redblack

hi Normal         ctermbg=black ctermfg=grey 
hi Boolean        ctermbg=black ctermfg=grey 
hi Character      ctermbg=black ctermfg=red 
hi Comment        ctermbg=black ctermfg=darkgrey	cterm=bold
hi Condtional     ctermbg=black ctermfg=red 
hi Constant       ctermbg=black ctermfg=red 
hi Cursor         ctermbg=black ctermfg=grey 
hi Debug          ctermbg=black ctermfg=grey 
hi Define         ctermbg=black ctermfg=white 
hi Delimiter      ctermbg=black ctermfg=grey 
hi DiffAdd        ctermbg=NONE	ctermfg=NONE 		cterm=NONE 
hi DiffChange     ctermbg=white ctermfg=darkgrey 
hi DiffDelete     ctermbg=black ctermfg=darkgrey	cterm=bold
hi DiffText       ctermbg=red	ctermfg=white 
hi Directory      ctermbg=black ctermfg=white 
hi Error          ctermbg=red	ctermfg=white 
hi ErrorMsg       ctermbg=red	ctermfg=white 
hi Exception      ctermbg=black ctermfg=grey 
hi Float          ctermbg=black ctermfg=red			cterm=NONE 
hi FoldColumn     ctermbg=black ctermfg=grey 
hi Folded         ctermbg=black ctermfg=red 
hi Function       ctermbg=black ctermfg=white 
hi Identifier     ctermbg=black ctermfg=grey 
hi Include        ctermbg=black ctermfg=white 
hi IncSearch      ctermbg=green ctermfg=darkgrey 
hi Keyword        ctermbg=black ctermfg=red 
hi Label          ctermbg=black ctermfg=white 
hi LineNr         ctermbg=black ctermfg=darkgrey	cterm=bold
hi Macro          ctermbg=black ctermfg=grey 
hi ModeMsg        ctermbg=black ctermfg=grey 
hi MoreMsg        ctermbg=black ctermfg=grey 
hi NonText        ctermbg=black ctermfg=darkgrey	cterm=bold
hi Number         ctermbg=black ctermfg=red			cterm=NONE 
hi Operator       ctermbg=black ctermfg=white 
hi PreCondit      ctermbg=black ctermfg=white 
hi PreProc        ctermbg=black ctermfg=white 
hi Question       ctermbg=black ctermfg=grey 
hi Repeat         ctermbg=black ctermfg=white 
hi Search         ctermbg=black ctermfg=green 
hi SpecialChar    ctermbg=black ctermfg=white 
hi SpecialComment ctermbg=black ctermfg=white 
hi Special        ctermbg=black ctermfg=white 
hi SpecialKey     ctermbg=white ctermfg=black 
hi Statement      ctermbg=black ctermfg=white 
hi StatusLine     ctermbg=white ctermfg=red  
hi StatusLineNC   ctermbg=black ctermfg=grey 
hi StorageClass   ctermbg=black ctermfg=white 
hi String         ctermbg=black ctermfg=grey 
hi Structure      ctermbg=black ctermfg=white 
hi Tag            ctermbg=black ctermfg=red 
hi Title          ctermbg=black ctermfg=grey 
hi Todo           ctermbg=black ctermfg=white 
hi Typedef        ctermbg=black ctermfg=white 
hi Type           ctermbg=black ctermfg=white 
hi VertSplit      ctermbg=black ctermfg=grey 
hi Visual         ctermbg=black ctermfg=grey 
hi VisualNOS      ctermbg=black ctermfg=grey 
hi WarningMsg     ctermbg=black ctermfg=red 
hi WildMenu       ctermbg=white ctermfg=darkgrey 


" Short reference for neutral styles
let s:n = s:master['neutral']


" HTML - Default = orange
" -----------------------

let s:html = s:master['orange']

call DryColor('HtmlTagName',		s:html['bright'])
call DryColor('HtmlSpecialTagName',	s:html['bright'])
call DryColor('HtmlLink',			s:html['light'],		{ 'gui' : 'underline' })
call DryColor('HtmlSpecialChar',	s:html['light'])
call DryColor('HtmlArg',			s:html['dark'])

call DryColor('HtmlH1',				s:n['bright'],			{ 'gui' : "bold"	})
call DryColor('HtmlH1',				s:n['light'],			{ 'gui' : "bold"	})

call DryColor('HtmlBold',			s:n['medium'],			{ 'gui' : "bold" 	})
call DryColor('HtmlItalic',			s:n['medium'],			{ 'gui' : "italic" 	})

call DryColor('HtmlTag',			s:n['light'])
call DryColor('HtmlEndTag',			s:n['light'])
call DryColor('HtmlString',			s:n['bright'])
 



" JavaScript - Green
" ------------------

let s:js = s:master['green']

call DryMany (s:js['bright'], ['JavaScriptReserved', 'JavaScriptGlobal', 'JavaScriptMember', 'JavaScriptFunction', 'JavaScriptNumber', 'JavaScriptIdentifier', 'JavaScriptException'])
call DryMany (s:js['light'],  ['JavaScriptNull', 'JavaScriptBoolean', 'JavaScriptSpecial'])
call DryMany (s:js['dark'],   ['JavaScriptStringS', 'JavaScriptStringD', 'JavaScriptRegexpString'])

call DryColor('JavaScriptMessage',		s:n['medium'])
call DryColor('JavaScriptOperator',		s:n['bright'],		{ 'gui' : 'bold' })




" Stylesheets - Magenta
" ---------------------

let s:css = s:master['magenta']

call DryColor('cssInclude',		s:css['bright'],			{ 'gui' : 'bold' })
call DryColor('cssMedia',		s:css['bright'],			{ 'gui' : 'bold' })
call DryColor('cssMediaType',	s:css['bright'])

call DryColor('cssClassName',	s:n['bright'])
call DryColor('cssIdentifier',	s:n['bright'],				{ 'gui' : 'bold' })

call DryColor('cssBoxAttr',		s:n['medium'], 				{ 'gui' : 'NONE' })
call DryColor('cssRenderAttr',	s:n['medium'], 				{ 'gui' : 'NONE' })

call DryMany(  s:n['light'],	[ 'cssRenderProp', 'cssBoxProp', 'cssColorProp' ])
call DryMany(s:css['bright'],	[ 'cssValueLength', 'cssValueTime' ])
call DryMany(s:css['light'],	[ 'cssColor', 'cssTagName', 'cssCommonAttr' ])
call DryMany(s:css['dark'],		[ 'cssStringQQ', 'cssStringQ', 'cssURL' ])		


