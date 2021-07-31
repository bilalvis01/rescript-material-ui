open CssType;

module type MakeValueType = () => {
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
  Color functions
  */
  let hsl: (hue, percentage, percentage) => [> #hsl(hue, percentage, percentage) ];
  let hsla: (hue, percentage, percentage, float) => [> #hsla(hue, percentage, percentage, alpha) ];
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
};

module MakeValue: MakeValueType = () => {
  /*
  Textual data types
  */
  // String
  let str = v => #string(v);

  /*
  Numeric data types
  */
  let num = v => #number(v);
  let int = v => #integer(v);
  let ratio = (v1, v2) => #ratio(v1, v2);
  let fr = v => #fr(v);

  /*
  Quantities data types
  */
  // length
  let ch = l => #ch(l);
  let em = l => #em(l);
  let ex = l => #ex(l);
  let rem = l => #rem(l);
  let vh = l => #vh(l);
  let vw = l => #vw(l);
  let vmin = l => #vmin(l);
  let vmax = l => #vmax(l);
  let px = l => #px(l);
  let cm = l => #cm(l);
  let mm = l => #mm(l);
  let inch = l => #inch(l);
  let pc = l => #pc(l);
  let pt = l => #pt(l);

  // Percentage
  let pct = v => #pct(v);

  // Angle
  let deg = v => #deg(v);
  let grad = v => #grad(v);
  let rad = v => #rad(v);
  let turn = v => #turn(v);

  // Time
  let s = v => #s(v);
  let ms = v => #ms(v);

  // Frequency
  let hz = v => #Hz(v);
  let kHz = v => #kHz(v);

  // Ratio
  let dpi = v => #dpi(v);
  let dpcm = v => #dpcm(v);
  let dppx = v => #dppx(v);
  let x = v => #x(v);

  /*
  Color data types
  */
  let hsl = (v1, v2, v3) => #hsl(v1, v2, v3);
  let hsla = (v1, v2, v3, v4) => #hsla(v1, v2, v3, num(v4));
  let rgb = (v1, v2, v3) => #rgb(num(v1), num(v2), num(v3));
  let rgba = (v1, v2, v3, v4) => #rgba(num(v1), num(v2), num(v3), num(v4));
  let rgbX = v => #rgbX(v);

  /*
  Image data types
  */
  let linearColorStop2 = (c, l) => #linearColorStop2(c, l);
  let linearColorStop3 = (c, l1, l2) => #linearColorStop3(c, l1, l2);
  let linearGradient = (~angle=?, c) => #linearGradient(angle, c);
  let linearGradient2 = (~angle=?, c1, c2) => #linearGradient2(angle, c1, c2);
  let linearGradient3 = (~angle=?, c1, c2, c3) => #linearGradient3(angle, c1, c2, c3);
  let linearGradient4 = (~angle=?, c1, c2, c3, c4) => #linearGradient4(angle, c1, c2, c3, c4);
  let repeatingLinearGradient = (~angle=?, c) => #repeatingLinearGradient(angle, c);
  let repeatingLinearGradient2 = (~angle=?, c1, c2) => #repeatingLinearGradient2(angle, c1, c2);
  let repeatingLinearGradient3 = (~angle=?, c1, c2, c3) => #repeatingLinearGradient3(angle, c1, c2, c3);
  let repeatingLinearGradient4 = (~angle=?, c1, c2, c3, c4) => #repeatingLinearGradient4(angle, c1, c2, c3, c4);
  let radialGradient = (~position=?, ~endingShape=?, ~size=?, c) => 
    #radialGradient(position, endingShape, size, c);
  let radialGradient2 = (~position=?, ~endingShape=?, ~size=?, c1, c2) => 
    #radialGradient2(position, endingShape, size, c1, c2);
  let radialGradient3 = (~position=?, ~endingShape=?, ~size=?, c1, c2, c3) => 
    #radialGradient3(position, endingShape, size, c1, c2, c3);
  let radialGradient4 = (~position=?, ~endingShape=?, ~size=?, c1, c2, c3, c4) => 
    #radialGradient4(position, endingShape, size, c1, c2, c3, c4);
  let repeatingRadialGradient = (~position=?, ~endingShape=?, ~size=?, c) => 
    #repeatingRadialGradient(position, endingShape, size, c);
  let repeatingRadialGradient2 = (~position=?, ~endingShape=?, ~size=?, c1, c2) => 
    #repeatingRadialGradient2(position, endingShape, size, c1, c2);
  let repeatingRadialGradient3 = (~position=?, ~endingShape=?, ~size=?, c1, c2, c3) => 
    #repeatingRadialGradient3(position, endingShape, size, c1, c2, c3);
  let repeatingRadialGradient4 = (~position=?, ~endingShape=?, ~size=?, c1, c2, c3, c4) => 
    #repeatingRadialGradient4(position, endingShape, size, c1, c2, c3, c4);
  let conicGradient = (~angle=?, ~position=?, c) => #conicGradient(angle, position, c);
  let conicGradient2 = (~angle=?, ~position=?, c1, c2) => #conicGradient2(angle, position, c1, c2);
  let conicGradient3 = (~angle=?, ~position=?, c1, c2, c3) => #conicGradient3(angle, position, c1, c2, c3);
  let conicGradient4 = (~angle=?, ~position=?, c1, c2, c3, c4) => #conicGradient4(angle, position, c1, c2, c3, c4);
  let repeatingConicGradient = (~angle=?, ~position=?, c) => #repeatingConicGradient(angle, position, c);
  let repeatingConicGradient2 = (~angle=?, ~position=?, c1, c2) => #repeatingConicGradient2(angle, position, c1, c2);
  let repeatingConicGradient3 = (~angle=?, ~position=?, c1, c2, c3) => #repeatingConicGradient3(angle, position, c1, c2, c3);
  let repeatingConicGradient4 = (~angle=?, ~position=?, c1, c2, c3, c4) => #repeatingConicGradient4(angle, position, c1, c2, c3, c4);
  let url = v => #url(v);
  let src = v => #src(v);
  let image = (~dir=?, ~color=?, imageSrcOrColor) => #image(dir, color, imageSrcOrColor);
  let bgSize2 = (s1, s2) => #bgSize2(s1, s2);
  let position2 = (p1, p2) => #position2(p1, p2);
  let position3 = (p1, p2, p3) => #position3(p1, p2, p3);
  let position4 = (p1, p2, p3, p4) => #position4(p1, p2, p3, p4); 

  /*
  Background layer
  */
  let bgLayer = (
    ~color=?,
    ~position=?,
    ~size=?,
    ~repeat=?,
    ~attachment=?,
    ~origin=?,
    ~clip=?,
    imageOrColor
  ) => 
    #bgLayer(
      color,
      position,
      size,
      repeat,
      attachment,
      origin,
      clip,
      imageOrColor
    );
};

module type MakePropertyType = () => {
  let property: (string, CssPropertyValue.synthetic<'a>) => (string, CssPropertyValue.box);
  let propertyString: (string, string) => (string, CssPropertyValue.box);
  let propertyNumber: (string, float) => (string, CssPropertyValue.box);
  let propertyInteger: (string, int) => (string, CssPropertyValue.box); 

  let border: (~width: lineWidth=?, ~color: color=?, [ | global | lineStyle ]) => (string, CssPropertyValue.box);
  let borderString: string => (string, CssPropertyValue.box);

  let borderTop: (~width: lineWidth=?, ~color: color=?, [ | global | lineStyle ]) => (string, CssPropertyValue.box);
  let borderTopString: string => (string, CssPropertyValue.box);

  let borderLeft: (~width: lineWidth=?, ~color: color=?, [ | global | lineStyle ]) => (string, CssPropertyValue.box);
  let borderLeftString: string => (string, CssPropertyValue.box);

  let borderRight: (~width: lineWidth=?, ~color: color=?, [ | global | lineStyle ]) => (string, CssPropertyValue.box);
  let borderRightString: string => (string, CssPropertyValue.box);

  let borderBottom: (~width: lineWidth=?, ~color: color=?, [ | global | lineStyle ]) => (string, CssPropertyValue.box);
  let borderBottomString: string => (string, CssPropertyValue.box);

  let borderColor: color_global => (string, CssPropertyValue.box);
  let borderColor2: (~tb: color, ~lr: color) => (string, CssPropertyValue.box);
  let borderColor3: (~top: color, ~lr: color, ~bottom: color) => (string, CssPropertyValue.box);
  let borderColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => (string, CssPropertyValue.box);
  let borderColorString: string => (string, CssPropertyValue.box);

  let borderTopColor: color_global => (string, CssPropertyValue.box);
  let borderTopColorString: string => (string, CssPropertyValue.box);

  let borderRightColor: color_global => (string, CssPropertyValue.box);
  let borderRightColorString: string => (string, CssPropertyValue.box);

  let borderBottomColor: color_global => (string, CssPropertyValue.box);
  let borderBottomColorString: string => (string, CssPropertyValue.box);

  let borderLeftColor: color_global => (string, CssPropertyValue.box);
  let borderLeftColorString: string => (string, CssPropertyValue.box);

  let borderStyle: lineStyle_global => (string, CssPropertyValue.box);
  let borderStyle2: (~tb: lineStyle, ~lr: lineStyle) => (string, CssPropertyValue.box);
  let borderStyle3: (~top: lineStyle, ~lr: lineStyle, ~bottom: lineStyle) => (string, CssPropertyValue.box);
  let borderStyle4: (~top: lineStyle, ~right: lineStyle, ~bottom: lineStyle, ~left: lineStyle) => (string, CssPropertyValue.box);
  let borderStyleString: string => (string, CssPropertyValue.box);

  let borderTopStyle: lineStyle_global => (string, CssPropertyValue.box);
  let borderTopStyleString: string => (string, CssPropertyValue.box);

  let borderRightStyle: lineStyle_global => (string, CssPropertyValue.box);
  let borderRightStyleString: string => (string, CssPropertyValue.box);

  let borderBottomStyle: lineStyle_global => (string, CssPropertyValue.box);
  let borderBottomStyleString: string => (string, CssPropertyValue.box);

  let borderLeftStyle: lineStyle_global => (string, CssPropertyValue.box);
  let borderLeftStyleString: string => (string, CssPropertyValue.box);

  let borderWidth: [ | lineWidth | global ] => (string, CssPropertyValue.box);
  let borderWidth2: (~tb: lineWidth, ~lr: lineWidth) => (string, CssPropertyValue.box);
  let borderWidth3: (~top: lineWidth, ~lr: lineWidth, ~bottom: lineWidth) => (string, CssPropertyValue.box);
  let borderWidth4: (~top: lineWidth, ~right: lineWidth, ~bottom: lineWidth, ~left: lineWidth) => (string, CssPropertyValue.box);
  let borderWidthString: string => (string, CssPropertyValue.box);

  let borderTopWidth: [ | lineWidth | global ] => (string, CssPropertyValue.box);
  let borderTopWidthString: string => (string, CssPropertyValue.box);

  let borderRightWidth: [ | lineWidth | global ] => (string, CssPropertyValue.box);
  let borderRightWidthString: string => (string, CssPropertyValue.box);

  let borderBottomWidth: [ | lineWidth | global ] => (string, CssPropertyValue.box);
  let borderBottomWidthString: string => (string, CssPropertyValue.box);

  let borderLeftWidth: [ | lineWidth | global ] => (string, CssPropertyValue.box);
  let borderLeftWidthString: string => (string, CssPropertyValue.box);

  let background: (
    ~color: color=?,
    ~position: position=?,
    ~size: bgSize=?,
    ~repeat: repeatStyle=?,
    ~attachment: attachment=?,
    ~origin: box=?,
    ~clip: box=?,
    [ | global | bgImage | color]
  ) => (string, CssPropertyValue.box);
  let backgroundString: string => (string, CssPropertyValue.box);
  let background2: (bgLayer, bgLayer) => (string, CssPropertyValue.box);
  let background3: (bgLayer, bgLayer, bgLayer) => (string, CssPropertyValue.box);
  let background4: (bgLayer, bgLayer, bgLayer, bgLayer) => (string, CssPropertyValue.box);

  let backgroundAttachment: attachment => (string, CssPropertyValue.box);
  let backgroundAttachment2: (attachment, attachment) => (string, CssPropertyValue.box);
  let backgroundAttachment3: (attachment, attachment, attachment) => 
    (string, CssPropertyValue.box);
  let backgroundAttachment4: (attachment, attachment, attachment, attachment) => 
    (string, CssPropertyValue.box);
  let backgroundAttachmentString: string => (string, CssPropertyValue.box)

  let backgroundColor: color => (string, CssPropertyValue.box);
  let backgroundColorString: string => (string, CssPropertyValue.box);

  let backgroundImage: bgImage => (string, CssPropertyValue.box);
  let backgroundImage2: (bgImage, bgImage) => (string, CssPropertyValue.box);
  let backgroundImage3: (bgImage, bgImage, bgImage) => (string, CssPropertyValue.box);
  let backgroundImage4: (bgImage, bgImage, bgImage, bgImage) => (string, CssPropertyValue.box);
  let backgroundImageString: string => (string, CssPropertyValue.box);

  let backgroundPosition: position => (string, CssPropertyValue.box);
  let backgroundPosition2: (position, position) => (string, CssPropertyValue.box);
  let backgroundPosition3: (position, position, position) => (string, CssPropertyValue.box);
  let backgroundPosition4: (position, position, position, position) => (string, CssPropertyValue.box);
  let backgroundPositionString: string => (string, CssPropertyValue.box);

  let backgroundStyle: repeatStyle => (string, CssPropertyValue.box);
  let backgroundStyle2: (repeatStyle, repeatStyle) => (string, CssPropertyValue.box);
  let backgroundStyle3: (repeatStyle, repeatStyle, repeatStyle) => (string, CssPropertyValue.box);
  let backgroundStyle4: (repeatStyle, repeatStyle, repeatStyle, repeatStyle) => (string, CssPropertyValue.box);
  let backgroundStyleString: string => (string, CssPropertyValue.box);

  let margin: margin_global => (string, CssPropertyValue.box);
  let margin2: (~tb: margin, ~lr: margin) => (string, CssPropertyValue.box);
  let margin3: (~top: margin, ~lr: margin, ~bottom: margin) => (string, CssPropertyValue.box);
  let margin4: (~top: margin, ~right: margin, ~bottom: margin, ~left: margin) => (string, CssPropertyValue.box);
  let marginString: string => (string, CssPropertyValue.box);
  let marginNumber: float => (string, CssPropertyValue.box);

  let marginTop: margin_global => (string, CssPropertyValue.box);
  let marginTopString: string => (string, CssPropertyValue.box);
  let marginTopNumber: float => (string, CssPropertyValue.box);

  let marginRight: margin_global => (string, CssPropertyValue.box);
  let marginRightString: string => (string, CssPropertyValue.box);
  let marginRightNumber: float => (string, CssPropertyValue.box);

  let marginBottom: margin_global => (string, CssPropertyValue.box);
  let marginBottomString: string => (string, CssPropertyValue.box);
  let marginBottomNumber: float => (string, CssPropertyValue.box);

  let marginLeft: margin_global => (string, CssPropertyValue.box);
  let marginLeftString: string => (string, CssPropertyValue.box);
  let marginLeftNumber: float => (string, CssPropertyValue.box);

  let padding: padding_global => (string, CssPropertyValue.box);
  let padding2: (~tb: padding, ~lr: padding) => (string, CssPropertyValue.box);
  let padding3: (~top: padding, ~lr: padding, ~bottom: padding) => (string, CssPropertyValue.box);
  let padding4: (~top: padding, ~right: padding, ~bottom: padding, ~left: padding) => (string, CssPropertyValue.box);
  let paddingString: string => (string, CssPropertyValue.box);
  let paddingNumber: float => (string, CssPropertyValue.box);

  let paddingTop: padding_global => (string, CssPropertyValue.box);
  let paddingTopString: string => (string, CssPropertyValue.box);
  let paddingTopNumber: float => (string, CssPropertyValue.box);

  let paddingRight: padding_global => (string, CssPropertyValue.box);
  let paddingRightString: string => (string, CssPropertyValue.box);
  let paddingRightNumber: float => (string, CssPropertyValue.box);

  let paddingBottom: padding_global => (string, CssPropertyValue.box);
  let paddingBottomString: string => (string, CssPropertyValue.box);
  let paddingBottomNumber: float => (string, CssPropertyValue.box);

  let paddingLeft: padding_global => (string, CssPropertyValue.box);
  let paddingLeftString: string => (string, CssPropertyValue.box);
  let paddingLeftNumber: float => (string, CssPropertyValue.box);

  let clear: clear_global => (string, CssPropertyValue.box);

  let color: color_global => (string, CssPropertyValue.box);
  let colorString: string => (string, CssPropertyValue.box);

  let cursor: cursorKeyword_global => (string, CssPropertyValue.box);
  let cursor1: (cursorImage, cursorKeyword) => (string, CssPropertyValue.box);
  let cursor2: (cursorImage, cursorImage, cursorKeyword) => (string, CssPropertyValue.box);
  let cursor3: (cursorImage, cursorImage, cursorImage, cursorKeyword) => (string, CssPropertyValue.box);
  let cursor4: (cursorImage, cursorImage, cursorImage, cursorImage, cursorKeyword) => (string, CssPropertyValue.box);
  let cursorString: string => (string, CssPropertyValue.box);
};

module MakeProperty: MakePropertyType = () => {
  let property = (name, value) => (name, CssPropertyValue.Box(value));
  let propertyString = (name, value) => (name, CssPropertyValue.Box(CssPropertyValue.string(value)));
  let propertyNumber = (name, value) => (name, CssPropertyValue.Box(CssPropertyValue.number(value)));
  let propertyInteger = (name, value) => (name, CssPropertyValue.Box(CssPropertyValue.integer(value)));

