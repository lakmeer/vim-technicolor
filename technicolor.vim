set	background=dark
hi clear

hi Normal				ctermbg=black	guibg=#1a1a1a ctermfg=grey		guifg=grey

hi Boolean				ctermfg=grey		guifg=grey
hi Character			ctermfg=magenta		guifg=magenta
hi Comment				ctermfg=darkgrey	guifg=#707070		cterm=bold
hi Condtional			ctermfg=magenta		guifg=magenta
hi Constant				ctermfg=magenta		guifg=magenta
hi Cursor				guibg=white			ctermfg=grey		guifg=grey
hi Debug				ctermfg=grey		guifg=grey
hi Define				ctermfg=white		guifg=white
hi Delimiter			ctermfg=grey		guifg=grey
hi DiffAdd				ctermbg=NONE	guibg=NONE		ctermfg=NONE		guifg=NONE			cterm=NONE		gui=NONE
hi DiffChange			ctermbg=white	guibg=white		ctermfg=darkgrey	guifg=#606060
hi DiffDelete			ctermfg=darkgrey	guifg=#606060		cterm=bold
hi DiffText				ctermbg=magenta	guibg=magenta	ctermfg=white		guifg=white
hi Directory			ctermfg=white		guifg=white
hi Error				ctermbg=magenta	guibg=red		ctermfg=white		guifg=white
hi ErrorMsg				ctermbg=magenta	guibg=magenta	ctermfg=white		guifg=white
hi Exception			ctermfg=grey		guifg=grey
hi Float				ctermfg=magenta		guifg=magenta		cterm=NONE		gui=NONE
hi FoldColumn			ctermfg=grey		guifg=grey
hi Folded				ctermfg=magenta		guifg=magenta
hi Function				ctermfg=white		guifg=white
hi Identifier			ctermfg=grey		guifg=grey
hi Include				ctermfg=white		guifg=white
hi IncSearch			ctermbg=magenta	guibg=magenta	ctermfg=darkgrey	guifg=#606060
hi Keyword				ctermfg=magenta		guifg=magenta
hi Label				ctermfg=white		guifg=white
hi LineNr				ctermfg=darkgrey	guifg=#606060		cterm=bold
hi Macro				ctermfg=grey		guifg=grey
hi ModeMsg				ctermfg=grey		guifg=grey
hi MoreMsg				ctermfg=grey		guifg=grey
hi NonText				ctermfg=darkgrey	guifg=#606060		cterm=bold
hi Number				ctermfg=magenta		guifg=magenta		cterm=NONE		gui=NONE
hi Operator				ctermfg=white		guifg=white
hi PreCondit			ctermfg=white		guifg=white
hi PreProc				ctermfg=white		guifg=white
hi Question				ctermfg=grey		guifg=grey
hi Repeat				ctermfg=white		guifg=white			gui=bold
hi Search				ctermfg=magenta		guifg=magenta
hi SpecialChar			ctermfg=white		guifg=white
hi SpecialComment		ctermfg=white		guifg=white
hi Special				ctermfg=white		guifg=white
hi SpecialKey			ctermbg=white	guibg=white		ctermfg=black		guifg=black
hi Statement			ctermfg=white		guifg=white
hi StatusLine			ctermbg=white	guibg=white		ctermfg=magenta		guifg=#707070
hi StatusLineNC			ctermfg=grey		guifg=#404040
hi StorageClass			ctermfg=white		guifg=white
hi String				ctermfg=grey		guifg=grey
hi Structure			ctermfg=white		guifg=white
hi Tag					ctermfg=magenta		guifg=magenta
hi Title				ctermfg=grey		guifg=grey
hi Todo					ctermfg=white		guifg=white
hi Typedef				ctermfg=white		guifg=white
hi Type					ctermfg=white		guifg=white
hi VertSplit			ctermfg=grey		guifg=grey
hi Visual				ctermbg=darkgrey	guibg=#333333	ctermfg=grey	
hi VisualNOS			ctermfg=grey		guifg=grey
hi WarningMsg			ctermfg=magenta		guifg=magenta
hi WildMenu				ctermbg=white	guibg=white		ctermfg=darkgrey	guifg=#606060

