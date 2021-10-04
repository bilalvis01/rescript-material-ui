external string: string => CssType.val = "%identity";
external number: float => CssType.val = "%identity";
external integer: int => CssType.val = "%identity";

/*
Textual data types
*/
let str: string => [> CssType.cssStr ];

/*
Numeric data types
*/
let num: float => [> CssType.cssNum ];
let int: int => [> CssType.cssInt ];
let pct: float => [> CssType.percentage ];
let ratio: (int, int) => [> CssType.ratio ];
let fr: float => [> CssType.flexUnit ];

/*
Quantities data types
*/
// length
let ch: float => [> CssType.ch ];
let em: float => [> CssType.em ];
let ex: float => [> CssType.ex ];
let rem: float => [> CssType.rem ];
let vh: float => [> CssType.vh ];
let vw: float => [> CssType.vw ];
let vmin: float => [> CssType.vmin ];
let vmax: float => [> CssType.vmax ];
let px: int => [> CssType.px ];
let cm: float => [> CssType.cm ];
let mm: float => [> CssType.mm ];
let inch: float => [> CssType.inch ];
let pc: float => [> CssType.pc ];
let pt: float => [> CssType.pt ];

// Angle
let deg: float => [> CssType.deg ];
let grad: float => [> CssType.grad ];
let rad: float => [> CssType.rad ];
let turn: float => [> CssType.turn ];

// Time
let s: float => [> CssType.s ];
let ms: float => [> CssType.ms ];

// Frequency
let hz: float => [> CssType.hz ];
let kHz: float => [> CssType.kHz ];

// Resolution
let dpi: float => [> CssType.dpi ];
let dpcm: float => [> CssType.dpcm ];
let dppx: float => [> CssType.dppx ];
let x: float => [> CssType.x ];

