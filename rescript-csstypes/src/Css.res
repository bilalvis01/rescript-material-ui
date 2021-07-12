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
let rgbx = v => #rgbx(v);

/*
properties
*/
@unboxed
type rec box_propertyValue =
  | PropertyValue(CssPropertyValue.synthetic<'a>): box_propertyValue;

type property = (string, box_propertyValue);

let makeProperty = (v1, v2) => (v1, PropertyValue(v2));

let border = v => ("border", PropertyValue(CssPropertyValue.border(v)));
let border2 = (v1, v2) => ("border", PropertyValue(CssPropertyValue.border2(v1, v2)));
let border3 = (~width, ~style, ~color) => 
  ("border", PropertyValue(CssPropertyValue.border3(~width, ~style, ~color)));