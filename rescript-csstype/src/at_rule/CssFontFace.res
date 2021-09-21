type tag;
type t = CssAtRule.rule<tag>;

type value;

@unboxed
type rec boxValue = 
  | BoxValue(value): boxValue;

type descriptor = (string, boxValue);

external makeRule: Js.Dict.t<boxValue> => t = "%identity";

module DescriptorBlock = {
  let make = descriptors => {
    descriptors
    ->Js.Dict.fromArray
    ->makeRule;
  };
};

module AtRuleHelper = {
  let fontFace = descriptors => 
    CssAtRule.Helper.atRule("@font-face", DescriptorBlock.make(descriptors))
};

module ValueType = {
  type fontDisplay = [
    | #auto
    | #block
    | #swap
    | #fallback
    | #optional
  ];
};

module ValueString = {
  let fontDisplay = v => {
    switch v {
    | #auto => "auto"
    | #block => "block"
    | #swap => "swap"
    | #fallback => "fallback"
    | #optional => "optional"
    }
  };
};

external string: string => value = "%identity";
external integer: int => value = "%identity";

let descriptor = (property, value) => (property, BoxValue(value));

let fontDisplay = v => 
  descriptor("fontDisplay", ValueString.fontDisplay(v)->string);
let fontDisplayString = v =>
  descriptor("fontDisplay", string(v));