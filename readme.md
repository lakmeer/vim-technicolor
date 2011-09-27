Technicolor.vim
===============

A minimalist multi-filetype colorscheme for GUI vim.

Screenshot (Last updated 28 Sept 2011): http://i.imgur.com/fBkIa.png

About
-----

Inspired by minimal-palette colorschemes like [dw_colors](http://sites.google.com/site/dwcolors/)
and especially [redblack](https://github.com/rdineiu/vim-redblack), this colorscheme has a neutral
core with coloured highlights. The colour of the highlights depends on the filetype set in each buffer,
to create a visual seperation of the different languages in your project.


Features
--------

### Cool

The main goal of this project is prettiness. There's no real reason to seperate the colours of various
languages you use, becuase you can tell them apart just fine anyway, other than I think it's a neat idea.

There are two notable drawbacks:

* poor terminal support (working on this)
* lack of sophisticated syntax highlighting

so if you require complex highlighting or consistency across your gui and remote vim experience, 
this is not for you. Neither of these particularly impact me in my personal vim usage, but I **would** 
like to develop the terminal support to an acceptable level. Suggestions welcome!

Because I am a web developer, Technicolor focuses on languages used for web, but I wish to extend 
it to include other common multiple-language scenarios, so please add suggestions!


### Modular

The colorsheme file itself includes a few simple vimscript functions to dry up the (to be honest, 
really pretty moist) vim highlighting syntax and to make language-to-colour assignment more easily 
configurable. Each of the colour sets is defined as a dictionary which you can very easily customise 
if you wish.


Colour sets
-----------

### Default set: Web development

* HTML - Orange (from [HTML5 Logo](http://www.w3.org/html/logo))
* CSS3 - Magenta (from [Modernizr](http://www.modernizr.com))
* Javascript - Green

Right now I intend to add support for these backend languages:

* PHP - Blue
* Ruby - Red (obviously)

and wish to investigate other common web-backend languages in future, probably Python, SQL and possibly Java.
Also, interchange languages would be nice (XML, JSON).

### Other sets

Other languages fall outside my experience, but if you work in a field or on a project where you're 
using more than one language, can think of language groupings that work well together, or just want 
to see *your-favourite-language-here* supported, please request them.



## About feature tours

In the tour folder here I have what I call 'feature tours', files that are (nonsense) examples of each 
language I'm trying to highlight, but which concisely demonstrate each of the syntax features that might
be considered for highlighting. There's probably already a perfectly good name for this kind o file, but 
I don't know it. I currently only have the ones I'm capable of creating (and feel free to point out where 
I missed a spot), so if you'd like to request a language, please include a feature tour I can use to create 
the colouring. 
It needs to include a complete demonstration of all the syntax features that require consideration.


