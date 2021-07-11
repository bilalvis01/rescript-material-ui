open CssType;

/* 
Combinator
*/
let concat: (concat<'a>, 'a => string) => string;
let join: (join<'a>, 'a => string) => string;
let stick: (stick<'a>, 'a => string) => string;
let concatMany: (concatMany<'a>, 'a => string) => string;
let joinMany: (joinMany<'a>, 'a => string) => string;
let stickMany: (stickMany<'a>, 'a => string) => string;

/*
Textual data types
*/
external global: global => string = "%identity";
let string: string_ => string;
let scalar: scalar => string;

/*
Numeric data types
*/
let num: float => string;
let number: number => string;
let int: int => string;
let integer: integer => string;
let pct: float => string;
let percentage: percentage => string;
let r: (int, int) => string;
let ratio: ratio => string;
let fr: float => string;
let flexUnit: flexUnit => string;


/*
Quantities
*/
// Length
let ch: float => string;
let em: float => string;
let ex: float => string;
let rem: float => string;
let vh: float => string;
let vw: float => string;
let vmin: float => string;
let vmax: float => string;
let px: float => string;
let cm: float => string;
let mm: float => string;
let inch: float => string;
let pc: float => string;
let pt: float => string;
let length: length => string;
// Time
let s: float => string;
let ms: float => string;
let time: time => string;
// Angle
let deg: float => string;
let grad: float => string;
let rad: float => string;
let turn: float => string;
let angle: angle => string;
// Frequency
let hz: float => string;
let kHz: float => string;
let frequency: frequency => string;

/*
Combination of types
*/
let lengthPercentage: lengthPercentage => string;
let frequencyPercentage: frequencyPercentage => string;
let anglePercentage: anglePercentage => string;
let timePercentage: timePercentage => string;
/*
Color
*/
let hue: hue => string;
let alpha: alpha => string;
let rgbParam: rgbParam => string;
let hsl: (hue, percentage, percentage) => string;
let hsla: (hue, percentage, percentage, alpha) => string;
let rgb: (rgbParam, rgbParam, rgbParam) => string;
let rgba: (rgbParam, rgbParam, rgbParam, alpha) => string;
let rgbHex: string => string;
external colorKeyword: colorKeyword => string = "%identity"; 
let color: color => string;

// Line
let lineWidth: lineWidth => string;
external lineStyle: lineStyle => string = "%identity";

// Border
let border: border => string;
let borderColor: borderColor => string;