/*
Position
*/
let position2: (
  [ | #left | #center | #right | CssType.length_percentage ], 
  [ | #top | #center | #bottom | CssType.length_percentage ],
) => [> CssType.position2 ];
let position3: (
  [ | #center | #left | #right ], 
  [ | #top | #bottom | CssType.length_percentage ], 
  [ | #center | #top | #bottom | CssType.length_percentage ]
) => [> CssType.position3 ];
let position4: (
  [ | #left | #right ], 
  CssType.length_percentage, 
  [ | #top | #bottom ], 
  CssType.length_percentage
) => [> CssType.position4 ];

/*
Image data types
*/
let src: string => [> CssType.src ];

/*
Background layer
*/
let bgLayer: (
  ~color: CssType.col=?,
  ~position: CssType.position=?,
  ~size: CssType.bgSize=?,
  ~repeat: CssType.repeatStyle=?,
  ~attachment: CssType.attachment=?,
  ~origin: CssType.box=?,
  ~clip: CssType.box=?,
  [ | CssType.bgImage | CssType.col ]
) => 
  [> CssType.bgLayer ];
let bgSize2: (
  [ | #auto | CssType.length_percentage ], 
  [ | #auto | CssType.length_percentage ],
) => [> CssType.bgSize2 ];

/*
Color functions
*/
let hsl: (int, CssType.percentage, CssType.percentage) => 
  [> CssType.hsl ];
let hsla: (int, CssType.percentage, CssType.percentage, float) => 
  [> CssType.hsla ];
let rgb: (int, int, int) => 
  [> CssType.rgb ];
let rgba: (int, int, int, float) => 
  [> CssType.rgba ];
let hexColor: string => [> CssType.hexColor ];

/*
Image data types
*/
let url: string => [> CssType.url ];
let image: (
  ~dir: CssType.imageTags=?, 
  ~color: CssType.col=?, 
  [ | CssType.imageSrc | CssType.col ]
) => [> CssType.image ];
let linearColorStop2: (
  CssType.col, 
  CssType.length_percentage
) => [> CssType.linearColorStop2 ];
let linearColorStop3: (
  CssType.col, 
  CssType.length_percentage, 
  CssType.length_percentage
) => [> CssType.linearColorStop3 ];
let linearGradient: (
  ~angle: CssType.gradientLineAngle=?, 
  CssType.linearColorStop
) => [> CssType.linearGradient1 ];
let linearGradient2: (
  ~angle: CssType.gradientLineAngle=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop
) => [> CssType.linearGradient2 ];
let linearGradient3: (
  ~angle: CssType.gradientLineAngle=?,
  CssType.linearColorStop, 
  CssType.linearColorStop, 
  CssType.linearColorStop
) => [> CssType.linearGradient3 ];
let linearGradient4: (
  ~angle: CssType.gradientLineAngle=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop, 
  CssType.linearColorStop,
  CssType.linearColorStop
) => [> CssType.linearGradient4 ];
let repeatingLinearGradient: (
  ~angle: CssType.gradientLineAngle=?, 
  CssType.linearColorStop
) => [> CssType.repeatingLinearGradient1 ];
let repeatingLinearGradient2: (
  ~angle: CssType.gradientLineAngle=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop
) => [> CssType.repeatingLinearGradient2 ];
let repeatingLinearGradient3: (
  ~angle: CssType.gradientLineAngle=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop, 
  CssType.linearColorStop
) => [> CssType.repeatingLinearGradient3 ];
let repeatingLinearGradient4: (
  ~angle: CssType.gradientLineAngle=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop,
  CssType.linearColorStop, 
  CssType.linearColorStop,
) => [> CssType.repeatingLinearGradient4 ];
let radialGradient: (
  ~position: CssType.radialGradientPosition=?, 
  ~endingShape: CssType.radialGradientEndingShape=?, 
  ~size: CssType.radialGradientSize=?, 
  CssType.linearColorStop
) => [> CssType.radialGradient1 ];
let radialGradient2: (
  ~position: CssType.radialGradientPosition=?, 
  ~endingShape: CssType.radialGradientEndingShape=?, 
  ~size: CssType.radialGradientSize=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop,
) => [> CssType.radialGradient2 ];
let radialGradient3: (
  ~position: CssType.radialGradientPosition=?, 
  ~endingShape: CssType.radialGradientEndingShape=?, 
  ~size: CssType.radialGradientSize=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop, 
  CssType.linearColorStop,
) => [> CssType.radialGradient3 ];
let radialGradient4: (
  ~position: CssType.radialGradientPosition=?, 
  ~endingShape: CssType.radialGradientEndingShape=?, 
  ~size: CssType.radialGradientSize=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop, 
  CssType.linearColorStop, 
  CssType.linearColorStop,
) => [> CssType.radialGradient4 ];
let repeatingRadialGradient: (
  ~position: CssType.radialGradientPosition=?, 
  ~endingShape: CssType.radialGradientEndingShape=?, 
  ~size: CssType.radialGradientSize=?, 
  CssType.linearColorStop
) => [> CssType.repeatingRadialGradient1 ];
let repeatingRadialGradient2: (
  ~position: CssType.radialGradientPosition=?, 
  ~endingShape: CssType.radialGradientEndingShape=?, 
  ~size: CssType.radialGradientSize=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop,
) => [> CssType.repeatingRadialGradient2 ];
let repeatingRadialGradient3: (
  ~position: CssType.radialGradientPosition=?, 
  ~endingShape: CssType.radialGradientEndingShape=?, 
  ~size: CssType.radialGradientSize=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop, 
  CssType.linearColorStop,
) => [> CssType.repeatingRadialGradient3 ];
let repeatingRadialGradient4: (
  ~position: CssType.radialGradientPosition=?, 
  ~endingShape: CssType.radialGradientEndingShape=?, 
  ~size: CssType.radialGradientSize=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop, 
  CssType.linearColorStop, 
  CssType.linearColorStop,
) => [> CssType.repeatingRadialGradient4 ];
let conicGradient: (
  ~angle: CssType.gradientLineAngle=?, 
  ~position: CssType.position=?, 
  CssType.linearColorStop
) => [> CssType.conicGradient1 ];
let conicGradient2: (
  ~angle: CssType.gradientLineAngle=?, 
  ~position: CssType.position=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop,
) => [> CssType.conicGradient2 ];
let conicGradient3: (
  ~angle: CssType.gradientLineAngle=?, 
  ~position: CssType.position=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop, 
  CssType.linearColorStop,
) => [> CssType.conicGradient3 ];
let conicGradient4: (
  ~angle: CssType.gradientLineAngle=?, 
  ~position: CssType.position=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop, 
  CssType.linearColorStop, 
  CssType.linearColorStop,
) => [> CssType.conicGradient4 ];
let repeatingConicGradient: (
  ~angle: CssType.gradientLineAngle=?, 
  ~position: CssType.position=?, 
  CssType.linearColorStop
) => [> CssType.repeatingConicGradient ];
let repeatingConicGradient2: (
  ~angle: CssType.gradientLineAngle=?, 
  ~position: CssType.position=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop,
) => [> CssType.repeatingConicGradient2 ];
let repeatingConicGradient3: (
  ~angle: CssType.gradientLineAngle=?, 
  ~position: CssType.position=?, 
  CssType.linearColorStop,
  CssType.linearColorStop, 
  CssType.linearColorStop,
) => [> CssType.repeatingConicGradient3 ];
let repeatingConicGradient4: (
  ~angle: CssType.gradientLineAngle=?, 
  ~position: CssType.position=?, 
  CssType.linearColorStop, 
  CssType.linearColorStop, 
  CssType.linearColorStop, 
  CssType.linearColorStop,
) => [> CssType.repeatingConicGradient4 ];