hi Pmenu				guibg=black



" Neutral 
" -------
" Generic color overrides with standard neutral palette

hi neutralBright		guifg=#fff						ctermfg=grey
hi neutralLight			guifg=#bbb						ctermfg=white
hi neutralDark			guifg=#666						ctermfg=darkgrey
hi neutralInvert		guifg=black		guibg=#bbb		ctermfg=black		ctermbg=grey


" HTML - Orange
" -------------

hi htmlBright			guifg=#FB3
hi htmlLight			guifg=#FC8
hi htmlDark				guifg=#C80
hi htmlInvert			guifg=#530

" HTML Bright - Tag names and Headings
hi link HtmlTagName				htmlBright
hi link HtmlSpecialTagName		htmlBright

" HTML Light - Link text, Character Entities
hi link HtmlLink				htmlLight
hi link HtmlSpecialChar			htmlLight

" HTML Dark - Attribute names
hi link HtmlArg					htmlDark

" Neutral Overrides
hi link HtmlTag					neutralBright
hi link HtmlEndTag				neutralBright
hi link HtmlH1					neutralBright
hi link HtmlH2					neutralBright
hi link HtmlString				neutralBright

" Text Styles
hi HtmlLink						gui=underline	guifg=#fc8
hi HtmlH1						gui=bold
hi HtmlH2						gui=bold
hi HtmlBold						gui=bold
hi HtmlItalic					gui=italic



" JavaScript - Green
" ------------------

hi jsLight		guifg=#6f8
hi jsBright		guifg=#3f4
hi jsDark		guifg=#2b3
hi jsInvert 	guifg=white		guibg=#151

" JS Bright - Declarations, Globals and Numbers
hi link JavaScriptReserved		jsBright	
hi link JavaScriptGlobal 		jsBright	
hi link JavaScriptMember 		jsBright	
hi link JavaScriptFunction		jsBright	
hi link JavaScriptNumber		jsBright	
hi link JavaScriptIdentifier	jsBright
hi link JavaScriptException		jsBright

" JS Light - Escaped Characters and Type Primitives
hi link JavaScriptNull			jsLight
hi link JavaScriptBoolean		jsLight
hi link JavaScriptSpecial		jsLight

" JS Dark - Strings & Regexes
hi link JavaScriptStringS		jsDark
hi link JavaScriptStringD		jsDark
hi link JavaScriptRegexpString	jsDark

" JS Invert - No use for this yet

" Neutral Overrides
hi link JavaScriptMessage		neutralLight
hi link JavaScriptOperator		neutralBright

" Text Styles
hi JavaScriptOperator			gui=bold			guifg=#fff



" Stylesheets - Red
" Bright	#FF4444
" Light		#FF6666
" Dark		#BB3333
" Back		#551111

hi cssInclude				guifg=#F33				gui=bold
hi cssMedia					guifg=#F33				gui=bold
hi cssMediaType				guifg=#F33				

hi cssTagName				guifg=#F99
hi cssClassName				guifg=#F33
hi cssIdentifier			guifg=#F33				gui=bold

hi cssBoxProp				guifg=white
hi cssBoxAttr				guifg=grey					gui=NONE
hi cssRenderProp			guifg=white
hi cssRenderAttr			guifg=grey					gui=NONE

hi cssCommonAttr			guifg=#F99

hi cssColorProp				guifg=white
hi cssColor					guifg=#F44

hi cssValueLength			guifg=#F44
hi cssValueTime				guifg=#F44

hi cssStringQQ				guifg=#A22
hi cssStringQ				guifg=#A22
hi cssURL					guifg=#A22
