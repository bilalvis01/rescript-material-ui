// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Stringify$Css = require("./Stringify.js");
var Combinator$Css = require("./Combinator.js");

var make = Stringify$Css.border;

function make2(v1, v2) {
  return Stringify$Css.border(Combinator$Css.concat(v1, v2));
}

function make3(v1, v2, v3) {
  return Stringify$Css.border(Combinator$Css.concat(Combinator$Css.concat(v1, v2), v3));
}

exports.make = make;
exports.make2 = make2;
exports.make3 = make3;
/* No side effect */
