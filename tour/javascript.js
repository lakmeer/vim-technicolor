/*
 * Javascript feature tour
 *
 */

// Declarations

const SOME_CONST  = 0;
var   someVar   = Infinity;


// Data Types

var stringsAndRegexes = {
  singleq : 'single-quoted string',
  doubleq : "double-quoted string",
  regexp  : /^.*a\sregular (expre[!s-S]ion) \s.+*$/,
  escape  : "here's a standard string with some \'escaped\'characters\n"
};

var primitiveTypes = {
  'boolean primitives'  : [ false, true ],
  'null primitives'   :   [ null, undefined ]
};

var numbers = {
  whole      : 2,
  decimal    : 2.2,
  negative   : -2,
  scientific : 2.2e10
};


// Loops

for (var i = 0; i < max; i++) {
  var x = this.x;
}

while (x) {
  var x = this.x;
}

do {
  var x = this.x;
} while (x);


// Conditionals

if (!someCondition === someOtherCondition && aThirdCondition) {
  console.log('Usually.');
} else if (moreConditions) {
  console.log('Occasionally.');
} else {
  console.log('Never.');
}

switch (z) {
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
} catch exception {
  alert("Ah, it's " + exception + "!");
}


// Class Pattern

var Thing = function Thing (x) {
  var privateValue = 200;
  this.property = x;
  
  var privateFunction = function () {
    return privateValue;
  }

  this.publicMethod = function () {
    this.property
}

var thing = new Thing('X');


