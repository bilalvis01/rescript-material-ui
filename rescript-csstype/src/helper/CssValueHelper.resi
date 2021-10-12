external string: string => CssType.val = "%identity";
external number: float => CssType.val = "%identity";
external integer: int => CssType.val = "%identity";

/*
Textual data types
*/
let str: string => [> CssType.Data.cssStr ];

/*
Numeric data types
*/
let num: float => [> CssType.Data.cssNum ];
let int: int => [> CssType.Data.cssInt ];
let pct: float => [> CssType.Data.percentage ];
let ratio: (int, int) => [> CssType.Data.ratio ];
let fr: float => [> CssType.Data.flexUnit ];

/*
Quantities data types
*/
// length
let ch: float => [> CssType.Data.ch ];
let em: float => [> CssType.Data.em ];
let ex: float => [> CssType.Data.ex ];
let rem: float => [> CssType.Data.rem ];
let vh: float => [> CssType.Data.vh ];
let vw: float => [> CssType.Data.vw ];
let vmin: float => [> CssType.Data.vmin ];
let vmax: float => [> CssType.Data.vmax ];
let px: int => [> CssType.Data.px ];
let cm: float => [> CssType.Data.cm ];
let mm: float => [> CssType.Data.mm ];
let inch: float => [> CssType.Data.inch ];
let pc: float => [> CssType.Data.pc ];
let pt: float => [> CssType.Data.pt ];

// Angle
let deg: float => [> CssType.Data.deg ];
let grad: float => [> CssType.Data.grad ];
let rad: float => [> CssType.Data.rad ];
let turn: float => [> CssType.Data.turn ];

// Time
let s: float => [> CssType.Data.s ];
let ms: float => [> CssType.Data.ms ];

// Frequency
let hz: float => [> CssType.Data.hz ];
let kHz: float => [> CssType.Data.kHz ];

// Resolution
let dpi: float => [> CssType.Data.dpi ];
let dpcm: float => [> CssType.Data.dpcm ];
let dppx: float => [> CssType.Data.dppx ];
let x: float => [> CssType.Data.x ];

