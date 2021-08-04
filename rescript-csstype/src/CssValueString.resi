open CssValueType;

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
let string: cssString => string;

/*
Numeric data types
*/
let num: float => string;
let number: number => string;
let int: int => string;
let integer: integer => string;
let pct: float => string;
let percentage: percentage => string;
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
// Ratio
let dpi: float => string;
let dpcm: float => string;
let dppx: float => string;
let x: float => string;
let resolution: resolution => string;

/*
Combination of types
*/
let length_percentage: length_percentage => string;
let frequency_percentage: frequency_percentage => string;
let angle_percentage: angle_percentage => string;
let time_percentage: time_percentage => string;

// Line
let lineWidth: lineWidth => string;
let lineWidth_global: lineWidth_global => string;
external lineStyle: lineStyle => string = "%identity";
external lineStyle_global: lineStyle_global => string = "%identity"; 

// transform-origin
let transformOrigin: transformOrigin => string;

/*
Color data types
*/
let hue: hue => string;
let alpha: alpha => string;
let rgbParam: rgbParam => string;
let hsl: (hue, percentage, percentage) => string;
let hsla: (hue, percentage, percentage, alpha) => string;
let rgb: (rgbParam, rgbParam, rgbParam) => string;
let rgba: (rgbParam, rgbParam, rgbParam, alpha) => string;
let rgbX: string => string;
external colorKeyword: colorKeyword => string = "%identity"; 
let color: color => string;
let color_global: color_global => string;

/*
Image data types
*/
external gradientLineStartingPoint: gradientLineStartingPoint => string = "%identity";
let gradientLineAngle: gradientLineAngle => string;
let linearColorStop: linearColorStop => string;
let linearGradient: linearGradient => string;
let repeatingLinearGradient: repeatingLinearGradient => string;
let radialGradient: radialGradient => string;
let repeatingRadialGradient: repeatingRadialGradient => string;
let conicGradient: conicGradient => string;
let repeatingConicGradient: repeatingConicGradient => string;
let gradient: gradient => string;
external imageTags: imageTags => string = "%identity";
let url: url => string;
let imageSrc: imageSrc => string;
let image: image => string;
let bgImage: bgImage => string;
let bgSize: bgSize => string;
let position: position => string;
external repeatStyle: repeatStyle => string = "%identity";
external attachment: attachment => string = "%identity";
external box: box => string = "%identity";

/*
Background
*/
let background: (
  ~color: color=?,
  ~position: position=?,
  ~size: bgSize=?,
  ~repeat: repeatStyle=?,
  ~attachment: attachment=?,
  ~origin: box=?,
  ~clip: box=?,
  [ | bgImage | color ]
) => string;
let bgLayer: bgLayer => string;

/*
Spacing
*/
let margin: margin => string;
let margin_global: margin_global => string;
let padding: padding => string;
let padding_global: padding_global => string;

external clear_global: clear_global => string = "%identity";

external cursorKeyword: cursorKeyword => string = "%identity";
external cursorKeyword_global: cursorKeyword_global => string = "%identity";
let cursorImage: cursorImage => string;
