/*
 * JAVASCRIPT COLORSCHEME BENCHMARK
 *
 * Provides examples of all the language features 
 * so you can check they highlight correctly.
 *
 */





// Declarations

const	SOME_CONST	= 0;
var		someVar		= Infinity;



// Raw Data - Strings, numbers, regex

var rawData = {

	'stringS'	:	'single-quoted string',
	'stringD'	:	"double-quoted string",
	'regexp'	:	/^.*a\sregular (expre[!s-S]ion) \s.+*$/,
	'escape'	:	"here's a standard string with some \'escaped\'characters\n"

};



// Type primitives

var primitives = {
	'boolean primitives'	:	[ false, true ],
	'null primitives'		: 	[ null, undefined ]
};



// Loops

for (var i = 0; i < _x; i++) {

	var x = this.x;

}

while (x) {

	var x = this.x;

}


// Conditionals

if (!someCondition === someOtherCondition && aThirdCondition) {

	_z = this.z;

}

switch (_z) {

	case "caseA":
		break;


	case "caseB":
		return;

	default:
		console.log("Even your pretend code failed. How embarrassing.");

}



// Misc operators

typeof xyz == 'undefined';
if ('zyx' in primitives) { alert("Bing!"); }


// DOM Operations

window.location.hash = "#testing";
document.createElement('none');


// Exceptions

try { 
	console.log("Go on, try.");

} catch _exception {

	alert("Ah, it's " + _exception);

}


// Closure-based module pattern

var aClosure = function (_arg) {

	var privateValue = 200;

	return function () { return privateValue; }

}



