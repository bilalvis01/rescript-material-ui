open CssType;

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

// TransformOrigin
let transformOrigin2: (
  ~length: length=?,
  [ | length_percentage | #left | #center | #right ], 
  [ | length_percentage | #top | #center | #bottom ],
) => [> #transformOrigin2([ | length_percentage | #left | #center | #right ], [ | length_percentage | #top | #center | #bottom ], option<length>) ];

/*
Color functions
*/
let hsl: (float, percentage, percentage) => [> #hsl(hue, percentage, percentage) ];
let hsla: (float, percentage, percentage, float) => [> #hsla(hue, percentage, percentage, alpha) ];
let rgb: (float, float, float) => [> #rgb(rgbParam, rgbParam, rgbParam) ];
let rgba: (float, float, float, float) => [> #rgba(rgbParam, rgbParam, rgbParam, alpha) ];
let rgbX: string => [> #rgbX(string) ];

/*
Image data types
*/
let linearColorStop2: (color, length_percentage) => [> #linearColorStop2(color, length_percentage) ];
let linearColorStop3: (color, length_percentage, length_percentage) =>
  [> #linearColorStop3(color, length_percentage, length_percentage) ];
let linearGradient: (~angle: gradientLineAngle=?, linearColorStop) =>
  [> #linearGradient(option<gradientLineAngle>, linearColorStop) ];
let linearGradient2: (~angle: gradientLineAngle=?, linearColorStop, linearColorStop) =>
  [> #linearGradient2(option<gradientLineAngle>, linearColorStop, linearColorStop) ];
let linearGradient3: (~angle: gradientLineAngle=?, linearColorStop, linearColorStop, linearColorStop) =>
  [> #linearGradient3(option<gradientLineAngle>, linearColorStop, linearColorStop, linearColorStop) ];
let linearGradient4: (~angle: gradientLineAngle=?, linearColorStop, linearColorStop, linearColorStop, linearColorStop) =>
  [> #linearGradient4(option<gradientLineAngle>, linearColorStop, linearColorStop, linearColorStop, linearColorStop) ];
let repeatingLinearGradient: (~angle: gradientLineAngle=?, linearColorStop) =>
  [> #repeatingLinearGradient(option<gradientLineAngle>, linearColorStop) ];
let repeatingLinearGradient2: (~angle: gradientLineAngle=?, linearColorStop, linearColorStop) =>
  [> #repeatingLinearGradient2(option<gradientLineAngle>, linearColorStop, linearColorStop) ];
let repeatingLinearGradient3: (~angle: gradientLineAngle=?, linearColorStop, linearColorStop, linearColorStop) =>
  [> #repeatingLinearGradient3(option<gradientLineAngle>, linearColorStop, linearColorStop, linearColorStop) ];
let repeatingLinearGradient4: (~angle: gradientLineAngle=?, linearColorStop, linearColorStop, linearColorStop, linearColorStop) =>
  [> #repeatingLinearGradient4(option<gradientLineAngle>, linearColorStop, linearColorStop, linearColorStop, linearColorStop) ];
let radialGradient: (~position: radialGradientPosition=?, ~endingShape: radialGradientEndingShape=?, ~size: radialGradientSize=?, linearColorStop) =>
  [> | #radialGradient(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop) ];
let radialGradient2: (~position: radialGradientPosition=?, ~endingShape: radialGradientEndingShape=?, ~size: radialGradientSize=?, linearColorStop, linearColorStop) =>
  [> | #radialGradient2(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop) ];
let radialGradient3: (~position: radialGradientPosition=?, ~endingShape: radialGradientEndingShape=?, ~size: radialGradientSize=?, linearColorStop, linearColorStop, linearColorStop) =>
  [> | #radialGradient3(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop, linearColorStop) ];
let radialGradient4: (~position: radialGradientPosition=?, ~endingShape: radialGradientEndingShape=?, ~size: radialGradientSize=?, linearColorStop, linearColorStop, linearColorStop, linearColorStop) =>
  [> | #radialGradient4(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop, linearColorStop, linearColorStop) ];
let url: string => [> #url(string) ];
let src: string => [> #src(string) ];
let image: (~dir: imageTags=?, ~color: color=?, [ | imageSrc | color ]) => 
  [> #image(option<imageTags>, option<color>, [ | imageSrc | color ]) ];
let bgSize2: ([ | #auto | length_percentage ], [ | #auto | length_percentage ]) =>
  [> #bgSize2([ | #auto | length_percentage ], [ | #auto | length_percentage ]) ];
let position2: ([ | #left | #center | #right | length_percentage ], [ | #top | #center | #bottom | length_percentage ]) =>
  [> #position2([ | #left | #center | #right | length_percentage ], [ | #top | #center | #bottom | length_percentage ]) ];
let position3: ([ | #center | #left | #right ], [ | #top | #bottom | length_percentage ], [ | #center | #top | #bottom | length_percentage ]) =>
  [> | #position3([ | #center | #left | #right ], [ | #top | #bottom | length_percentage ], [ | #center | #top | #bottom | length_percentage ]) ];
let position4: ([ | #left | #right ], length_percentage, [ | #top | #bottom ], length_percentage) =>
  [> | #position4([ | #left | #right ], length_percentage, [ | #top | #bottom ], length_percentage) ];


/*
Background layer
*/
let bgLayer: (
  ~color: color=?,
  ~position: position=?,
  ~size: bgSize=?,
  ~repeat: repeatStyle=?,
  ~attachment: attachment=?,
  ~origin: box=?,
  ~clip: box=?,
  [ | bgImage | color ]
) => 
  [> 
    | #bgLayer(
        option<color>, 
        option<position>, 
        option<bgSize>,
        option<repeatStyle>,
        option<attachment>,
        option<box>,
        option<box>,
        [ | bgImage | color  ]
      )
  ];

/*
Properties
*/
@unboxed
type rec box_propertyValue =
  | PropertyValue(CssPropertyValue.synthetic<'a>): box_propertyValue;

type property = (string, box_propertyValue);

let property: (string, CssPropertyValue.synthetic<'a>) => property;
let propertyString: (string, string) => property;
let propertyNumber: (string, float) => property;
let propertyInteger: (string, int) => property; 

let border: (~width: lineWidth=?, ~color: color=?, [ | global | lineStyle ]) => property;
let borderString: string => property;

let borderTop: (~width: lineWidth=?, ~color: color=?, [ | global | lineStyle ]) => property;
let borderTopString: string => property;

let borderLeft: (~width: lineWidth=?, ~color: color=?, [ | global | lineStyle ]) => property;
let borderLeftString: string => property;

let borderRight: (~width: lineWidth=?, ~color: color=?, [ | global | lineStyle ]) => property;
let borderRightString: string => property;

let borderBottom: (~width: lineWidth=?, ~color: color=?, [ | global | lineStyle ]) => property;
let borderBottomString: string => property;

let borderColor: [ | color | global ] => property;
let borderColor2: (~tb: color, ~lr: color) => property;
let borderColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderColorString: string => property;

let borderTopColor: [ | color | global ] => property;
let borderTopColor2: (~tb: color, ~lr: color) => property;
let borderTopColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderTopColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderTopColorString: string => property;

let borderRightColor: [ | color | global ] => property;
let borderRightColor2: (~tb: color, ~lr: color) => property;
let borderRightColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderRightColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderRightColorString: string => property;

let borderBottomColor: [ | color | global ] => property;
let borderBottomColor2: (~tb: color, ~lr: color) => property;
let borderBottomColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderBottomColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderBottomColorString: string => property;

let borderLeftColor: [ | color | global ] => property;
let borderLeftColor2: (~tb: color, ~lr: color) => property;
let borderLeftColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderLeftColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderLeftColorString: string => property;

let borderStyle: [ | lineStyle | global ] => property;
let borderStyle2: (~tb: lineStyle, ~lr: lineStyle) => property;
let borderStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => property;
let borderStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => property;
let borderStyleString: string => property;

let borderTopStyle: [ | lineStyle | global ] => property;
let borderTopStyle2: (~tb: lineStyle, ~lr: lineStyle) => property;
let borderTopStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => property;
let borderTopStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => property;
let borderTopStyleString: string => property;

let borderRightStyle: [ | lineStyle | global ] => property;
let borderRightStyle2: (~tb: lineStyle, ~lr: lineStyle) => property;
let borderRightStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => property;
let borderRightStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => property;
let borderRightStyleString: string => property;

let borderBottomStyle: [ | lineStyle | global ] => property;
let borderBottomStyle2: (~tb: lineStyle, ~lr: lineStyle) => property;
let borderBottomStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => property;
let borderBottomStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => property;
let borderBottomStyleString: string => property;

let borderLeftStyle: [ | lineStyle | global ] => property;
let borderLeftStyle2: (~tb: lineStyle, ~lr: lineStyle) => property;
let borderLeftStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => property;
let borderLeftStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => property;
let borderLeftStyleString: string => property;

let borderWidth: [ | lineWidth | global ] => property;
let borderWidth2: (~tb: lineWidth, ~lr: lineWidth) => property;
let borderWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => property;
let borderWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => property;
let borderWidthString: string => property;

let borderTopWidth: [ | lineWidth | global ] => property;
let borderTopWidth2: (~tb: lineWidth, ~lr: lineWidth) => property;
let borderTopWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => property;
let borderTopWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => property;
let borderTopWidthString: string => property;

let borderRightWidth: [ | lineWidth | global ] => property;
let borderRightWidth2: (~tb: lineWidth, ~lr: lineWidth) => property;
let borderRightWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => property;
let borderRightWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => property;
let borderRightWidthString: string => property;

let borderBottomWidth: [ | lineWidth | global ] => property;
let borderBottomWidth2: (~tb: lineWidth, ~lr: lineWidth) => property;
let borderBottomWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => property;
let borderBottomWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => property;
let borderBottomWidthString: string => property;

let borderLeftWidth: [ | lineWidth | global ] => property;
let borderLeftWidth2: (~tb: lineWidth, ~lr: lineWidth) => property;
let borderLeftWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => property;
let borderLeftWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => property;
let borderLeftWidthString: string => property;

let background: (
  ~color: color=?,
  ~position: position=?,
  ~size: bgSize=?,
  ~repeat: repeatStyle=?,
  ~attachment: attachment=?,
  ~origin: box=?,
  ~clip: box=?,
  [ | global | bgImage | color]
) => property;
let backgroundString: string => property;
let background2: (bgLayer, bgLayer) => property;
let background3: (bgLayer, bgLayer, bgLayer) => property;
let background4: (bgLayer, bgLayer, bgLayer, bgLayer) => property;