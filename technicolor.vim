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
let s:master['neutral']['dark']	= '#666'
let s:master['neutral']['invert']	= '#212121'


" Red 										default: PHP
let s:master['red'] 				= {}

let s:master['red']['bright'] 	= '#F44'
let s:master['red']['light']  	= '#F66'
let s:master['red']['dark']   	= '#B33'
let s:master['red']['invert'] 	= '#511'


" Orange									default: HTML5
let s:master['orange'] 			= {}

let s:master['orange']['bright']	= '#FB3'
let s:master['orange']['light']	= '#FC8'
let s:master['orange']['dark']	= '#C80'
let s:master['orange']['invert']	= '#530'


" Green										default: JavaScript
let s:master['green']				= {}

let s:master['green']['bright']	= '#6f8'
let s:master['green']['light']	= '#3f4'
let s:master['green']['dark']		= '#2b3'
let s:master['green']['invert']	= '#151'


" Magenta									deafult: CSS3




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

hi Normal				ctermbg=black	guibg=#1a1a1a    ctermfg=grey		guifg=grey

hi Boolean                                               ctermfg=grey		guifg=grey
hi Character                                             ctermfg=magenta	guifg=magenta
hi Comment                                               ctermfg=darkgrey	guifg=#707070		cterm=bold
hi Condtional                                            ctermfg=magenta	guifg=magenta
hi Constant                                              ctermfg=magenta	guifg=magenta
hi Cursor				guibg=white                      ctermfg=grey		guifg=grey
hi Debug                                                 ctermfg=grey		guifg=grey
hi Define                                                ctermfg=white		guifg=white
hi Delimiter                                             ctermfg=grey		guifg=grey
hi DiffAdd				ctermbg=NONE	guibg=NONE       ctermfg=NONE		guifg=NONE			cterm=NONE		gui=NONE
hi DiffChange			ctermbg=white	guibg=white      ctermfg=darkgrey	guifg=#606060
hi DiffDelete                                            ctermfg=darkgrey	guifg=#606060		cterm=bold
hi DiffText				ctermbg=magenta	guibg=magenta    ctermfg=white		guifg=white
hi Directory                                             ctermfg=white		guifg=white
hi Error				ctermbg=magenta	guibg=red        ctermfg=white		guifg=white
hi ErrorMsg				ctermbg=magenta	guibg=magenta    ctermfg=white		guifg=white
hi Exception                                             ctermfg=grey		guifg=grey
hi Float                                                 ctermfg=magenta	guifg=magenta		cterm=NONE		gui=NONE
hi FoldColumn                                            ctermfg=grey		guifg=grey
hi Folded                                                ctermfg=magenta	guifg=magenta
hi Function                                              ctermfg=white		guifg=white
hi Identifier                                            ctermfg=grey		guifg=grey
hi Include                                               ctermfg=white		guifg=white
hi IncSearch			ctermbg=magenta	guibg=magenta    ctermfg=darkgrey	guifg=#606060
hi Keyword                                               ctermfg=magenta	guifg=magenta
hi Label                                                 ctermfg=white		guifg=white
hi LineNr                                                ctermfg=darkgrey	guifg=#606060		cterm=bold
hi Macro                                                 ctermfg=grey		guifg=grey
hi ModeMsg                                               ctermfg=grey		guifg=grey
hi MoreMsg                                               ctermfg=grey		guifg=grey
hi NonText                                               ctermfg=darkgrey	guifg=#606060		cterm=bold
hi Number                                                ctermfg=magenta	guifg=magenta		cterm=NONE		gui=NONE
hi Operator                                              ctermfg=white		guifg=white
hi PreCondit                                             ctermfg=white		guifg=white
hi PreProc                                               ctermfg=white		guifg=white
hi Question                                              ctermfg=grey		guifg=grey
hi Repeat                                                ctermfg=white		guifg=white			gui=bold
hi Search                                                ctermfg=magenta	guifg=magenta
hi SpecialChar                                           ctermfg=white		guifg=white
hi SpecialComment                                        ctermfg=white		guifg=white
hi Special                                               ctermfg=white		guifg=white
hi SpecialKey			ctermbg=white	guibg=white      ctermfg=black		guifg=black
hi Statement                                             ctermfg=white		guifg=white
hi StatusLine			ctermbg=white	guibg=white      ctermfg=magenta	guifg=#707070
hi StatusLineNC                                          ctermfg=grey		guifg=#404040
hi StorageClass                                          ctermfg=white		guifg=white
hi String                                                ctermfg=grey		guifg=grey
hi Structure                                             ctermfg=white		guifg=white
hi Tag                                                   ctermfg=magenta	guifg=magenta
hi Title                                                 ctermfg=grey		guifg=grey
hi Todo                                                  ctermfg=white		guifg=white
hi Typedef                                               ctermfg=white		guifg=white
hi Type                                                  ctermfg=white		guifg=white
hi VertSplit                                             ctermfg=grey		guifg=grey
hi Visual				ctermbg=darkgrey guibg=#333333 ctermfg=grey
hi VisualNOS                                             ctermfg=grey		guifg=grey
hi WarningMsg                                            ctermfg=magenta	guifg=magenta
hi WildMenu				ctermbg=white	guibg=white      ctermfg=darkgrey	guifg=#606060

hi Pmenu				guibg=black


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

let s:css = s:master['red']

call DryColor('cssInclude',		s:css['bright'],			{ 'gui' : 'bold' })
call DryColor('cssMedia',		s:css['bright'],			{ 'gui' : 'bold' })
call DryColor('cssMediaType',	s:css['bright'])

call DryColor('cssClassName',	s:n['bright'])
call DryColor('cssIdentifier',	s:n['bright'],				{ 'gui' : 'bold' })

call DryColor('cssBoxAttr',		s:n['medium'], 				{ 'gui' : 'NONE' })
call DryColor('cssRenderAttr',	s:n['medium'], 				{ 'gui' : 'NONE' })

call DryMany(  s:n['light'],	[ 'cssRenderProp', 'cssBoxProp', 'cssColorProp' ])
call DryMany(s:css['bright'], [ 'cssColor', 'cssValueLength', 'cssValueTime' ])
call DryMany(s:css['light'],  ['cssTagName', 'cssCommonAttr' ])
call DryMany(s:css['dark'],	[ 'cssStringQQ', 'cssStringQ', 'cssURL'])		


