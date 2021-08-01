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
Position
*/
let position2: ([ | #left | #center | #right | CssType.length_percentage ], [ | #top | #center | #bottom | CssType.length_percentage ]) =>
  [> #position2([ | #left | #center | #right | CssType.length_percentage ], [ | #top | #center | #bottom | CssType.length_percentage ]) ];
let position3: ([ | #center | #left | #right ], [ | #top | #bottom | CssType.length_percentage ], [ | #center | #top | #bottom | CssType.length_percentage ]) =>
  [> | #position3([ | #center | #left | #right ], [ | #top | #bottom | CssType.length_percentage ], [ | #center | #top | #bottom | CssType.length_percentage ]) ];
let position4: ([ | #left | #right ], CssType.length_percentage, [ | #top | #bottom ], CssType.length_percentage) =>
  [> | #position4([ | #left | #right ], CssType.length_percentage, [ | #top | #bottom ], CssType.length_percentage) ];

/*
Image data types
*/
let src: string => [> #src(string) ];

/*
Background layer
*/
let bgLayer: (
  ~color: CssType.color=?,
  ~position: CssType.position=?,
  ~size: CssType.bgSize=?,
  ~repeat: CssType.repeatStyle=?,
  ~attachment: CssType.attachment=?,
  ~origin: CssType.box=?,
  ~clip: CssType.box=?,
  [ | CssType.bgImage | CssType.color ]
) => 
  [> 
    | #bgLayer(
        option<CssType.color>, 
        option<CssType.position>, 
        option<CssType.bgSize>,
        option<CssType.repeatStyle>,
        option<CssType.attachment>,
        option<CssType.box>,
        option<CssType.box>,
        [ | CssType.bgImage | CssType.color  ]
      )
  ];
let bgSize2: ([ | #auto | CssType.length_percentage ], [ | #auto | CssType.length_percentage ]) =>
  [> #bgSize2([ | #auto | CssType.length_percentage ], [ | #auto | CssType.length_percentage ]) ];