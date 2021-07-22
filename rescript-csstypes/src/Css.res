open CssType;

/*
Textual data types
*/
// String
let str = v => #string(v);

/*
Numeric data types
*/
let num = v => #number(v);
let int = v => #integer(v);
let ratio = (v1, v2) => #ratio(v1, v2);
let fr = v => #fr(v);

/*
Quantities data types
*/
// length
let ch = l => #ch(l);
let em = l => #em(l);
let ex = l => #ex(l);
let rem = l => #rem(l);
let vh = l => #vh(l);
let vw = l => #vw(l);
let vmin = l => #vmin(l);
let vmax = l => #vmax(l);
let px = l => #px(l);
let cm = l => #cm(l);
let mm = l => #mm(l);
let inch = l => #inch(l);
let pc = l => #pc(l);
let pt = l => #pt(l);

// Percentage
let pct = v => #pct(v);

// Angle
let deg = v => #deg(v);
let grad = v => #grad(v);
let rad = v => #rad(v);
let turn = v => #turn(v);

// Time
let s = v => #s(v);
let ms = v => #ms(v);

// Frequency
let hz = v => #Hz(v);
let kHz = v => #kHz(v);

// Ratio
let dpi = v => #dpi(v);
let dpcm = v => #dpcm(v);
let dppx = v => #dppx(v);
let x = v => #x(v);

/*
Color data types
*/
let hsl = (v1, v2, v3) => #hsl(v1, v2, v3);
let hsla = (v1, v2, v3, v4) => #hsla(v1, v2, v3, v4);
let rgb = (v1, v2, v3) => #rgb(v1, v2, v3);
let rgba = (v1, v2, v3, v4) => #rgba(v1, v2, v3, v4);
let rgbX = v => #rgbX(v);

