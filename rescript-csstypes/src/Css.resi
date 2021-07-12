open CssType;

/*
Textual data types
*/
let str: string => [> #string(string) ];

/*
Numeric data types
*/
let num: float => [> #number(float) ];
let int: int => [> #integer(int) ];
let pct: float => [> #pct(float) ];
let ratio: (int, int) => [> #ratio(int, int) ];
let fr: float => [> #fr(float) ];

/*
Quantities data types
*/
// length
let ch: float => [> #ch(float) ];
let em: float => [> #em(float) ];
let ex: float => [> #ex(float) ];
let rem: float => [> #rem(float) ];
let vh: float => [> #vh(float) ];
let vw: float => [> #vw(float) ];
let vmin: float => [> #vmin(float) ];
let vmax: float => [> #vmax(float) ];
let px: float => [> #px(float) ];
let cm: float => [> #cm(float) ];
let mm: float => [> #mm(float) ];
let inch: float => [> #inch(float) ];
let pc: float => [> #pc(float) ];
let pt: float => [> #pt(float) ];

// Angle
let deg: float => [> #deg(float) ];
let grad: float => [> #grad(float)];
let rad: float => [> #rad(float) ];
let turn: float => [> #turn(float) ];

// Time
let s: float => [> | #s(float) ];
let ms: float => [> | #ms(float) ];

// Frequency
let hz: float => [> | #Hz(float) ];
let kHz: float => [> | #kHz(float) ];

// Resolution
let dpi: float => [> | #dpi(float) ];
let dpcm: float => [> | #dpcm(float) ];
let dppx: float => [> | #dppx(float) ];
let x: float => [> | #x(float) ];

/*
Color data types
*/
let hsl: (hue, percentage, percentage) => [> #hsl(hue, percentage, percentage) ];
let hsla: (hue, percentage, percentage, alpha) => [> #hsla(hue, percentage, percentage, alpha) ];
let rgb: (rgbParam, rgbParam, rgbParam) => [> #rgb(rgbParam, rgbParam, rgbParam) ];
let rgba: (rgbParam, rgbParam, rgbParam, alpha) => [> #rgba(rgbParam, rgbParam, rgbParam, alpha) ];
let rgbHex: string => [> #rgbHex(string) ];

/*
Properties
*/
@unboxed
type rec box_propertyValue =
  | PropertyValue(CssPropertyValue.synthetic<'a>): box_propertyValue;

type property = (string, box_propertyValue);

let makeProperty: (string, CssPropertyValue.synthetic<'a>) => property;

let border: [ | global | lineWidth | lineStyle | color | string_ ] => property;
let border2: ([ | lineWidth | lineStyle | color ], [ | lineWidth | lineStyle | color ]) => property;
let border3: (~width: lineWidth, ~style: lineStyle, ~color: color) => property;