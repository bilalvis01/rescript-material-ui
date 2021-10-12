module Data: {
  open CssType.Data;

  /*
  Textual data types
  */
  let global: global => string;
  let str: cssStr => string;

  /*
  Numeric data types
  */
  let num: cssNum => string;
  let int: cssInt => string;
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
  let px: int => string;
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
  let hexColor: string => string;
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
  let bgImage_global: bgImage_global => string;
  let bgSize: bgSize => string;
  let position: position => string;
  let position_global: position_global => string;
  let repeatStyle: repeatStyle => string;
  let repeatStyle_global: repeatStyle_global => string;
  let attachment: attachment => string;
  let attachment_global: attachment_global => string;
  let box: box => string;

  /*
  Background
  */
  let bg: (
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

  let fontWeight: fontWeight => string;
  let fontWeight_global: fontWeight_global => string;

  /*
  Font Family
  */
  let genericFontFamilyName: genericFontFamilyName => string;
  let fontFamily: fontFamily => string;
  let fontFamily_global: fontFamily_global => string;
}

/*
============================================================================
Property
============================================================================
*/
module Property: {
  open CssType.Property;

  let background: background<string>;
  let background2: background2<string>;
  let background3: background3<string>;
  let background4: background4<string>;

  let backgroundAttachment: backgroundAttachment<string>;
  let backgroundAttachment2: backgroundAttachment2<string>;
  let backgroundAttachment3: backgroundAttachment3<string>;
  let backgroundAttachment4: backgroundAttachment4<string>;

  let backgroundColor: backgroundColor<string>;

  let backgroundImage: backgroundImage<string>;
  let backgroundImage2: backgroundImage2<string>;
  let backgroundImage3: backgroundImage3<string>;
  let backgroundImage4: backgroundImage4<string>;

  let backgroundPosition: backgroundPosition<string>;
  let backgroundPosition2: backgroundPosition2<string>;
  let backgroundPosition3: backgroundPosition3<string>;
  let backgroundPosition4: backgroundPosition4<string>;

  let backgroundStyle: backgroundStyle<string>;
  let backgroundStyle2: backgroundStyle2<string>;
  let backgroundStyle3: backgroundStyle3<string>;
  let backgroundStyle4: backgroundStyle4<string>;

  let border: border<string>;

  let borderStyle: borderStyle<string>;
  let borderStyle2: borderStyle2<string>;
  let borderStyle3: borderStyle3<string>;
  let borderStyle4: borderStyle4<string>;

  let borderWidth: borderWidth<string>;
  let borderWidth2: borderWidth2<string>;
  let borderWidth3: borderWidth3<string>;
  let borderWidth4: borderWidth4<string>;

  let borderColor: borderColor<string>;
  let borderColor2: borderColor2<string>;
  let borderColor3: borderColor3<string>;
  let borderColor4: borderColor4<string>;

  let color: color<string>;

  let clear: clear<string>;

  let cursor: cursor<string>;
  let cursor1: cursor1<string>;
  let cursor2: cursor2<string>;
  let cursor3: cursor3<string>;
  let cursor4: cursor4<string>;

  let fontFamily: fontFamily<string>;
  let fontFamily2: fontFamily2<string>;
  let fontFamily3: fontFamily3<string>;
  let fontFamily4: fontFamily4<string>;

  let fontWeight: fontWeight<string>;

  let margin: margin<string>;
  let margin2: margin2<string>;
  let margin3: margin3<string>;
  let margin4: margin4<string>;

  let padding: padding<string>;
  let padding2: padding2<string>;
  let padding3: padding3<string>;
  let padding4: padding4<string>;
};