/*
properties
*/
@unboxed
type rec box_propertyValue =
  | PropertyValue(CssPropertyValue.synthetic<'a>): box_propertyValue;

type property = (string, box_propertyValue);

let makeProperty = (v1, v2) => (v1, PropertyValue(v2));

let border = v => ("border", PropertyValue(CssPropertyValue.border(v)));
let border2 = (~style, widthOrColor) => ("border", PropertyValue(CssPropertyValue.border2(~style, widthOrColor)));
let border3 = (~width, ~style, ~color) => 
  ("border", PropertyValue(CssPropertyValue.border3(~width, ~style, ~color)));
let borderS = v => ("border", PropertyValue(CssPropertyValue.string(v)));

let borderTop = v => ("borderTop", PropertyValue(CssPropertyValue.border(v)));
let borderTop2 = (~style, widthOrColor) => ("borderTop", PropertyValue(CssPropertyValue.border2(~style, widthOrColor)));
let borderTop3 = (~width, ~style, ~color) => 
  ("borderTop", PropertyValue(CssPropertyValue.border3(~width, ~style, ~color)));
let borderTopS = v => ("borderTop", PropertyValue(CssPropertyValue.string(v)));

let borderLeft = v => ("borderLeft", PropertyValue(CssPropertyValue.border(v)));
let borderLeft2 = (~style, widthOrColor) => ("borderLeft", PropertyValue(CssPropertyValue.border2(~style, widthOrColor)));
let borderLeft3 = (~width, ~style, ~color) => 
  ("borderLeft", PropertyValue(CssPropertyValue.border3(~width, ~style, ~color)));
let borderLeftS = v => ("borderLeft", PropertyValue(CssPropertyValue.string(v)));


let borderRight = v => ("borderRight", PropertyValue(CssPropertyValue.border(v)));
let borderRight2 = (~style, widthOrColor) => ("borderRight", PropertyValue(CssPropertyValue.border2(~style, widthOrColor)));
let borderRight3 = (~width, ~style, ~color) => 
  ("borderRight", PropertyValue(CssPropertyValue.border3(~width, ~style, ~color)));
let borderRightS = v => ("borderRight", PropertyValue(CssPropertyValue.string(v)));

let borderBottom = v => ("borderBottom", PropertyValue(CssPropertyValue.border(v)));
let borderBottom2 = (~style, widthOrColor) => ("borderBottom", PropertyValue(CssPropertyValue.border2(~style, widthOrColor)));
let borderBottom3 = (~width, ~style, ~color) => 
  ("borderBottom", PropertyValue(CssPropertyValue.border3(~width, ~style, ~color)));
let borderBottomS = v => ("borderBottom", PropertyValue(CssPropertyValue.string(v)));

let borderColor = v => ("borderColor", PropertyValue(CssPropertyValue.borderColor(v)));
let borderColor2 = (~tb, ~lr) => ("borderColor", PropertyValue(CssPropertyValue.borderColor2(~tb, ~lr)));
let borderColor3 = (~top, ~lr, ~bottom) =>
  ("borderColor", PropertyValue(CssPropertyValue.borderColor3(~top, ~lr, ~bottom)));
let borderColor4 = (~top, ~right, ~bottom, ~left) =>
  ("borderColor", PropertyValue(CssPropertyValue.borderColor4(~top, ~right, ~bottom, ~left)));
let borderColorS = v => ("borderColor", PropertyValue(CssPropertyValue.string(v)));

let borderTopColor = v => ("borderTopColor", PropertyValue(CssPropertyValue.borderColor(v)));
let borderTopColor2 = (~tb, ~lr) => ("borderTopColor", PropertyValue(CssPropertyValue.borderColor2(~tb, ~lr)));
let borderTopColor3 = (~top, ~lr, ~bottom) =>
  ("borderTopColor", PropertyValue(CssPropertyValue.borderColor3(~top, ~lr, ~bottom)));
let borderTopColor4 = (~top, ~right, ~bottom, ~left) =>
  ("borderTopColor", PropertyValue(CssPropertyValue.borderColor4(~top, ~right, ~bottom, ~left)));
let borderTopColorS = v => ("borderTopColor", PropertyValue(CssPropertyValue.string(v)));

let borderRightColor = v => ("borderRightColor", PropertyValue(CssPropertyValue.borderColor(v)));
let borderRightColor2 = (~tb, ~lr) => ("borderRightColor", PropertyValue(CssPropertyValue.borderColor2(~tb, ~lr)));
let borderRightColor3 = (~top, ~lr, ~bottom) =>
  ("borderRightColor", PropertyValue(CssPropertyValue.borderColor3(~top, ~lr, ~bottom)));
let borderRightColor4 = (~top, ~right, ~bottom, ~left) =>
  ("borderRightColor", PropertyValue(CssPropertyValue.borderColor4(~top, ~right, ~bottom, ~left)));
let borderRightColorS = v => ("borderRightColor", PropertyValue(CssPropertyValue.string(v)));

let borderLeftColor = v => ("borderLeftColor", PropertyValue(CssPropertyValue.borderColor(v)));
let borderLeftColor2 = (~tb, ~lr) => ("borderLeftColor", PropertyValue(CssPropertyValue.borderColor2(~tb, ~lr)));
let borderLeftColor3 = (~top, ~lr, ~bottom) =>
  ("borderLeftColor", PropertyValue(CssPropertyValue.borderColor3(~top, ~lr, ~bottom)));
let borderLeftColor4 = (~top, ~right, ~bottom, ~left) =>
  ("borderLeftColor", PropertyValue(CssPropertyValue.borderColor4(~top, ~right, ~bottom, ~left)));
let borderLeftColorS = v => ("borderLeftColor", PropertyValue(CssPropertyValue.string(v)));

let borderBottomColor = v => ("borderBottomColor", PropertyValue(CssPropertyValue.borderColor(v)));
let borderBottomColor2 = (~tb, ~lr) => ("borderBottomColor", PropertyValue(CssPropertyValue.borderColor2(~tb, ~lr)));
let borderBottomColor3 = (~top, ~lr, ~bottom) =>
  ("borderBottomColor", PropertyValue(CssPropertyValue.borderColor3(~top, ~lr, ~bottom)));
let borderBottomColor4 = (~top, ~right, ~bottom, ~left) =>
  ("borderBottomColor", PropertyValue(CssPropertyValue.borderColor4(~top, ~right, ~bottom, ~left)));
let borderBottomColorS = v => ("borderBottomColor", PropertyValue(CssPropertyValue.string(v)));