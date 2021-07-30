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
let repeatingRadialGradient: (~position: radialGradientPosition=?, ~endingShape: radialGradientEndingShape=?, ~size: radialGradientSize=?, linearColorStop) =>
  [> | #repeatingRadialGradient(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop) ];
let repeatingRadialGradient2: (~position: radialGradientPosition=?, ~endingShape: radialGradientEndingShape=?, ~size: radialGradientSize=?, linearColorStop, linearColorStop) =>
  [> | #repeatingRadialGradient2(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop) ];
let repeatingRadialGradient3: (~position: radialGradientPosition=?, ~endingShape: radialGradientEndingShape=?, ~size: radialGradientSize=?, linearColorStop, linearColorStop, linearColorStop) =>
  [> | #repeatingRadialGradient3(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop, linearColorStop) ];
let repeatingRadialGradient4: (~position: radialGradientPosition=?, ~endingShape: radialGradientEndingShape=?, ~size: radialGradientSize=?, linearColorStop, linearColorStop, linearColorStop, linearColorStop) =>
  [> | #repeatingRadialGradient4(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop, linearColorStop, linearColorStop) ];
let conicGradient: (~angle: gradientLineAngle=?, ~position: position=?, linearColorStop) =>
  [> #conicGradient(option<gradientLineAngle>, option<position>, linearColorStop) ];
let conicGradient2: (~angle: gradientLineAngle=?, ~position: position=?, linearColorStop, linearColorStop) =>
  [> #conicGradient2(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop) ];
let conicGradient3: (~angle: gradientLineAngle=?, ~position: position=?, linearColorStop, linearColorStop, linearColorStop) =>
  [> #conicGradient3(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop, linearColorStop) ];
let conicGradient4: (~angle: gradientLineAngle=?, ~position: position=?, linearColorStop, linearColorStop, linearColorStop, linearColorStop) =>
  [> #conicGradient4(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop, linearColorStop, linearColorStop) ];
  let repeatingConicGradient: (~angle: gradientLineAngle=?, ~position: position=?, linearColorStop) =>
  [> #repeatingConicGradient(option<gradientLineAngle>, option<position>, linearColorStop) ];
let repeatingConicGradient2: (~angle: gradientLineAngle=?, ~position: position=?, linearColorStop, linearColorStop) =>
  [> #repeatingConicGradient2(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop) ];
let repeatingConicGradient3: (~angle: gradientLineAngle=?, ~position: position=?, linearColorStop, linearColorStop, linearColorStop) =>
  [> #repeatingConicGradient3(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop, linearColorStop) ];
let repeatingConicGradient4: (~angle: gradientLineAngle=?, ~position: position=?, linearColorStop, linearColorStop, linearColorStop, linearColorStop) =>
  [> #repeatingConicGradient4(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop, linearColorStop, linearColorStop) ];
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

let borderColor: color_global => property;
let borderColor2: (~tb: color, ~lr: color) => property;
let borderColor3: (~top: color, ~lr: color, ~bottom: color) => property;
let borderColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => property;
let borderColorString: string => property;

let borderTopColor: color_global => property;
let borderTopColorString: string => property;

let borderRightColor: color_global => property;
let borderRightColorString: string => property;

let borderBottomColor: color_global => property;
let borderBottomColorString: string => property;

let borderLeftColor: color_global => property;
let borderLeftColorString: string => property;

let borderStyle: lineStyle_global => property;
let borderStyle2: (~tb: lineStyle, ~lr: lineStyle) => property;
let borderStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => property;
let borderStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => property;
let borderStyleString: string => property;

let borderTopStyle: lineStyle_global => property;
let borderTopStyleString: string => property;

let borderRightStyle: lineStyle_global => property;
let borderRightStyleString: string => property;

let borderBottomStyle: lineStyle_global => property;
let borderBottomStyleString: string => property;

let borderLeftStyle: lineStyle_global => property;
let borderLeftStyleString: string => property;

let borderWidth: [ | lineWidth | global ] => property;
let borderWidth2: (~tb: lineWidth, ~lr: lineWidth) => property;
let borderWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => property;
let borderWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => property;
let borderWidthString: string => property;

let borderTopWidth: [ | lineWidth | global ] => property;
let borderTopWidthString: string => property;

let borderRightWidth: [ | lineWidth | global ] => property;
let borderRightWidthString: string => property;

let borderBottomWidth: [ | lineWidth | global ] => property;
let borderBottomWidthString: string => property;

let borderLeftWidth: [ | lineWidth | global ] => property;
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

let backgroundAttachment: attachment => property;
let backgroundAttachment2: (attachment, attachment) => property;
let backgroundAttachment3: (attachment, attachment, attachment) => 
  property;
let backgroundAttachment4: (attachment, attachment, attachment, attachment) => 
  property;
let backgroundAttachmentString: string => property

let backgroundColor: color => property;
let backgroundColorString: string => property;

let backgroundImage: bgImage => property;
let backgroundImage2: (bgImage, bgImage) => property;
let backgroundImage3: (bgImage, bgImage, bgImage) => property;
let backgroundImage4: (bgImage, bgImage, bgImage, bgImage) => property;
let backgroundImageString: string => property;

let backgroundPosition: position => property;
let backgroundPosition2: (position, position) => property;
let backgroundPosition3: (position, position, position) => property;
let backgroundPosition4: (position, position, position, position) => property;
let backgroundPositionString: string => property;

let backgroundStyle: repeatStyle => property;
let backgroundStyle2: (repeatStyle, repeatStyle) => property;
let backgroundStyle3: (repeatStyle, repeatStyle, repeatStyle) => property;
let backgroundStyle4: (repeatStyle, repeatStyle, repeatStyle, repeatStyle) => property;
let backgroundStyleString: string => property;

let margin: margin_global => property;
let margin2: (~tb: margin, ~lr: margin) => property;
let margin3: (~top: margin, ~lr: margin, ~bottom: margin) => property;
let margin4: (~top: margin, ~right: margin, ~bottom: margin, ~left: margin) => property;
let marginString: string => property;
let marginNumber: float => property;

let marginTop: margin_global => property;
let marginTopString: string => property;
let marginTopNumber: float => property;

let marginRight: margin_global => property;
let marginRightString: string => property;
let marginRightNumber: float => property;

let marginBottom: margin_global => property;
let marginBottomString: string => property;
let marginBottomNumber: float => property;

let marginLeft: margin_global => property;
let marginLeftString: string => property;
let marginLeftNumber: float => property;