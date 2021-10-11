type tag;
type t = CssType.descriptorBlock<tag>;

type value;

@unboxed
type rec boxValue = 
  | BoxValue(value): boxValue;

type descriptor = (string, boxValue);

module DescriptorBlock: {
  let make: array<descriptor> => t;
};

module AtRuleHelper: {
  let fontFace: array<descriptor> => CssNestedAtRule.r<'a>;
};

module Type: {
  type fontDisplay = [
    | #auto
    | #block
    | #swap
    | #fallback
    | #optional
  ];
};

module String: {
  let fontDisplay: Type.fontDisplay => string;
};

external string: string => value = "%identity";
external integer: int => value = "%identity";

let descriptor: (string, value) => descriptor;

let fontDisplay: Type.fontDisplay => descriptor;
let fontDisplayString: string => descriptor;