  let border = (~width=?, ~color=?, style) => 
    ("border", CssPropertyValue.Box(CssPropertyValue.border(~width=?width, ~color=?color, style)));
  let borderString = v => ("border", CssPropertyValue.Box(CssPropertyValue.borderString(v)));

  let borderTop = (~width=?, ~color=?, style) => 
    ("borderTop", CssPropertyValue.Box(CssPropertyValue.border(~width=?width, ~color=?color, style)));
  let borderTopString = v => ("borderTop", CssPropertyValue.Box(CssPropertyValue.borderString(v)));

  let borderLeft = (~width=?, ~color=?, style) => 
    ("borderLeft", CssPropertyValue.Box(CssPropertyValue.border(~width=?width, ~color=?color, style)));
  let borderLeftString = v => ("borderLeft", CssPropertyValue.Box(CssPropertyValue.borderString(v)));

  let borderRight = (~width=?, ~color=?, style) => 
    ("borderRight", CssPropertyValue.Box(CssPropertyValue.border(~width=?width, ~color=?color, style)));
  let borderRightString = v => ("borderRight", CssPropertyValue.Box(CssPropertyValue.borderString(v)));

  let borderBottom = (~width=?, ~color=?, style) => 
    ("borderBottom", CssPropertyValue.Box(CssPropertyValue.border(~width=?width, ~color=?color, style)));
  let borderBottomString = v => ("borderBottom", CssPropertyValue.Box(CssPropertyValue.borderString(v)));

