open CssType;

@unboxed
type rec box_propertyValue =
  | PropertyValue(CssPropertyValue.synthetic<'a>): box_propertyValue;

type property = (string, box_propertyValue);

// Number
let num: float => [> #number(float) ];

// Integer
let int: int => [> #int(int) ];

// String
let str: string => [> #string(string) ];
// external string: string => synthetic<'a> = "%identity";

// Length
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

// Percentage
let pct: float => [> #pct(float) ];

// Angle
let deg: float => [> #deg(float) ];
let grad: float => [> #grad(float)];
let rad: float => [> #rad(float) ];
let turn: float => [> #turn(float) ];

// Color
let hsl: (hue, percentage, percentage) => [> #hsl(hue, percentage, percentage) ];
let hsla: (hue, percentage, percentage, alpha) => [> #hsla(hue, percentage, percentage, alpha) ];
let rgb: (rgbParam, rgbParam, rgbParam) => [> #rgb(rgbParam, rgbParam, rgbParam) ];
let rgba: (rgbParam, rgbParam, rgbParam, alpha) => [> #rgba(rgbParam, rgbParam, rgbParam, alpha) ];
let rgbHex: string => [> #rgbHex(string) ];

let makeProperty: (string, CssPropertyValue.synthetic<'a>) => property;

let border: border => property;
let border2: (border, border) => property;
let border3: (border, border, border) => property;