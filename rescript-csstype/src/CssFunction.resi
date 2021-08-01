/*
Color functions
*/
let hsl: (CssType.hue, CssType.percentage, CssType.percentage) => [> #hsl(CssType.hue, CssType.percentage, CssType.percentage) ];
let hsla: (CssType.hue, CssType.percentage, CssType.percentage, float) => [> #hsla(CssType.hue, CssType.percentage, CssType.percentage, CssType.alpha) ];
let rgb: (float, float, float) => [> #rgb(CssType.rgbParam, CssType.rgbParam, CssType.rgbParam) ];
let rgba: (float, float, float, float) => [> #rgba(CssType.rgbParam, CssType.rgbParam, CssType.rgbParam, CssType.alpha) ];
let rgbX: string => [> #rgbX(string) ];

/*
Image data types
*/
let url: string => [> #url(string) ];
let image: (~dir: CssType.imageTags=?, ~color: CssType.color=?, [ | CssType.imageSrc | CssType.color ]) => 
  [> #image(option<CssType.imageTags>, option<CssType.color>, [ | CssType.imageSrc | CssType.color ]) ];
let linearColorStop2: (CssType.color, CssType.length_percentage) => [> #linearColorStop2(CssType.color, CssType.length_percentage) ];
let linearColorStop3: (CssType.color, CssType.length_percentage, CssType.length_percentage) =>
  [> #linearColorStop3(CssType.color, CssType.length_percentage, CssType.length_percentage) ];
let linearGradient: (~angle: CssType.gradientLineAngle=?, CssType.linearColorStop) =>
  [> #linearGradient(option<CssType.gradientLineAngle>, CssType.linearColorStop) ];
let linearGradient2: (~angle: CssType.gradientLineAngle=?, CssType.linearColorStop, CssType.linearColorStop) =>
  [> #linearGradient2(option<CssType.gradientLineAngle>, CssType.linearColorStop, CssType.linearColorStop) ];
let linearGradient3: (~angle: CssType.gradientLineAngle=?, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) =>
  [> #linearGradient3(option<CssType.gradientLineAngle>, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) ];
let linearGradient4: (~angle: CssType.gradientLineAngle=?, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) =>
  [> #linearGradient4(option<CssType.gradientLineAngle>, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) ];
let repeatingLinearGradient: (~angle: CssType.gradientLineAngle=?, CssType.linearColorStop) =>
  [> #repeatingLinearGradient(option<CssType.gradientLineAngle>, CssType.linearColorStop) ];
let repeatingLinearGradient2: (~angle: CssType.gradientLineAngle=?, CssType.linearColorStop, CssType.linearColorStop) =>
  [> #repeatingLinearGradient2(option<CssType.gradientLineAngle>, CssType.linearColorStop, CssType.linearColorStop) ];
let repeatingLinearGradient3: (~angle: CssType.gradientLineAngle=?, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) =>
  [> #repeatingLinearGradient3(option<CssType.gradientLineAngle>, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) ];
let repeatingLinearGradient4: (~angle: CssType.gradientLineAngle=?, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) =>
  [> #repeatingLinearGradient4(option<CssType.gradientLineAngle>, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) ];
let radialGradient: (~position: CssType.radialGradientPosition=?, ~endingShape: CssType.radialGradientEndingShape=?, ~size: CssType.radialGradientSize=?, CssType.linearColorStop) =>
  [> | #radialGradient(option<CssType.radialGradientPosition>, option<CssType.radialGradientEndingShape>, option<CssType.radialGradientSize>, CssType.linearColorStop) ];
let radialGradient2: (~position: CssType.radialGradientPosition=?, ~endingShape: CssType.radialGradientEndingShape=?, ~size: CssType.radialGradientSize=?, CssType.linearColorStop, CssType.linearColorStop) =>
  [> | #radialGradient2(option<CssType.radialGradientPosition>, option<CssType.radialGradientEndingShape>, option<CssType.radialGradientSize>, CssType.linearColorStop, CssType.linearColorStop) ];
let radialGradient3: (~position: CssType.radialGradientPosition=?, ~endingShape: CssType.radialGradientEndingShape=?, ~size: CssType.radialGradientSize=?, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) =>
  [> | #radialGradient3(option<CssType.radialGradientPosition>, option<CssType.radialGradientEndingShape>, option<CssType.radialGradientSize>, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) ];
let radialGradient4: (~position: CssType.radialGradientPosition=?, ~endingShape: CssType.radialGradientEndingShape=?, ~size: CssType.radialGradientSize=?, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) =>
  [> | #radialGradient4(option<CssType.radialGradientPosition>, option<CssType.radialGradientEndingShape>, option<CssType.radialGradientSize>, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) ];
let repeatingRadialGradient: (~position: CssType.radialGradientPosition=?, ~endingShape: CssType.radialGradientEndingShape=?, ~size: CssType.radialGradientSize=?, CssType.linearColorStop) =>
  [> | #repeatingRadialGradient(option<CssType.radialGradientPosition>, option<CssType.radialGradientEndingShape>, option<CssType.radialGradientSize>, CssType.linearColorStop) ];
let repeatingRadialGradient2: (~position: CssType.radialGradientPosition=?, ~endingShape: CssType.radialGradientEndingShape=?, ~size: CssType.radialGradientSize=?, CssType.linearColorStop, CssType.linearColorStop) =>
  [> | #repeatingRadialGradient2(option<CssType.radialGradientPosition>, option<CssType.radialGradientEndingShape>, option<CssType.radialGradientSize>, CssType.linearColorStop, CssType.linearColorStop) ];
let repeatingRadialGradient3: (~position: CssType.radialGradientPosition=?, ~endingShape: CssType.radialGradientEndingShape=?, ~size: CssType.radialGradientSize=?, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) =>
  [> | #repeatingRadialGradient3(option<CssType.radialGradientPosition>, option<CssType.radialGradientEndingShape>, option<CssType.radialGradientSize>, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) ];
let repeatingRadialGradient4: (~position: CssType.radialGradientPosition=?, ~endingShape: CssType.radialGradientEndingShape=?, ~size: CssType.radialGradientSize=?, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) =>
  [> | #repeatingRadialGradient4(option<CssType.radialGradientPosition>, option<CssType.radialGradientEndingShape>, option<CssType.radialGradientSize>, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) ];
let conicGradient: (~angle: CssType.gradientLineAngle=?, ~position: CssType.position=?, CssType.linearColorStop) =>
  [> #conicGradient(option<CssType.gradientLineAngle>, option<CssType.position>, CssType.linearColorStop) ];
let conicGradient2: (~angle: CssType.gradientLineAngle=?, ~position: CssType.position=?, CssType.linearColorStop, CssType.linearColorStop) =>
  [> #conicGradient2(option<CssType.gradientLineAngle>, option<CssType.position>, CssType.linearColorStop, CssType.linearColorStop) ];
let conicGradient3: (~angle: CssType.gradientLineAngle=?, ~position: CssType.position=?, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) =>
  [> #conicGradient3(option<CssType.gradientLineAngle>, option<CssType.position>, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) ];
let conicGradient4: (~angle: CssType.gradientLineAngle=?, ~position: CssType.position=?, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) =>
  [> #conicGradient4(option<CssType.gradientLineAngle>, option<CssType.position>, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) ];
  let repeatingConicGradient: (~angle: CssType.gradientLineAngle=?, ~position: CssType.position=?, CssType.linearColorStop) =>
  [> #repeatingConicGradient(option<CssType.gradientLineAngle>, option<CssType.position>, CssType.linearColorStop) ];
let repeatingConicGradient2: (~angle: CssType.gradientLineAngle=?, ~position: CssType.position=?, CssType.linearColorStop, CssType.linearColorStop) =>
  [> #repeatingConicGradient2(option<CssType.gradientLineAngle>, option<CssType.position>, CssType.linearColorStop, CssType.linearColorStop) ];
let repeatingConicGradient3: (~angle: CssType.gradientLineAngle=?, ~position: CssType.position=?, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) =>
  [> #repeatingConicGradient3(option<CssType.gradientLineAngle>, option<CssType.position>, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) ];
let repeatingConicGradient4: (~angle: CssType.gradientLineAngle=?, ~position: CssType.position=?, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) =>
  [> #repeatingConicGradient4(option<CssType.gradientLineAngle>, option<CssType.position>, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop, CssType.linearColorStop) ];