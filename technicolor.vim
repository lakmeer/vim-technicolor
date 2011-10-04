"
" Reset that shit yo
" ------------------

set	background=dark
hi clear




"
" Define s:master colour palletes
" -----------------------------

" Master dictionary
let s:master = {}


" Neutral default colors					default: All
let s:master['neutral'] 			= {}

let s:master['neutral']['bright']	= ['#ffffff', 'white' ]
let s:master['neutral']['light']	= ['#eeeeee', 'white' ]
let s:master['neutral']['medium']	= ['#bbbbbb', 'grey'  ] 
let s:master['neutral']['dark']		= ['#666666', 'darkgrey' ] 
let s:master['neutral']['invert']	= ['#212121', 'black' ]


" Red 										default: Ruby
let s:master['red'] 				= {}

let s:master['red']['bright'] 		= [ '#FF4444', 'red' ]
let s:master['red']['light']  		= [ '#FF7777', 'red' ]
let s:master['red']['dark']   		= [ '#aa2222', 'darkred' ]
let s:master['red']['invert'] 		= [ '#551111', 'darkred' ]


" Orange									default: HTML5
let s:master['orange'] 				= {}

let s:master['orange']['bright']	= [ '#FFBB33', 'yellow' ]
let s:master['orange']['light']		= [ '#FFCC88', 'yellow' ]
let s:master['orange']['dark']		= [ '#CC8800', 'darkyellow' ]
let s:master['orange']['invert']	= [ '#553300', 'darkyellow' ]


" Green										default: JavaScript
let s:master['green']				= {}

let s:master['green']['bright']		= [ '#44ff66', 'green' ]
let s:master['green']['light']		= [ '#88ffaa', 'green' ]
let s:master['green']['dark']		= [ '#22bb33', 'darkgreen' ]
let s:master['green']['invert']		= [ '#115511', 'darkgreen' ]


" Magenta									default: CSS3
let s:master['magenta']				= {}

let s:master['magenta']['bright']	= [ '#ff33ff', 'magenta' ]
let s:master['magenta']['light']	= [ '#ffaaff', 'magenta' ]
let s:master['magenta']['dark']		= [ '#bb22bb', 'darkmagenta' ]
let s:master['magenta']['invert']	= [ '#551155', 'darkmagenta' ]


" Blue										default: PHP
let s:master['blue']				= {}

let s:master['blue']['bright']		= [ '#66bbff', 'blue' ]
let s:master['blue']['light']		= [ '#aaddff', 'blue' ]
let s:master['blue']['dark']		= [ '#5588ee', 'darkblue' ]
let s:master['blue']['invert']		= [ '#111155', 'darkblue' ]



" Yellow									default: Interchange (XML, JSON)

let s:master['yellow']				= {}

let s:master['yellow']['bright']	= [ '#eeee11', 'yellow' ]
let s:master['yellow']['light']		= [ '#ffffaa', 'yellow' ]
let s:master['yellow']['dark']		= [ '#ccbb00', 'yellow' ]
let s:master['yellow']['invert']	= [ '#555511', 'yellow' ]





" At this point the only terminal colour set that
" hasn't been used is cyan, but I don't really want
" a cyan GUI palette so it will probably get matched
" to one of the palettes that doesn't have a direct
" correlation - thinking of making this Orange if I
" ever have a proper Yellow palette, making cyen the
" cterm colour for HTML.
"






"
" Define functions to apply palettes
" ----------------------------------


" Assign colors in a way that accepts variables for dryness
function! DryColor (name, color, ...)

	" echo a:color

	if a:0 > 0
		execute "hi " . a:name . " guifg=" . a:color[0] . ' ctermfg=' . a:color[1] . ' ' . s:assignDetail(a:1)
	else
		execute "hi " . a:name . " guifg=" . a:color[0] . ' ctermfg=' . a:color[1]
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






"
" Actual colour assignment begins
" -------------------------------

" b:f, l:d, m:b, d:6, i:3

" Normal
hi Normal				ctermbg=black	guibg=#1a1a1a   ctermfg=grey		guifg=#bbbbbb

" Cursor
hi Cursor				guibg=#ffffff   guifg=#000000	ctermfg=white		ctermbg=black
hi CursorLine							guibg=#222222	
hi CursorColumn							guibg=#222222	ctermbg=white
hi Visual								guibg=#393939	ctermfg=white		ctermbg=darkgrey
hi VisualNOS                            	            ctermfg=grey		

" Folding
hi Folded				guifg=#bbbbbb	guibg=#1a1a1a	ctermfg=white		ctermbg=black 
hi FoldColumn                                           ctermfg=yellow		guifg=yellow

" Window Elements
hi StatusLine			guifg=#444444	guibg=#dddddd 	ctermfg=black		ctermbg=white		cterm=bold
hi StatusLineNC         guifg=#282828	guibg=#888888	ctermfg=black		ctermbg=white		cterm=NONE
hi VertSplit            guifg=#282828	guibg=#282828   ctermfg=white		ctermbg=white		
hi LineNr               guifg=#888888	guibg=#282828	ctermfg=darkgrey	ctermbg=grey
hi NonText				guifg=#666666	guibg=#1a1a1a

" Popups
hi Pmenu				guifg=#888888	guibg=#282828		ctermfg=black		ctermbg=grey
hi PmenuSel				guifg=#ffffff	guibg=#444444		ctermfg=red			ctermbg=grey
hi IncSearch			guifg=#bbbbbb	guibg=black		ctermfg=grey		ctermbg=black




