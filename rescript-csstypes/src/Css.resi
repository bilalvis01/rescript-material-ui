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

let border: [ | global | lineStyle ] => property;
let border2: (~style: lineStyle, [ | lineWidth | color ]) => property;
let border3: (~width: lineWidth, ~style: lineStyle, ~color: color) => property;
let borderString: string => property;

let borderTop: [ | global | lineStyle ] => property;
let borderTop2: (~style: lineStyle, [ | lineWidth | color ]) => property;
let borderTop3: (~width: lineWidth, ~style: lineStyle, ~color: color) => property;
let borderTopString: string => property;

let borderLeft: [ | global | lineStyle ] => property;
let borderLeft2: (~style: lineStyle, [ | lineWidth | color ]) => property;
let borderLeft3: (~width: lineWidth, ~style: lineStyle, ~color: color) => property;
let borderLeftString: string => property;

let borderRight: [ | global | lineStyle ] => property;
let borderRight2: (~style: lineStyle, [ | lineWidth | color ]) => property;
let borderRight3: (~width: lineWidth, ~style: lineStyle, ~color: color) => property;
let borderRightString: string => property;

let borderBottom: [ | global | lineStyle ] => property;
let borderBottom2: (~style: lineStyle, [ | lineWidth | color ]) => property;
let borderBottom3: (~width: lineWidth, ~style: lineStyle, ~color: color) => property;
let borderBottomString: string => property;

let borderColor: [ | color | global ] => property;
let borderColor2: (~tb: color, ~lr: color) => property;
let borderColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderColorString: string => property;

let borderTopColor: [ | color | global ] => property;
let borderTopColor2: (~tb: color, ~lr: color) => property;
let borderTopColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderTopColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderTopColorString: string => property;

let borderRightColor: [ | color | global ] => property;
let borderRightColor2: (~tb: color, ~lr: color) => property;
let borderRightColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderRightColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderRightColorString: string => property;

let borderBottomColor: [ | color | global ] => property;
let borderBottomColor2: (~tb: color, ~lr: color) => property;
let borderBottomColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderBottomColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderBottomColorString: string => property;

let borderLeftColor: [ | color | global ] => property;
let borderLeftColor2: (~tb: color, ~lr: color) => property;
let borderLeftColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderLeftColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderLeftColorString: string => property;

let borderStyle: [ | lineStyle | global ] => property;
let borderStyle2: (~tb: lineStyle, ~lr: lineStyle) => property;
let borderStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => property;
let borderStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => property;
let borderStyleString: string => property;

let borderTopStyle: [ | lineStyle | global ] => property;
let borderTopStyle2: (~tb: lineStyle, ~lr: lineStyle) => property;
let borderTopStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => property;
let borderTopStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => property;
let borderTopStyleString: string => property;

let borderRightStyle: [ | lineStyle | global ] => property;
let borderRightStyle2: (~tb: lineStyle, ~lr: lineStyle) => property;
let borderRightStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => property;
let borderRightStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => property;
let borderRightStyleString: string => property;

let borderBottomStyle: [ | lineStyle | global ] => property;
let borderBottomStyle2: (~tb: lineStyle, ~lr: lineStyle) => property;
let borderBottomStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => property;
let borderBottomStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => property;
let borderBottomStyleString: string => property;

let borderLeftStyle: [ | lineStyle | global ] => property;
let borderLeftStyle2: (~tb: lineStyle, ~lr: lineStyle) => property;
let borderLeftStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => property;
let borderLeftStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => property;
let borderLeftStyleString: string => property;