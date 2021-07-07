open Type;

type synthetic<'a>;

module Basic: {
  // Number
  let num: float => [> #number(float) ];
  external number: float => synthetic<'a> = "%identity";

  // Integer
  let int: int => [> #int(int) ];
  external integer: int => synthetic<'a> = "%identity";

  // String
  let str: string => [> #string(string) ];
  external string: string => synthetic<'a> = "%identity";

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
  let rgb: (rgbValue, rgbValue, rgbValue) => [> #rgb(rgbValue, rgbValue, rgbValue) ];
  let rgba: (rgbValue, rgbValue, rgbValue, alpha) => [> #rgba(rgbValue, rgbValue, rgbValue, alpha) ];
  let rgbHex: string => [> #rgbHex(string) ];
}

module Combinator: {
  let many: array<'a> => [> #many(array<'a>) ];
  let stack: array<'a> => [> #stack(array<'a>) ];
  let join: ('a, 'a) => [> | #join('a, 'a) ];
  let concat: ('a, 'a) => [> | #concat('a, 'a) ];
};

module Border: {
  type tag;  
  type t = synthetic<tag>;
  let make: border => t;
  let make2: (border, border) => t;
  let make3: (border, border, border) => t;
};

external borderColorString: string => borderColor = "%identity";
let borderColor2: (borderColor, borderColor) => borderColor;
let borderColor3: (borderColor, borderColor, borderColor) => borderColor;
let borderColor4: (borderColor, borderColor, borderColor, borderColor) => borderColor;