  let borderColor = v => ("borderColor", CssPropertyValue.Box(CssPropertyValue.borderColor(v)));
  let borderColor2 = (~tb, ~lr) => ("borderColor", CssPropertyValue.Box(CssPropertyValue.borderColor2(~tb, ~lr)));
  let borderColor3 = (~top, ~lr, ~bottom) =>
    ("borderColor", CssPropertyValue.Box(CssPropertyValue.borderColor3(~top, ~lr, ~bottom)));
  let borderColor4 = (~top, ~right, ~bottom, ~left) =>
    ("borderColor", CssPropertyValue.Box(CssPropertyValue.borderColor4(~top, ~right, ~bottom, ~left)));
  let borderColorString = v => ("borderColor", CssPropertyValue.Box(CssPropertyValue.borderColorString(v)));

  let borderTopColor = v => ("borderTopColor", CssPropertyValue.Box(CssPropertyValue.borderTopColor(v)));
  let borderTopColorString = v => ("borderTopColor", CssPropertyValue.Box(CssPropertyValue.borderTopColorString(v)));

  let borderRightColor = v => ("borderRightColor", CssPropertyValue.Box(CssPropertyValue.borderRightColor(v)));
  let borderRightColorString = v => ("borderRightColor", CssPropertyValue.Box(CssPropertyValue.borderRightColorString(v)));