/*
Position
*/
let position2: (
  [ | #left | #center | #right | CssType.Data.length_percentage ], 
  [ | #top | #center | #bottom | CssType.Data.length_percentage ],
) => [> CssType.Data.position2 ];
let position3: (
  [ | #center | #left | #right ], 
  [ | #top | #bottom | CssType.Data.length_percentage ], 
  [ | #center | #top | #bottom | CssType.Data.length_percentage ]
) => [> CssType.Data.position3 ];
let position4: (
  [ | #left | #right ], 
  CssType.Data.length_percentage, 
  [ | #top | #bottom ], 
  CssType.Data.length_percentage
) => [> CssType.Data.position4 ];

/*
Image data types
*/
let src: string => [> CssType.Data.src ];

/*
Background layer
*/
let bgLayer: (
  ~color: CssType.Data.color=?,
  ~position: CssType.Data.position=?,
  ~size: CssType.Data.bgSize=?,
  ~repeat: CssType.Data.repeatStyle=?,
  ~attachment: CssType.Data.attachment=?,
  ~origin: CssType.Data.box=?,
  ~clip: CssType.Data.box=?,
  [ | CssType.Data.bgImage | CssType.Data.color ]
) => 
  [> CssType.Data.bgLayer ];
let bgSize2: (
  [ | #auto | CssType.Data.length_percentage ], 
  [ | #auto | CssType.Data.length_percentage ],
) => [> CssType.Data.bgSize2 ];

/*
Color functions
*/
let hsl: (int, CssType.Data.percentage, CssType.Data.percentage) => 
  [> CssType.Data.hsl ];
let hsla: (int, CssType.Data.percentage, CssType.Data.percentage, float) => 
  [> CssType.Data.hsla ];
let rgb: (int, int, int) => 
  [> CssType.Data.rgb ];
let rgba: (int, int, int, float) => 
  [> CssType.Data.rgba ];
let hexColor: string => [> CssType.Data.hexColor ];

/*
Image data types
*/
let url: string => [> CssType.Data.url ];
let image: (
  ~dir: CssType.Data.imageTags=?, 
  ~color: CssType.Data.color=?, 
  [ | CssType.Data.imageSrc | CssType.Data.color ]
) => [> CssType.Data.image ];
let linearColorStop2: (
  CssType.Data.color, 
  CssType.Data.length_percentage
) => [> CssType.Data.linearColorStop2 ];
let linearColorStop3: (
  CssType.Data.color, 
  CssType.Data.length_percentage, 
  CssType.Data.length_percentage
) => [> CssType.Data.linearColorStop3 ];
let linearGradient: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  CssType.Data.linearColorStop
) => [> CssType.Data.linearGradient1 ];
let linearGradient2: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop
) => [> CssType.Data.linearGradient2 ];
let linearGradient3: (
  ~angle: CssType.Data.gradientLineAngle=?,
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop
) => [> CssType.Data.linearGradient3 ];
let linearGradient4: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
  CssType.Data.linearColorStop
) => [> CssType.Data.linearGradient4 ];
let repeatingLinearGradient: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  CssType.Data.linearColorStop
) => [> CssType.Data.repeatingLinearGradient1 ];
let repeatingLinearGradient2: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop
) => [> CssType.Data.repeatingLinearGradient2 ];
let repeatingLinearGradient3: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop
) => [> CssType.Data.repeatingLinearGradient3 ];
let repeatingLinearGradient4: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
) => [> CssType.Data.repeatingLinearGradient4 ];
let radialGradient: (
  ~position: CssType.Data.radialGradientPosition=?, 
  ~endingShape: CssType.Data.radialGradientEndingShape=?, 
  ~size: CssType.Data.radialGradientSize=?, 
  CssType.Data.linearColorStop
) => [> CssType.Data.radialGradient1 ];
let radialGradient2: (
  ~position: CssType.Data.radialGradientPosition=?, 
  ~endingShape: CssType.Data.radialGradientEndingShape=?, 
  ~size: CssType.Data.radialGradientSize=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
) => [> CssType.Data.radialGradient2 ];
let radialGradient3: (
  ~position: CssType.Data.radialGradientPosition=?, 
  ~endingShape: CssType.Data.radialGradientEndingShape=?, 
  ~size: CssType.Data.radialGradientSize=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
) => [> CssType.Data.radialGradient3 ];
let radialGradient4: (
  ~position: CssType.Data.radialGradientPosition=?, 
  ~endingShape: CssType.Data.radialGradientEndingShape=?, 
  ~size: CssType.Data.radialGradientSize=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
) => [> CssType.Data.radialGradient4 ];
let repeatingRadialGradient: (
  ~position: CssType.Data.radialGradientPosition=?, 
  ~endingShape: CssType.Data.radialGradientEndingShape=?, 
  ~size: CssType.Data.radialGradientSize=?, 
  CssType.Data.linearColorStop
) => [> CssType.Data.repeatingRadialGradient1 ];
let repeatingRadialGradient2: (
  ~position: CssType.Data.radialGradientPosition=?, 
  ~endingShape: CssType.Data.radialGradientEndingShape=?, 
  ~size: CssType.Data.radialGradientSize=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
) => [> CssType.Data.repeatingRadialGradient2 ];
let repeatingRadialGradient3: (
  ~position: CssType.Data.radialGradientPosition=?, 
  ~endingShape: CssType.Data.radialGradientEndingShape=?, 
  ~size: CssType.Data.radialGradientSize=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
) => [> CssType.Data.repeatingRadialGradient3 ];
let repeatingRadialGradient4: (
  ~position: CssType.Data.radialGradientPosition=?, 
  ~endingShape: CssType.Data.radialGradientEndingShape=?, 
  ~size: CssType.Data.radialGradientSize=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
) => [> CssType.Data.repeatingRadialGradient4 ];
let conicGradient: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  ~position: CssType.Data.position=?, 
  CssType.Data.linearColorStop
) => [> CssType.Data.conicGradient1 ];
let conicGradient2: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  ~position: CssType.Data.position=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
) => [> CssType.Data.conicGradient2 ];
let conicGradient3: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  ~position: CssType.Data.position=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
) => [> CssType.Data.conicGradient3 ];
let conicGradient4: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  ~position: CssType.Data.position=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
) => [> CssType.Data.conicGradient4 ];
let repeatingConicGradient: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  ~position: CssType.Data.position=?, 
  CssType.Data.linearColorStop
) => [> CssType.Data.repeatingConicGradient ];
let repeatingConicGradient2: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  ~position: CssType.Data.position=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
) => [> CssType.Data.repeatingConicGradient2 ];
let repeatingConicGradient3: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  ~position: CssType.Data.position=?, 
  CssType.Data.linearColorStop,
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
) => [> CssType.Data.repeatingConicGradient3 ];
let repeatingConicGradient4: (
  ~angle: CssType.Data.gradientLineAngle=?, 
  ~position: CssType.Data.position=?, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop, 
  CssType.Data.linearColorStop,
) => [> CssType.Data.repeatingConicGradient4 ];