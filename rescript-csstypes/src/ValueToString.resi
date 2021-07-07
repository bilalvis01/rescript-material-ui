open Type;

// Global
external global: global => string = "%identity";

// Scalar
external num: float => string = "%identity";
let number: number => string;
external intg: int => string = "%identity";
let integer: integer => string;
let string: string_ => string;
let scalar: scalar => string;

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

// Percentage
let pct: float => string;
let percentage: percentage => string;

// Angle
let deg: float => string;
let grad: float => string;
let rad: float => string;
let turn: float => string;
let angle: angle => string;

// Color
let hue: hue => string;
let alpha: alpha => string;
let rgbValue: rgbValue => string;
let hsl: (hue, percentage, percentage) => string;
let hsla: (hue, percentage, percentage, alpha) => string;
let rgb: (rgbValue, rgbValue, rgbValue) => string;
let rgba: (rgbValue, rgbValue, rgbValue, alpha) => string;
let rgbHex: string => string;
external colorKeyword: colorKeyword => string = "%identity"; 
let color: color => string;

// Comma and Space separated value
let comma: (comma, 'a => string) => string;
let space: (space, 'a => string) => string;

// Line
let lineWidth: lineWidth => string;
external lineStyle: lineStyle => string = "%identity";

// Border
let border: border => string;
let borderColor: borderColor => string;