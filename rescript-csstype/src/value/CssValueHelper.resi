/*
Textual data types
*/
let str: string => [> CssValueType.cssStr ];

/*
Numeric data types
*/
let num: float => [> CssValueType.cssNum ];
let int: int => [> CssValueType.cssInt ];
let pct: float => [> CssValueType.percentage ];
let ratio: (int, int) => [> CssValueType.ratio ];
let fr: float => [> CssValueType.flexUnit ];

/*
Quantities data types
*/
// length
let ch: float => [> CssValueType.ch ];
let em: float => [> CssValueType.em ];
let ex: float => [> CssValueType.ex ];
let rem: float => [> CssValueType.rem ];
let vh: float => [> CssValueType.vh ];
let vw: float => [> CssValueType.vw ];
let vmin: float => [> CssValueType.vmin ];
let vmax: float => [> CssValueType.vmax ];
let px: int => [> CssValueType.px ];
let cm: float => [> CssValueType.cm ];
let mm: float => [> CssValueType.mm ];
let inch: float => [> CssValueType.inch ];
let pc: float => [> CssValueType.pc ];
let pt: float => [> CssValueType.pt ];

// Angle
let deg: float => [> CssValueType.deg ];
let grad: float => [> CssValueType.grad ];
let rad: float => [> CssValueType.rad ];
let turn: float => [> CssValueType.turn ];

// Time
let s: float => [> CssValueType.s ];
let ms: float => [> CssValueType.ms ];

// Frequency
let hz: float => [> CssValueType.hz ];
let kHz: float => [> CssValueType.kHz ];

// Resolution
let dpi: float => [> CssValueType.dpi ];
let dpcm: float => [> CssValueType.dpcm ];
let dppx: float => [> CssValueType.dppx ];
let x: float => [> CssValueType.x ];

