// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';


function make(v) {
  var match = v.VAL;
  return [
          match[0],
          match[1]
        ];
}

function regularAtRule(identifier, rule) {
  return {
          NAME: "RegularAtRule",
          VAL: [
            identifier,
            rule
          ]
        };
}

var Helper = {
  regularAtRule: regularAtRule
};

exports.make = make;
exports.Helper = Helper;
/* No side effect */
