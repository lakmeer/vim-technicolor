Technicolor.vim
===============

A minimalist multi-filetype colorscheme for GUI vim.

![Screenshot](http://i.imgur.com/Xn1gQho.png)

About
-----

Inspired by minimal-palette colorschemes like [dw_colors](http://sites.google.com/site/dwcolors/)
and especially [redblack](https://github.com/rdineiu/vim-redblack), this colorscheme has a neutral
core with coloured highlights. The colour of the highlights depends on the filetype set in each buffer,
to create a visual seperation of different languages.


Features
--------

### Cool

The main goal of this project is prettiness. There's no real reason to seperate the colours of various
languages you use, because you can tell them apart just fine anyway, other than I think it's a neat idea.
I don't often use terminal vim so the terminal color support is weak, although it is more-or-less working.
If anyone can lend assistance in developing the terminal support to an acceptable level, I'd appreciate it.

Because I develop this theme for my own entertainment, it only supports languages I use or are interested in.
I'm happy to accept pull requests for other languages.

### Modular

The colorsheme file itself includes a few simple vimscript functions to dry up the (to be honest, 
really pretty moist) vim highlighting syntax and to make language-to-colour assignment more easily 
configurable. Each of the colour sets is defined as a dictionary which you can very easily customise 
if you wish.


Colour sets
-----------

* HTML/JSP/Markdown - Orange
* PHP - Blue
* CSS/Less/Sass - Magenta 
* Javascript - Green
* Coffeescript - Red
* Livescript - Cyan
* Ruby - Red (obviously)
* Actionscript - Red
* Haskell - Green
* Interchange formats (JSON,XML) - Yellow


### Other sets

Other languages fall outside my experience, but if you work in a field or on a project where you're 
using more than one language, can think of language groupings that work well together, or just want 
to see *your-favourite-language-here* supported, please request them.


## About feature tours

The 'tour' folder contains what I call 'feature tours' - files that are (nonsense) examples of each 
language I'm trying to highlight, but which concisely demonstrate each of the syntax features that might
be considered for highlighting. There's probably name for this kind of file, but I don't know it. I
currently only have the ones I'm capable of creating (and feel free to point out where I missed a spot),
so if you'd like to request a language, please include a feature tour I can use to create the colouring.
It needs to include a complete demonstration of all the syntax features that require consideration.