/*
Position
*/
let position2: (
  [ | #left | #center | #right | CssValueType.length_percentage ], 
  [ | #top | #center | #bottom | CssValueType.length_percentage ],
) => [> CssValueType.position2 ];
let position3: (
  [ | #center | #left | #right ], 
  [ | #top | #bottom | CssValueType.length_percentage ], 
  [ | #center | #top | #bottom | CssValueType.length_percentage ]
) => [> CssValueType.position3 ];
let position4: (
  [ | #left | #right ], 
  CssValueType.length_percentage, 
  [ | #top | #bottom ], 
  CssValueType.length_percentage
) => [> CssValueType.position4 ];

/*
Image data types
*/
let src: string => [> CssValueType.src ];

/*
Background layer
*/
let bgLayer: (
  ~color: CssValueType.color=?,
  ~position: CssValueType.position=?,
  ~size: CssValueType.bgSize=?,
  ~repeat: CssValueType.repeatStyle=?,
  ~attachment: CssValueType.attachment=?,
  ~origin: CssValueType.box=?,
  ~clip: CssValueType.box=?,
  [ | CssValueType.bgImage | CssValueType.color ]
) => 
  [> CssValueType.bgLayer ];
let bgSize2: (
  [ | #auto | CssValueType.length_percentage ], 
  [ | #auto | CssValueType.length_percentage ],
) => [> CssValueType.bgSize2 ];

/*
Color functions
*/
let hsl: (int, CssValueType.percentage, CssValueType.percentage) => 
  [> CssValueType.hsl ];
let hsla: (int, CssValueType.percentage, CssValueType.percentage, float) => 
  [> CssValueType.hsla ];
let rgb: (int, int, int) => 
  [> CssValueType.rgb ];
let rgba: (int, int, int, float) => 
  [> CssValueType.rgba ];
let hexColor: string => [> CssValueType.hexColor ];

/*
Image data types
*/
let url: string => [> CssValueType.url ];
let image: (
  ~dir: CssValueType.imageTags=?, 
  ~color: CssValueType.color=?, 
  [ | CssValueType.imageSrc | CssValueType.color ]
) => [> CssValueType.image ];
let linearColorStop2: (
  CssValueType.color, 
  CssValueType.length_percentage
) => [> CssValueType.linearColorStop2 ];
let linearColorStop3: (
  CssValueType.color, 
  CssValueType.length_percentage, 
  CssValueType.length_percentage
) => [> CssValueType.linearColorStop3 ];
let linearGradient: (
  ~angle: CssValueType.gradientLineAngle=?, 
  CssValueType.linearColorStop
) => [> CssValueType.linearGradient1 ];
let linearGradient2: (
  ~angle: CssValueType.gradientLineAngle=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop
) => [> CssValueType.linearGradient2 ];
let linearGradient3: (
  ~angle: CssValueType.gradientLineAngle=?,
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop
) => [> CssValueType.linearGradient3 ];
let linearGradient4: (
  ~angle: CssValueType.gradientLineAngle=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
  CssValueType.linearColorStop
) => [> CssValueType.linearGradient4 ];
let repeatingLinearGradient: (
  ~angle: CssValueType.gradientLineAngle=?, 
  CssValueType.linearColorStop
) => [> CssValueType.repeatingLinearGradient1 ];
let repeatingLinearGradient2: (
  ~angle: CssValueType.gradientLineAngle=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop
) => [> CssValueType.repeatingLinearGradient2 ];
let repeatingLinearGradient3: (
  ~angle: CssValueType.gradientLineAngle=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop
) => [> CssValueType.repeatingLinearGradient3 ];
let repeatingLinearGradient4: (
  ~angle: CssValueType.gradientLineAngle=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
) => [> CssValueType.repeatingLinearGradient4 ];
let radialGradient: (
  ~position: CssValueType.radialGradientPosition=?, 
  ~endingShape: CssValueType.radialGradientEndingShape=?, 
  ~size: CssValueType.radialGradientSize=?, 
  CssValueType.linearColorStop
) => [> CssValueType.radialGradient1 ];
let radialGradient2: (
  ~position: CssValueType.radialGradientPosition=?, 
  ~endingShape: CssValueType.radialGradientEndingShape=?, 
  ~size: CssValueType.radialGradientSize=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
) => [> CssValueType.radialGradient2 ];
let radialGradient3: (
  ~position: CssValueType.radialGradientPosition=?, 
  ~endingShape: CssValueType.radialGradientEndingShape=?, 
  ~size: CssValueType.radialGradientSize=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
) => [> CssValueType.radialGradient3 ];
let radialGradient4: (
  ~position: CssValueType.radialGradientPosition=?, 
  ~endingShape: CssValueType.radialGradientEndingShape=?, 
  ~size: CssValueType.radialGradientSize=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
) => [> CssValueType.radialGradient4 ];
let repeatingRadialGradient: (
  ~position: CssValueType.radialGradientPosition=?, 
  ~endingShape: CssValueType.radialGradientEndingShape=?, 
  ~size: CssValueType.radialGradientSize=?, 
  CssValueType.linearColorStop
) => [> CssValueType.repeatingRadialGradient1 ];
let repeatingRadialGradient2: (
  ~position: CssValueType.radialGradientPosition=?, 
  ~endingShape: CssValueType.radialGradientEndingShape=?, 
  ~size: CssValueType.radialGradientSize=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
) => [> CssValueType.repeatingRadialGradient2 ];
let repeatingRadialGradient3: (
  ~position: CssValueType.radialGradientPosition=?, 
  ~endingShape: CssValueType.radialGradientEndingShape=?, 
  ~size: CssValueType.radialGradientSize=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
) => [> CssValueType.repeatingRadialGradient3 ];
let repeatingRadialGradient4: (
  ~position: CssValueType.radialGradientPosition=?, 
  ~endingShape: CssValueType.radialGradientEndingShape=?, 
  ~size: CssValueType.radialGradientSize=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
) => [> CssValueType.repeatingRadialGradient4 ];
let conicGradient: (
  ~angle: CssValueType.gradientLineAngle=?, 
  ~position: CssValueType.position=?, 
  CssValueType.linearColorStop
) => [> CssValueType.conicGradient1 ];
let conicGradient2: (
  ~angle: CssValueType.gradientLineAngle=?, 
  ~position: CssValueType.position=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
) => [> CssValueType.conicGradient2 ];
let conicGradient3: (
  ~angle: CssValueType.gradientLineAngle=?, 
  ~position: CssValueType.position=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
) => [> CssValueType.conicGradient3 ];
let conicGradient4: (
  ~angle: CssValueType.gradientLineAngle=?, 
  ~position: CssValueType.position=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
) => [> CssValueType.conicGradient4 ];
let repeatingConicGradient: (
  ~angle: CssValueType.gradientLineAngle=?, 
  ~position: CssValueType.position=?, 
  CssValueType.linearColorStop
) => [> CssValueType.repeatingConicGradient ];
let repeatingConicGradient2: (
  ~angle: CssValueType.gradientLineAngle=?, 
  ~position: CssValueType.position=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
) => [> CssValueType.repeatingConicGradient2 ];
let repeatingConicGradient3: (
  ~angle: CssValueType.gradientLineAngle=?, 
  ~position: CssValueType.position=?, 
  CssValueType.linearColorStop,
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
) => [> CssValueType.repeatingConicGradient3 ];
let repeatingConicGradient4: (
  ~angle: CssValueType.gradientLineAngle=?, 
  ~position: CssValueType.position=?, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop, 
  CssValueType.linearColorStop,
) => [> CssValueType.repeatingConicGradient4 ];