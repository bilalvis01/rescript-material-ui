@unboxed
type rec t =
  | Any((string, 'a)): t;

let make = (name, value) => Any((name, value));

let borderString = v => Any("border", v);
let border = v => Any(("border", v));
let border2 = (~style, widthOrColor) => Any(("border", StyleValue.border2(~style, widthOrColor)));
let border3 = (~width, ~style, ~color) => Any(("border", StyleValue.border3(~width, ~style, ~color)));

let borderTopString = v => Any("borderTop", v);
let borderTop = v => Any(("borderTop", v));
let borderTop2 = (~style, widthOrColor) => Any(("borderTop", StyleValue.border2(~style, widthOrColor)));
let borderTop3 = (~width, ~style, ~color) => Any(("borderTop", StyleValue.border3(~width, ~style, ~color)));

let borderLeftString = v => Any("borderLeft", v);
let borderLeft = v => Any(("borderLeft", v));
let borderLeft2 = (~style, widthOrColor) => Any(("borderLeft", StyleValue.border2(~style, widthOrColor)));
let borderLeft3 = (~width, ~style, ~color) => Any(("borderLeft", StyleValue.border3(~width, ~style, ~color)));

let borderRightString = v => Any("borderRight", v);
let borderRight = v => Any(("borderRight", v));
let borderRight2 = (~style, widthOrColor) => Any(("borderRight", StyleValue.border2(~style, widthOrColor)));
let borderRight3 = (~width, ~style, ~color) => Any(("borderRight", StyleValue.border3(~width, ~style, ~color)));

let borderBottomString = v => Any("borderBottom", v);
let borderBottom = v => Any(("borderBottom", v));
let borderBottom2 = (~style, widthOrColor) => Any(("borderBottom", StyleValue.border2(~style, widthOrColor)));
let borderBottom3 = (~width, ~style, ~color) => Any(("borderBottom", StyleValue.border3(~width, ~style, ~color)));