  let borderBottomColor = v => ("borderBottomColor", CssPropertyValue.Box(CssPropertyValue.borderBottomColor(v)));
  let borderBottomColorString = v => ("borderBottomColor", CssPropertyValue.Box(CssPropertyValue.borderBottomColorString(v)));

  let borderLeftColor = v => ("borderLeftColor", CssPropertyValue.Box(CssPropertyValue.borderLeftColor(v)));
  let borderLeftColorString = v => ("borderLeftColor", CssPropertyValue.Box(CssPropertyValue.borderLeftColorString(v)));

  let borderStyle = v => ("borderStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle(v)));
  let borderStyle2 = (~tb, ~lr) => ("borderStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle2(~tb, ~lr)));
  let borderStyle3 = (~top, ~lr, ~bottom) =>
    ("borderStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle3(~top, ~lr, ~bottom)));
  let borderStyle4 = (~top, ~right, ~bottom, ~left) =>
    ("borderStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle4(~top, ~right, ~bottom, ~left)));
  let borderStyleString = v => ("borderStyle", CssPropertyValue.Box(CssPropertyValue.borderStyleString(v)));

  let borderTopStyle = v => ("borderTopStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle(v)));
  let borderTopStyleString = v => ("borderTopStyle", CssPropertyValue.Box(CssPropertyValue.borderTopStyleString(v)));

  let borderRightStyle = v => ("borderRightStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle(v)));
  let borderRightStyleString = v => ("borderRightStyle", CssPropertyValue.Box(CssPropertyValue.borderRightStyleString(v)));

  let borderBottomStyle = v => ("borderBottomStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle(v)));
  let borderBottomStyleString = v => ("borderBottomStyle", CssPropertyValue.Box(CssPropertyValue.borderBottomStyleString(v)));

  let borderLeftStyle = v => ("borderLeftStyle", CssPropertyValue.Box(CssPropertyValue.borderStyle(v)));
  let borderLeftStyleString = v => ("borderLeftStyle", CssPropertyValue.Box(CssPropertyValue.borderLeftStyleString(v)));

  let borderWidth = v => ("borderWidth", CssPropertyValue.Box(CssPropertyValue.borderWidth(v)));
  let borderWidth2 = (~tb, ~lr) => ("borderWidth", CssPropertyValue.Box(CssPropertyValue.borderWidth2(~tb, ~lr)));
  let borderWidth3 = (~top, ~lr, ~bottom) =>
    ("borderWidth", CssPropertyValue.Box(CssPropertyValue.borderWidth3(~top, ~lr, ~bottom)));
  let borderWidth4 = (~top, ~right, ~bottom, ~left) =>
    ("borderWidth", CssPropertyValue.Box(CssPropertyValue.borderWidth4(~top, ~right, ~bottom, ~left)));
  let borderWidthString = v => ("borderWidth", CssPropertyValue.Box(CssPropertyValue.borderWidthString(v)));

  let borderTopWidth = v => ("borderTopWidth", CssPropertyValue.Box(CssPropertyValue.borderTopWidth(v)));
  let borderTopWidthString = v => ("borderTopWidth", CssPropertyValue.Box(CssPropertyValue.borderTopWidthString(v)));

  let borderRightWidth = v => ("borderRightWidth", CssPropertyValue.Box(CssPropertyValue.borderRightWidth(v)));
  let borderRightWidthString = v => ("borderRightWidth", CssPropertyValue.Box(CssPropertyValue.borderRightWidthString(v)));

  let borderBottomWidth = v => ("borderBottomWidth", CssPropertyValue.Box(CssPropertyValue.borderBottomWidth(v)));
  let borderBottomWidthString = v => ("borderBottomWidth", CssPropertyValue.Box(CssPropertyValue.borderBottomWidthString(v)));

  let borderLeftWidth = v => ("borderLeftWidth", CssPropertyValue.Box(CssPropertyValue.borderLeftWidth(v)));
  let borderLeftWidthString = v => ("borderLeftWidth", CssPropertyValue.Box(CssPropertyValue.borderLeftWidthString(v)));

  let background = (
    ~color=?,
    ~position=?,
    ~size=?,
    ~repeat=?,
    ~attachment=?,
    ~origin=?,
    ~clip=?,
    imageOrColor
  ) => 
    (
      "background", 
      CssPropertyValue.Box(CssPropertyValue.background(
        ~color=?color,
        ~position=?position,
        ~size=?size,
        ~repeat=?repeat,
        ~attachment=?attachment,
        ~origin=?origin,
        ~clip=?clip,
        imageOrColor
      ))
    );
  let background2 = (l1, l2) => ("background", CssPropertyValue.Box(CssPropertyValue.background2(l1, l2)));
  let background3 = (l1, l2, l3) => 
    ("background", CssPropertyValue.Box(CssPropertyValue.background3(l1, l2, l3)));
  let background4 = (l1, l2, l3, l4) => 
    ("background", CssPropertyValue.Box(CssPropertyValue.background4(l1, l2, l3, l4)));
  let backgroundString = v => ("background", CssPropertyValue.Box(CssPropertyValue.backgroundString(v)));

  let backgroundAttachment = v => 
    ("backgroundAttachment", CssPropertyValue.Box(CssPropertyValue.backgroundAttachment(v)));
  let backgroundAttachment2 = (v1, v2) =>
    ("backgroundAttachment", CssPropertyValue.Box(CssPropertyValue.backgroundAttachment2(v1, v2)));
  let backgroundAttachment3 = (v1, v2, v3) =>
    ("backgroundAttachment", CssPropertyValue.Box(CssPropertyValue.backgroundAttachment3(v1, v2, v3)));
  let backgroundAttachment4 = (v1, v2, v3, v4) =>
    ("backgroundAttachment", CssPropertyValue.Box(CssPropertyValue.backgroundAttachment4(v1, v2, v3, v4)));
  let backgroundAttachmentString = v => 
    ("backgroundAttachment", CssPropertyValue.Box(CssPropertyValue.backgroundAttachmentString(v)));

  let backgroundColor = v =>
    ("backgroundColor", CssPropertyValue.Box(CssPropertyValue.backgroundColor(v)));
  let backgroundColorString = v =>
    ("backgroundColor", CssPropertyValue.Box(CssPropertyValue.backgroundColorString(v)));

  let backgroundImage = v =>
    ("backgroundImage", CssPropertyValue.Box(CssPropertyValue.backgroundImage(v)));
  let backgroundImage2 = (v1, v2) =>
    ("backgroundImage", CssPropertyValue.Box(CssPropertyValue.backgroundImage2(v1, v2)));
  let backgroundImage3 = (v1, v2, v3) =>
    ("backgroundImage", CssPropertyValue.Box(CssPropertyValue.backgroundImage3(v1, v2, v3)));
  let backgroundImage4 = (v1, v2, v3, v4) =>
    ("backgroundImage", CssPropertyValue.Box(CssPropertyValue.backgroundImage4(v1, v2, v3, v4)));
  let backgroundImageString = v =>
    ("backgroundImage", CssPropertyValue.Box(CssPropertyValue.backgroundImageString(v)));

  let backgroundPosition = v =>
    ("backgroundPosition", CssPropertyValue.Box(CssPropertyValue.backgroundPosition(v)));
  let backgroundPosition2 = (v1, v2) =>
    ("backgroundPosition", CssPropertyValue.Box(CssPropertyValue.backgroundPosition2(v1, v2)));
  let backgroundPosition3 = (v1, v2, v3) =>
    ("backgroundPosition", CssPropertyValue.Box(CssPropertyValue.backgroundPosition3(v1, v2, v3)));
  let backgroundPosition4 = (v1, v2, v3, v4) =>
    ("backgroundPosition", CssPropertyValue.Box(CssPropertyValue.backgroundPosition4(v1, v2, v3, v4)));
  let backgroundPositionString = v =>
    ("backgroundPosition", CssPropertyValue.Box(CssPropertyValue.backgroundPositionString(v)));

  let backgroundStyle = v =>
    ("backgroundStyle", CssPropertyValue.Box(CssPropertyValue.backgroundStyle(v)));
  let backgroundStyle2 = (v1, v2) =>
    ("backgroundStyle", CssPropertyValue.Box(CssPropertyValue.backgroundStyle2(v1, v2)));
  let backgroundStyle3 = (v1, v2, v3) =>
    ("backgroundStyle", CssPropertyValue.Box(CssPropertyValue.backgroundStyle3(v1, v2, v3)));
  let backgroundStyle4 = (v1, v2, v3, v4) =>
    ("backgroundStyle", CssPropertyValue.Box(CssPropertyValue.backgroundStyle4(v1, v2, v3, v4)));
  let backgroundStyleString = v =>
    ("backgroundStyle", CssPropertyValue.Box(CssPropertyValue.backgroundStyleString(v)));

  let margin = v => 
    ("margin", CssPropertyValue.Box(CssPropertyValue.margin(v)));
  let margin2 = (~tb, ~lr) =>
    ("margin", CssPropertyValue.Box(CssPropertyValue.margin2(~tb, ~lr)));
  let margin3 = (~top, ~lr, ~bottom) =>
    ("margin", CssPropertyValue.Box(CssPropertyValue.margin3(~top, ~lr, ~bottom)));
  let margin4 = (~top, ~right, ~bottom, ~left) =>
    ("margin", CssPropertyValue.Box(CssPropertyValue.margin4(~top, ~right, ~bottom, ~left)));
  let marginString = v =>
    ("margin", CssPropertyValue.Box(CssPropertyValue.marginString(v)));
  let marginNumber = v =>
    ("margin", CssPropertyValue.Box(CssPropertyValue.marginNumber(v)));

  let marginTop = v =>
    ("marginTop", CssPropertyValue.Box(CssPropertyValue.marginTop(v)));
  let marginTopString = v =>
    ("marginTop", CssPropertyValue.Box(CssPropertyValue.marginTopString(v)));
  let marginTopNumber = v =>
    ("marginTop", CssPropertyValue.Box(CssPropertyValue.marginTopNumber(v)));

  let marginRight = v =>
    ("marginRight", CssPropertyValue.Box(CssPropertyValue.marginRight(v)));
  let marginRightString = v =>
    ("marginRight", CssPropertyValue.Box(CssPropertyValue.marginRightString(v)));
  let marginRightNumber = v =>
    ("marginRight", CssPropertyValue.Box(CssPropertyValue.marginRightNumber(v)));

  let marginBottom = v =>
    ("marginBottom", CssPropertyValue.Box(CssPropertyValue.marginBottom(v)));
  let marginBottomString = v =>
    ("marginBottom", CssPropertyValue.Box(CssPropertyValue.marginBottomString(v)));
  let marginBottomNumber = v =>
    ("marginBottom", CssPropertyValue.Box(CssPropertyValue.marginBottomNumber(v)));

  let marginLeft = v =>
    ("marginLeft", CssPropertyValue.Box(CssPropertyValue.marginLeft(v)));
  let marginLeftString = v =>
    ("marginLeft", CssPropertyValue.Box(CssPropertyValue.marginLeftString(v)));
  let marginLeftNumber = v =>
    ("marginLeft", CssPropertyValue.Box(CssPropertyValue.marginLeftNumber(v)));

  let padding = v => 
    ("padding", CssPropertyValue.Box(CssPropertyValue.padding(v)));
  let padding2 = (~tb, ~lr) =>
    ("padding", CssPropertyValue.Box(CssPropertyValue.padding2(~tb, ~lr)));
  let padding3 = (~top, ~lr, ~bottom) =>
    ("padding", CssPropertyValue.Box(CssPropertyValue.padding3(~top, ~lr, ~bottom)));
  let padding4 = (~top, ~right, ~bottom, ~left) =>
    ("padding", CssPropertyValue.Box(CssPropertyValue.padding4(~top, ~right, ~bottom, ~left)));
  let paddingString = v =>
    ("padding", CssPropertyValue.Box(CssPropertyValue.paddingString(v)));
  let paddingNumber = v =>
    ("padding", CssPropertyValue.Box(CssPropertyValue.paddingNumber(v)));

  let paddingTop = v =>
    ("paddingTop", CssPropertyValue.Box(CssPropertyValue.paddingTop(v)));
  let paddingTopString = v =>
    ("paddingTop", CssPropertyValue.Box(CssPropertyValue.paddingTopString(v)));
  let paddingTopNumber = v =>
    ("paddingTop", CssPropertyValue.Box(CssPropertyValue.paddingTopNumber(v)));

  let paddingRight = v =>
    ("paddingRight", CssPropertyValue.Box(CssPropertyValue.paddingRight(v)));
  let paddingRightString = v =>
    ("paddingRight", CssPropertyValue.Box(CssPropertyValue.paddingRightString(v)));
  let paddingRightNumber = v =>
    ("paddingRight", CssPropertyValue.Box(CssPropertyValue.paddingRightNumber(v)));

  let paddingBottom = v =>
    ("paddingBottom", CssPropertyValue.Box(CssPropertyValue.paddingBottom(v)));
  let paddingBottomString = v =>
    ("paddingBottom", CssPropertyValue.Box(CssPropertyValue.paddingBottomString(v)));
  let paddingBottomNumber = v =>
    ("paddingBottom", CssPropertyValue.Box(CssPropertyValue.paddingBottomNumber(v)));

  let paddingLeft = v =>
    ("paddingLeft", CssPropertyValue.Box(CssPropertyValue.paddingLeft(v)));
  let paddingLeftString = v =>
    ("paddingLeft", CssPropertyValue.Box(CssPropertyValue.paddingLeftString(v)));
  let paddingLeftNumber = v =>
    ("paddingLeft", CssPropertyValue.Box(CssPropertyValue.paddingLeftNumber(v)));

  let clear = v =>
    ("clear", CssPropertyValue.Box(CssPropertyValue.clear(v)));

  let color = v =>
    ("color", CssPropertyValue.Box(CssPropertyValue.color(v)));
  let colorString = v =>
    ("color", CssPropertyValue.Box(CssPropertyValue.colorString(v)));

  let cursor = v =>
    ("cursor", CssPropertyValue.Box(CssPropertyValue.cursor(v)));
  let cursor1 = (i, k) =>
    ("cursor", CssPropertyValue.Box(CssPropertyValue.cursor1(i, k)));
  let cursor2 = (i1, i2, k) =>
    ("cursor", CssPropertyValue.Box(CssPropertyValue.cursor2(i1, i2, k)));
  let cursor3 = (i1, i2, i3, k) =>
    ("cursor", CssPropertyValue.Box(CssPropertyValue.cursor3(i1, i2, i3, k)));
  let cursor4 = (i1, i2, i3, i4, k) =>
    ("cursor", CssPropertyValue.Box(CssPropertyValue.cursor4(i1, i2, i3, i4, k)));
  let cursorString = v =>
    ("cursor", CssPropertyValue.Box(CssPropertyValue.cursorString(v)));
};

module type MakeStyleType = (
  Type: {
    type t;
  }
) => {
  let style: array<(string, CssPropertyValue.box)> => Type.t;
};

module MakeStyle: MakeStyleType = (
  Type: {
    type t;
  }
) => {
  external makeStyle: Js.Dict.t<CssPropertyValue.box> => Type.t = "%identity";
  let style = entries => Js.Dict.fromArray(entries)->makeStyle;
};

include MakeValue();
include MakeProperty();
include MakeStyle({ type t = Js.Dict.t<CssPropertyValue.box> });