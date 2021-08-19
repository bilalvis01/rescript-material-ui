// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Js_dict = require("rescript/lib/js/js_dict.js");
var Belt_Array = require("rescript/lib/js/belt_Array.js");
var CssStatement$Ress = require("./CssStatement.js");

function Make(funarg) {
  var Statement = CssStatement$Ress.Make({});
  var make = function (rules) {
    return Js_dict.fromArray(Belt_Array.map(rules, (function (rule) {
                      return Curry._1(Statement.make, rule);
                    })));
  };
  return {
          make: make
        };
}

exports.Make = Make;
/* No side effect */
