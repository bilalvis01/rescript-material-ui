type tag;
type t = CssAtRule.rule<tag>;

type value;

@unboxed
type rec boxValue = 
  | BoxValue(value): boxValue;

type descriptor = (string, boxValue);

let descriptorBlocks: array<descriptor> => t;

module AtRuleHelper: {
  let fontFace: array<descriptor> => [> CssAtRule.constructor ];
};

module ValueType: {
  type fontDisplay = [
    | #auto
    | #block
    | #swap
    | #fallback
    | #optional
  ];
};

module ValueString: {
  let fontDisplay: ValueType.fontDisplay => string;
};

external string: string => value = "%identity";
external integer: int => value = "%identity";

let descriptor: (string, value) => descriptor;

let fontDisplay: ValueType.fontDisplay => descriptor;
let fontDisplayString: string => descriptor;