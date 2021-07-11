// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var CssString$Css = require("./CssString.js");
var CssCombinator$Css = require("./CssCombinator.js");

var border = CssString$Css.border;

function border2(v1, v2) {
  return CssString$Css.border(CssCombinator$Css.concat(v1, v2));
}

function border3(v1, v2, v3) {
  return CssString$Css.border(CssCombinator$Css.concat(CssCombinator$Css.concat(v1, v2), v3));
}

exports.border = border;
exports.border2 = border2;
exports.border3 = border3;
/* No side effect */
