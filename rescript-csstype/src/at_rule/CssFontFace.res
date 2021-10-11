type tag;
type t = CssType.descriptorBlock<tag>;

type value;

@unboxed
type rec boxValue = 
  | BoxValue(value): boxValue;

type descriptor = (string, boxValue);

let { nestedAtRule } = module(CssNestedAtRule.Helper);

module DescriptorBlock = {
  external makeDescriptorBlock: Js.Dict.t<boxValue> => t = "%identity";
  let make = descriptors => {
    descriptors
    ->Js.Dict.fromArray
    ->makeDescriptorBlock;
  };
};

module AtRuleHelper = {
  let fontFace = descriptors => 
    nestedAtRule("@font-face", None, DescriptorBlock.make(descriptors))
};

module Type = {
  type fontDisplay = [
    | #auto
    | #block
    | #swap
    | #fallback
    | #optional
  ];
};

module String = {
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
  descriptor("fontDisplay", String.fontDisplay(v)->string);
let fontDisplayString = v =>
  descriptor("fontDisplay", string(v));