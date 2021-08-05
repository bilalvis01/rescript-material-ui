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
let global: global => string;
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
let lineStyle: lineStyle => string;
let lineStyle_global: lineStyle_global => string; 

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
let colorKeyword: colorKeyword => string; 
let color: color => string;
let color_global: color_global => string;

/*
Image data types
*/
let gradientLineStartingPoint: gradientLineStartingPoint => string;
let gradientLineAngle: gradientLineAngle => string;
let linearColorStop: linearColorStop => string;
let linearGradient: linearGradient => string;
let repeatingLinearGradient: repeatingLinearGradient => string;
let radialGradient: radialGradient => string;
let repeatingRadialGradient: repeatingRadialGradient => string;
let conicGradient: conicGradient => string;
let repeatingConicGradient: repeatingConicGradient => string;
let gradient: gradient => string;
let imageTags: imageTags => string;
let url: url => string;
let imageSrc: imageSrc => string;
let image: image => string;
let bgImage: bgImage => string;
let bgSize: bgSize => string;
let position: position => string;
let repeatStyle: repeatStyle => string;
let attachment: attachment => string;
let box: box => string;

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

let clear: clear => string;
let clear_global: clear_global => string;

let cursorKeyword: cursorKeyword => string;
let cursorKeyword_global: cursorKeyword_global => string;
let cursorImage: cursorImage => string;
