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
let rgbX: string => [> #rgbX(string) ];

/*
Properties
*/
@unboxed
type rec box_propertyValue =
  | PropertyValue(CssPropertyValue.synthetic<'a>): box_propertyValue;

type property = (string, box_propertyValue);

let property: (string, CssPropertyValue.synthetic<'a>) => property;

let border: [ | global | lineWidth | lineStyle | color ] => property;
let border2: (~style: lineStyle, [ | lineWidth | color ]) => property;
let border3: (~width: lineWidth, ~style: lineStyle, ~color: color) => property;
let borderS: string => property;

let borderTop: [ | global | lineWidth | lineStyle | color ] => property;
let borderTop2: (~style: lineStyle, [ | lineWidth | color ]) => property;
let borderTop3: (~width: lineWidth, ~style: lineStyle, ~color: color) => property;
let borderTopS: string => property;

let borderLeft: [ | global | lineWidth | lineStyle | color ] => property;
let borderLeft2: (~style: lineStyle, [ | lineWidth | color ]) => property;
let borderLeft3: (~width: lineWidth, ~style: lineStyle, ~color: color) => property;
let borderLeftS: string => property;

let borderRight: [ | global | lineWidth | lineStyle | color ] => property;
let borderRight2: (~style: lineStyle, [ | lineWidth | color ]) => property;
let borderRight3: (~width: lineWidth, ~style: lineStyle, ~color: color) => property;
let borderRightS: string => property;

let borderBottom: [ | global | lineWidth | lineStyle | color ] => property;
let borderBottom2: (~style: lineStyle, [ | lineWidth | color ]) => property;
let borderBottom3: (~width: lineWidth, ~style: lineStyle, ~color: color) => property;
let borderBottomS: string => property;

let borderColor: [ | color | global ] => property;
let borderColor2: (~tb: color, ~lr: color) => property;
let borderColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderColorS: string => property;

let borderTopColor: [ | color | global ] => property;
let borderTopColor2: (~tb: color, ~lr: color) => property;
let borderTopColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderTopColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderTopColorS: string => property;

let borderRightColor: [ | color | global ] => property;
let borderRightColor2: (~tb: color, ~lr: color) => property;
let borderRightColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderRightColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderRightColorS: string => property;

let borderBottomColor: [ | color | global ] => property;
let borderBottomColor2: (~tb: color, ~lr: color) => property;
let borderBottomColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderBottomColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderBottomColorS: string => property;

let borderLeftColor: [ | color | global ] => property;
let borderLeftColor2: (~tb: color, ~lr: color) => property;
let borderLeftColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderLeftColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderLeftColorS: string => property;

let borderStyle: [ | lineStyle | global ] => property;
let borderStyle2: (~tb: lineStyle, ~lr: lineStyle) => property;
let borderStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => property;
let borderStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => property;
let borderStyleS: string => property;