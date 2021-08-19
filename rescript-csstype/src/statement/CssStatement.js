// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("rescript/lib/js/curry.js");
var CssRule$Ress = require("../rule/CssRule.js");
var CssAtRule$Ress = require("../at_rule/CssAtRule.js");
var CssPseudoClass$Ress = require("../rule/CssPseudoClass.js");

function Make(funarg) {
  var Rule = CssRule$Ress.Make({});
  var map = function (v) {
    return [
            "@global " + v[0],
            v[1]
          ];
  };
  var PseudoClass = CssPseudoClass$Ress.Make({
        map: map
      });
  var make = function (statement) {
    var variant = statement.NAME;
    if (variant === "Rule") {
      return Curry._1(Rule.make, statement);
    } else if (variant === "Hover") {
      return Curry._1(PseudoClass.make, statement);
    } else {
      return CssAtRule$Ress.make(statement);
    }
  };
  return {
          make: make
        };
}

exports.Make = Make;
/* No side effect */
