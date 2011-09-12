function! s:decodeRGB(rgb) 

	let rgbSplitter = '^#\(\x\{2}\)\(\x\{2}\)\(\x\{2}\)$'
	let matches     = matchlist(a:rgb, rgbSplitter)

	if empty(matches)
		return a:rgb
	endif

	let Red   = str2nr(matches[1], 16)
	let Green = str2nr(matches[2], 16)
	let Blue  = str2nr(matches[3], 16)

	return { 'r' : Red, 'g' : Green, 'b' : Blue }

endfunction

function! s:limitRGBValue(value)

	if a:value > 255
		return 255
	endif

	if a:value < 0
		return 0
	endif

	return a:value

endfunction

function! s:scaleRGBValue(rgb, scale)
	
	let m = s:decodeRGB(a:rgb)
	
	let rr = s:limitRGBValue(m['r'] * a:scale/100)
	let rg = s:limitRGBValue(m['g'] * a:scale/100)
	let rb = s:limitRGBValue(m['b'] * a:scale/100)

	let result = printf("#%02x%02x%02x", rr, rg, rb)

	return result
	
endfunction

function! s:createTrio(base)

	let trio = {}

	let trio['bright'] = a:base
	let trio['light']  = s:scaleRGBValue(a:base, 110)
	let trio['dark']   = s:scaleRGBValue(a:base,  60)

	return trio

endfunction
