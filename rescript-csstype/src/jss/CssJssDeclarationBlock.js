// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Js_dict = require("rescript/lib/js/js_dict.js");
var Belt_Array = require("rescript/lib/js/belt_Array.js");
var CssRule$Ress = require("../rule/CssRule.js");
var CssAtRule$Ress = require("../at_rule/CssAtRule.js");
var CssDeclaration$Ress = require("../declaration/CssDeclaration.js");
var CssPseudoClass$Ress = require("../rule/CssPseudoClass.js");
var CssJssImportant$Ress = require("./CssJssImportant.js");
var CssDeclarationFn$Ress = require("../declaration/CssDeclarationFn.js");

function Make(funarg) {
  var map = function (v) {
    return [
            "&" + v[0],
            v[1]
          ];
  };
  var PseudoClassBase = CssPseudoClass$Ress.Make({
        map: map
      });
  var RuleBase = CssRule$Ress.Make({});
  var Important = CssJssImportant$Ress.Make({});
  var make = function (declarations) {
    return Js_dict.fromArray(Belt_Array.map(declarations, (function (declaration) {
                      var variant = declaration.NAME;
                      if (variant === "AtRule") {
                        return CssAtRule$Ress.make(declaration);
                      } else if (variant === "PseudoClass") {
                        return Curry._1(PseudoClassBase.make, declaration);
                      } else if (variant === "Important") {
                        return Curry._1(Important.make, declaration);
                      } else if (variant === "DeclarationFn") {
                        return CssDeclarationFn$Ress.make(declaration);
                      } else if (variant === "Rule") {
                        return Curry._1(RuleBase.make, declaration);
                      } else {
                        return CssDeclaration$Ress.make(declaration);
                      }
                    })));
  };
  return {
          make: make
        };
}

exports.Make = Make;
/* No side effect */