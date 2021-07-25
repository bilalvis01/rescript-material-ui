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
Image data types
*/
let linearColorStop2: (color, length_percentage) => [> #linearColorStop2(color, length_percentage) ];
let linearColorStop3: (color, length_percentage, length_percentage) =>
  [> #linearColorStop3(color, length_percentage, length_percentage) ];
let linearGradient: (~dir: gradientLineDirection=?, linearColorStop) =>
  [> #linearGradient(option<gradientLineDirection>, linearColorStop) ];
let linearGradient2: (~dir: gradientLineDirection=?, linearColorStop, linearColorStop) =>
  [> #linearGradient2(option<gradientLineDirection>, linearColorStop, linearColorStop) ];
let linearGradient3: (~dir: gradientLineDirection=?, linearColorStop, linearColorStop, linearColorStop) =>
  [> #linearGradient3(option<gradientLineDirection>, linearColorStop, linearColorStop, linearColorStop) ];
let linearGradient4: (~dir: gradientLineDirection=?, linearColorStop, linearColorStop, linearColorStop, linearColorStop) =>
  [> #linearGradient4(option<gradientLineDirection>, linearColorStop, linearColorStop, linearColorStop, linearColorStop) ];

/*
Properties
*/
@unboxed
type rec box_propertyValue =
  | PropertyValue(CssPropertyValue.synthetic<'a>): box_propertyValue;

type property = (string, box_propertyValue);

let property: (string, CssPropertyValue.synthetic<'a>) => property;
let propertyString: (string, string) => property;
let propertyNumber: (string, float) => property;
let propertyInteger: (string, int) => property; 

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

let borderWidth: [ | lineWidth | global ] => property;
let borderWidth2: (~tb: lineWidth, ~lr: lineWidth) => property;
let borderWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => property;
let borderWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => property;
let borderWidthString: string => property;

let borderTopWidth: [ | lineWidth | global ] => property;
let borderTopWidth2: (~tb: lineWidth, ~lr: lineWidth) => property;
let borderTopWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => property;
let borderTopWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => property;
let borderTopWidthString: string => property;

let borderRightWidth: [ | lineWidth | global ] => property;
let borderRightWidth2: (~tb: lineWidth, ~lr: lineWidth) => property;
let borderRightWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => property;
let borderRightWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => property;
let borderRightWidthString: string => property;

let borderBottomWidth: [ | lineWidth | global ] => property;
let borderBottomWidth2: (~tb: lineWidth, ~lr: lineWidth) => property;
let borderBottomWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => property;
let borderBottomWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => property;
let borderBottomWidthString: string => property;

let borderLeftWidth: [ | lineWidth | global ] => property;
let borderLeftWidth2: (~tb: lineWidth, ~lr: lineWidth) => property;
let borderLeftWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => property;
let borderLeftWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => property;
let borderLeftWidthString: string => property;