" These are the default (non-specific) styles
"
" TODO: Dry these up with DryMany 
"
" Probably some special left over, like Todo and Error
" to set manually in the normal way

hi Boolean 			guifg=#ffffff		ctermfg=white ctermbg=white cterm=bold
hi Character 		guifg=#ffffff
hi Comment 			guifg=#666666		ctermfg=darkgrey
hi Condtional		guifg=#ffffff
hi Constant			guifg=#ffffff
hi Debug			guifg=#bbbbbb
hi Define			guifg=#ffffff
hi Delimiter		guifg=#bbbbbb

hi DiffAdd			guifg=NONE 			guibg=NONE	 	gui=NONE	
hi DiffChange		guifg=#666666		guibg=#ffffff 
hi DiffDelete		guifg=#666666 
hi DiffText			guifg=#ffffff		guibg=#1a1a1a 

hi Directory		guifg=#ffffff
hi Error			guifg=#ffffff		guibg=#dd2222	ctermfg=red	 ctermbg=red
hi ErrorMsg 		guifg=#ffffff
hi Exception		guifg=#ffffff
hi Float			guifg=#ffffff						gui=NONE
hi Function			guifg=#ffffff		ctermfg=white
hi Identifier		guifg=#ffffff		ctermfg=white
hi Include			guifg=#ffffff
hi Keyword			guifg=#ffffff
hi Label			guifg=#ffffff
hi Macro			guifg=#bbbbbb
hi ModeMsg			guifg=#bbbbbb
hi MoreMs			guifg=#bbbbbb
hi Number			guifg=#ffffff						gui=NONE
hi Operator			guifg=#ffffff
hi PreCondit		guifg=#ffffff
hi PreProc			guifg=#ffffff		ctermfg=white
hi Question			guifg=#bbbbbb
hi Repeat			guifg=#ffffff						gui=bold
hi Search			guifg=#ffffff
hi SpecialChar		guifg=#ffffff		ctermfg=white		
hi SpecialComment	guifg=#ffffff		ctermfg=white
hi Special			guifg=#ffffff		ctermfg=white
hi SpecialKey		guifg=black			guibg=#ffffff		
hi Statement		guifg=#ffffff		ctermfg=white cterm=bold
hi StorageClass		guifg=#ffffff
hi String			guifg=#bbbbbb
hi Structure		guifg=#ffffff
hi Tag				guifg=#ffffff
hi Title			guifg=#bbbbbb
hi Typedef			guifg=#ffffff
hi Type				guifg=#ffffff		ctermfg=white		cterm=bold
hi WarningMsg		guifg=#ffffff
hi WildMenu			guifg=#666666		guibg=#ffffff	

" Reverse styles (in terminal)

hi Todo				guifg=#999999		guibg=#1a1a1a		gui=bold	ctermfg=black ctermbg=white


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



"
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




"
" JavaScript - Green
" ------------------

let s:js = s:master['green']

call DryMany (s:js['bright'], ['JavaScriptReserved', 'JavaScriptGlobal', 'JavaScriptMember', 'JavaScriptFunction', 'JavaScriptNumber', 'JavaScriptIdentifier', 'JavaScriptException'])
call DryMany (s:js['light'],  ['JavaScriptNull', 'JavaScriptBoolean', 'JavaScriptSpecial'])
call DryMany (s:js['dark'],   ['JavaScriptStringS', 'JavaScriptStringD', 'JavaScriptRegexpString'])

call DryColor('JavaScriptMessage',		s:n['medium'])
call DryColor('JavaScriptOperator',		s:n['bright'],		{ 'gui' : 'bold' })




"
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
call DryMany(s:css['bright'],	[ 'cssValueLength', 'cssValueTime', 'cssValueNumber' ])
call DryMany(s:css['light'],	[ 'cssColor', 'cssTagName', 'cssCommonAttr', 'cssPseudoClassId' ])
call DryMany(s:css['dark'],		[ 'cssStringQQ', 'cssStringQ', 'cssURL'])		



"
" PHP - Blue
" ----------

let s:php = s:master['blue']

call DryColor('phpDefine', s:php['bright'])

call DryMany(s:php['dark'],		[ 'phpStringSingle', 'phpStringDouble' ])
call DryMany(s:php['light'],	[ 'phpBoolean', 'phpMethodsVar' ])
call DryMany(s:php['bright'],	[ 'phpStorageClass', 'phpFunctions', 'phpStructure' ])


" Interchange - Yellow
" --------------------


let s:json = s:master['yellow']
let s:xml  = s:master['yellow']

call DryMany(s:json['bright'],	[ 'jsonNumber', 'jsonBraces' ])
call DryMany(s:json['dark'],	[ 'jsonStringSQ' ])
call DryMany(s:json['light'],	[ 'jsonNull', 'jsonBoolean' ])

call DryMany(s:n['bright'],		[ 'jsonString' ])

call DryMany(s:xml['bright'],	[ 'xmlTagName', 'xmlEndTag' ])
call DryMany(s:xml['dark'],		[ 'xmlAttrib' ])
call DryMany(s:xml['light'],	[ 'xmlNamespace', 'xmlEntity', 'xmlEntityPunct' ])

call DryMany(s:n['bright'],		[ 'xmlString', 'xmlEqual', 'xmlAttribPunct' ])
