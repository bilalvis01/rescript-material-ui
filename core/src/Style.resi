/*
open StyleType;

type declaration;

type t = Js.Dict.t<declaration>;

// Border
module BorderValue: {
  type t;
    
  let make: (
    ~width: lineWidth=?,
    ~style: lineStyle=?,
    ~color: color=?,
    unit
  ) => t;

  let string: string => t;

  let inherit: t;
  let initial: t;
  let unset: t;
};

module BorderColorValue: {
  type t;

  let make: color_global => t;
  let make2: (~y: color, ~x: color) => t;
  let make3: (~top: color, ~x: color, ~bottom: color) => t;
  let make4: (~top: color, ~right: color, ~bottom: color, ~left: color) => t;

  let string: string => t;
};

module BorderRadiusValue: {
  type t;

  let make: borderRadius_global => t;
  let make2: (~tl_br: borderRadius, ~tr_bl: borderRadius) => t;
  let make3: (~tl: borderRadius, ~tr_bl: borderRadius, ~br: borderRadius) => t;
  let make4: 
    (~tl: borderRadius, ~tr: borderRadius, ~br: borderRadius, ~bl: borderRadius) => t;

  let ellipse: (~rx: t, ~ry: t) => t;

  let string: string => t;
};

// Spacing
module MarginValue: {
  type t;

  let make: margin_global => t;
  let make2: (~y: margin, ~x: margin) => t;
  let make3: 
    (~top: margin, ~x: margin, ~bottom: margin) => t;
  let make4:
    (~top: margin, ~right: margin, ~bottom: margin, ~left: margin) => t;

  let string: string => t;
};

module PaddingValue: {
  type t;

  let make: padding_global => t;
  let make2: (~y: padding, ~x: padding) => t;
  let make3: (
    ~top: padding, 
    ~x: padding, 
    ~bottom: padding
  ) => t;
  let make4: (
    ~top: padding, 
    ~right: padding, 
    ~bottom: padding, 
    ~left: padding
  ) => t;

  let string: string => t;
};

// Display
module DisplayValue: {
  type t;

  let make: display_global => t;
  let make2: (displayOutside, displayInside) => t;

  let string: string => t;
};

module OverflowValue: {
  type t;

  let make: overflow_global => t;
  let make2: (overflow, overflow) => t;

  let string: string => t;
};

module TextOverflowValue: {
  type t;

  let make: textOverflow_global => t;
  let make2: (textOverflow, textOverflow) => t;

  let string: string => t;
};

module VisibilityValue: {
  type t;

  let make: visibility_global => t;

  let string: string => t;
};

module WhiteSpaceValue: {
  type t;

  let make: whiteSpace_global => t;

  let string: string => t;
};

// Sizing
module SizingValue: {
  type t;

  let make: sizing_global => t;

  let string: string => t;
};

// Flexbox
module FlexDirectionValue: {
  type t;

  let make: flexDirection_global => t;

  let string: string => t;
};

module FlexWrapValue: {
  type t;

  let make: flexWrap_global => t;

  let string: string => t;
};

module JustifyContentValue: {
  type t;

  let make: justifyContent_global => t;
  let make2: (overflowPosition, contentPosition_lr) => t;

  let string: string => t;
};

module AlignItemsValue: {
  type t;

  let make: alignItems_global => t;
  let make2: (overflowPosition, selfPosition) => t;

  let string: string => t;
};

module AlignContentValue: {
  type t;

  let make: alignContent_global => t;
  let make2: (overflowPosition, contentPosition) => t;

  let string: string => t;
};

module OrderValue: {
  type t;

  let make: int => t;

  let inherit: t;
  let initial: t;
  let unset: t;
};

module FlexValue: {
  type t;

  let make: (~shrink: float=?, ~width: width=?, float) => t;
  
  let string: string => t;

  let none: t;
  let auto: t;

  let inherit: t;
  let initial: t;
  let unset: t;
};

module FlexGrowValue: {
  type t;

  let make: float => t;

  let string: string => t;

  let inherit: t;
  let initial: t;
  let unset: t;
};

module FlexShrinkValue: {
  type t;

  let make: float => t;

  let string: string => t;

  let inherit: t;
  let initial: t;
  let unset: t;
};

module AlignSelfValue: {
  type t;

  let make: alignSelf_global => t;
  let make2: (overflowPosition, selfPosition) => t;

  let string: string => t;
};

// Positions
module PositionValue: {
  type t;

  let make: position => t;

  let string: string => t;
};

module ZIndexValue: {
  type t;

  let make: int => t;

  let auto: t;
  let inherit: t;
  let initial: t;
  let unset: t;
};

module EdgePositionValue: {
  type t;

  let make: edgePosition_global => t;

  let string: string => t;
};

module ColorValue: {
  type t;

  let make: color_global => t;
  
  let string: string => t;
};

module ShadowValue: {
  type t;

  let make: (
    ~inset: bool=?,
    ~offsetX: length,
    ~offsetY: length,
    ~spread: length=?,
    ~blur: length=?,
    ~color: color=?,
    unit
  ) => t;

  let many: array<t> => t;

  let string: string => t;

  let none: t;
  let inherit: t;
  let initial: t;
  let unset: t;
};

module FontFamilyValue: {
  type t;

  let make: array<string> => t;

  let string: string => t;

  let inherit: t;
  let initial: t;
  let unset: t;
};

module FontSizeValue: {
  type t;

  let make: fontSize_global => t;

  let string: string => t;
};

module FontStyleValue: {
  type t;

  let make: (~angle: angle=?, fontStyle_global) => t;

  let string: string => t;
};

module FontWeightValue: {
  type t;

  let make: fontWeight_global => t;

  let string: string => t;
};

module LetterSpacingValue: {
  type t;

  let make: letterSpacing_global => t;

  let string: string => t;
};

let num: float => [> | #num(float) ];

let hsl: (hue, percentage, percentage) => [> | #hsl(string, string, string) ]
let hsla: (hue, percentage, percentage, alphaValue) => [> | #hsla(string, string, string, string) ]
let rgb: (rgbValue, rgbValue, rgbValue) => [> | #rgb(string, string, string) ]
let rgba: (rgbValue, rgbValue, rgbValue, alphaValue) => [> | #rgba(string, string, string, string) ]
let hex: string => [> | #hex(string) ];

let deg: float => [> | #deg(float) ];
let grad: float => [> | #grad(float) ];
let rad: float => [> | #rad(float) ];
let turn: float => [> | #turn(float) ];

let ch: float => [> | #ch(float) ];
let em: float => [> | #em(float) ];
let ex: float => [> | #ex(float) ];
let rem: float => [> | #rem(float) ];
let vh: float => [> | #vh(float) ];
let vw: float => [> | #vw(float) ];
let vmin: float => [> | #vmin(float) ];
let vmax: float => [> | #vmax(float) ];
let px: float => [> | #px(float) ];
let cm: float => [> | #cm(float) ];
let mm: float => [> | #mm(float) ];
let inch: float => [> | #inch(float) ];
let pc: float => [> | #pc(float) ];
let pt: float => [> | #pt(float) ];
let pct: float => [> | #pct(float) ];

let border: (
  ~width: lineWidth=?,
  ~style: lineStyle=?,
  ~color: color=?,
  unit
) => declaration;
let borderString: string => declaration;
let borderInherit: unit => declaration;
let borderInitial: unit => declaration;
let borderUnset: unit => declaration;
let borderTop: (
  ~width: lineWidth=?,
  ~style: lineStyle=?,
  ~color: color=?,
  unit
) => declaration;
let borderTopString: string => declaration;
let borderTopInherit: unit => declaration;
let borderTopInitial: unit => declaration;
let borderTopUnset: unit => declaration;
let borderLeft: (
  ~width: lineWidth=?,
  ~style: lineStyle=?,
  ~color: color=?,
  unit
) => declaration;
let borderLeftString: string => declaration;
let borderLeftInherit: unit => declaration;
let borderLeftInitial: unit => declaration;
let borderLeftUnset: unit => declaration;
let borderRight: (
  ~width: lineWidth=?,
  ~style: lineStyle=?,
  ~color: color=?,
  unit
) => declaration;
let borderRightString: string => declaration;
let borderRightInherit: unit => declaration;
let borderRightInitial: unit => declaration;
let borderRightUnset: unit => declaration;
let borderBottom: (
  ~width: lineWidth=?,
  ~style: lineStyle=?,
  ~color: color=?,
  unit
) => declaration;
let borderBottomString: string => declaration;
let borderBottomInherit: unit => declaration;
let borderBottomInitial: unit => declaration;
let borderBottomUnset: unit => declaration;
let borderColor: color_global => declaration;
let borderColor2: (~y: color, ~x: color) => declaration;
let borderColor3: (~top: color, ~x: color, ~bottom: color) => declaration;
let borderColor4: (~top: color, ~right: color, ~bottom: color, ~left: color) => declaration;
let borderColorString: string => declaration;
let borderRadius: borderRadius_global => declaration;
let borderRadius2: (~tl_br: borderRadius, ~tr_bl: borderRadius) => declaration;
let borderRadius3: 
  (~tl: borderRadius, ~tr_bl: borderRadius, ~br: borderRadius) => declaration;
let borderRadius4: (
  ~tl: borderRadius, 
  ~tr: borderRadius, 
  ~br: borderRadius, 
  ~bl: borderRadius
) => declaration;
let borderRadiusEllipse: (~rx: BorderRadiusValue.t, ~ry: BorderRadiusValue.t) => declaration;
let borderRadiusString: string => declaration;

// Display
let display: display => declaration;
let display2: (displayOutside, displayInside) => declaration;
let displayString: string => declaration;
let overflow: overflow_global => declaration;
let overflow2: (overflow, overflow) => declaration;
let overflowString: string => declaration;
let textOverflow: textOverflow_global => declaration;
let textOverflow2: (textOverflow, textOverflow) => declaration;
let textOverflowString: string => declaration;
let visibility: visibility_global => declaration;
let visibilityString: string => declaration;
let whiteSpace: whiteSpace_global => declaration;
let whiteSpaceString: string => declaration;

// Flexbox
let flexDirection: flexDirection_global => declaration;
let flexDirectionString: string => declaration;
let flexWrap: flexWrap_global => declaration;
let flexWrapString: string => declaration;
let justifyContent: justifyContent_global => declaration;
let justifyContent2: (overflowPosition, contentPosition_lr) => declaration;
let justifyContentString: string => declaration;
let alignItems: alignItems_global => declaration;
let alignItems2: (overflowPosition, selfPosition) => declaration;
let alignItemsString: string => declaration;
let alignContent: alignContent_global => declaration;
let alignContent2: (overflowPosition, contentPosition) => declaration;
let alignContentString: string => declaration;
let order: int => declaration;
let orderInherit: unit => declaration;
let orderInitial: unit => declaration;
let orderUnset: unit => declaration;
let flex: (~shrink: float=?, ~width: width=?, float) => declaration;
let flexString: string => declaration;
let flexNone: unit => declaration;
let flexAuto: unit => declaration;
let flexInitial: unit => declaration;
let flexInherit: unit => declaration;
let flexUnset: unit => declaration;
let flexGrow: float => declaration;
let flexGrowInherit: unit => declaration;
let flexGrowInitial: unit => declaration;
let flexGrowUnset: unit => declaration;
let flexShrink: float => declaration;
let flexShrinkInherit: unit => declaration;
let flexShrinkInitial: unit => declaration;
let flexShrinkUnset: unit => declaration;
let alignSelf: alignSelf_global => declaration;
let alignSelf2: (overflowPosition, selfPosition) => declaration;
let alignSelfString: string => declaration;

// Palette
let color: color_global => declaration;
let colorString: string => declaration;
let backgroundColor: color_global => declaration;
let backgroundColorString: string => declaration;

// Positions
let position: position_global => declaration;
let positionString: string => declaration;
let zIndex: int => declaration;
let zIndexAuto: unit => declaration;
let zIndexInherit: unit => declaration;
let zIndexInitial: unit => declaration;
let zIndexUnset: unit => declaration;
let top: edgePosition_global => declaration;
let topString: string => declaration;
let right: edgePosition_global => declaration;
let rightString: string => declaration;
let left: edgePosition_global => declaration;
let leftString: string => declaration;
let bottom: edgePosition_global => declaration;
let bottomString: string => declaration;

// Shadows
let shadow: (
  ~inset: bool=?,
  ~offsetX: length,
  ~offsetY: length,
  ~blur: length=?,
  ~spread: length=?,
  ~color: color=?,
  unit
) => declaration;
let shadowMany: array<ShadowValue.t> => declaration;
let shadowString: string => declaration;
let shadowNone: unit => declaration;
let shadowInherit: unit => declaration;
let shadowInitial: unit => declaration;
let shadowUnset: unit => declaration;

// Sizing
let width: sizing_global => declaration;
let widthString: string => declaration;
let minWidth: sizing_global => declaration;
let minWidthString: string => declaration;
let maxWidth: sizing_global => declaration;
let maxWidthString: string => declaration;
let height: sizing_global => declaration;
let heightString: string => declaration;
let minHeight: sizing_global => declaration;
let minHeightString: string => declaration;
let maxHeight: sizing_global => declaration;
let maxHeightString: string => declaration;

// Spacing
let margin: margin_global => declaration;
let margin2: (~y: margin, ~x: margin) => declaration;
let margin3: (
  ~top: margin,
  ~x: margin,
  ~bottom: margin,
) => declaration;
let margin4: (
  ~top: margin,
  ~right: margin,
  ~bottom: margin,
  ~left: margin,
) => declaration;
let marginString: string => declaration;
let marginTop: margin_global => declaration;
let marginTopString: string => declaration;
let marginRight: margin_global => declaration;
let marginRightString: string => declaration;
let marginBottom: margin_global => declaration;
let marginBottomString: string => declaration;
let marginLeft: margin_global => declaration;
let marginLeftString: string => declaration;
let padding: padding_global => declaration;
let padding2: 
  (~y: padding, ~x: padding) => declaration;
let padding3: (
  ~top: padding,
  ~x: padding,
  ~bottom: padding,
) => declaration;
let padding4: (
  ~top: padding,
  ~right: padding,
  ~bottom: padding,
  ~left: padding,
) => declaration;
let paddingString: string => declaration;
let paddingTop: padding_global => declaration;
let paddingTopString: string => declaration;
let paddingRight: padding_global => declaration;
let paddingRightString: string => declaration;
let paddingBottom: padding_global => declaration;
let paddingBottomString: string => declaration;
let paddingLeft: padding_global => declaration;
let paddingLeftString: string => declaration;

// Typography
let fontFamily: array<string> => declaration;
let fontFamilyString: string => declaration;
let fontFamilyInherit: unit => declaration;
let fontFamilyInitial: unit => declaration;
let fontFamilyUnset: unit => declaration;
let fontSize: fontSize_global => declaration;
let fontSizeString: string => declaration;
let fontStyle: (~angle: angle=?, fontStyle_global) => declaration;
let fontStyleString: string => declaration;
let fontWeight: fontWeight_global => declaration;
let fontWeightString: string => declaration;
let letterSpacing: letterSpacing_global => declaration;
let letterSpacingString: string => declaration;
let lineHeight: lineHeight_global => declaration;
let lineHeightString: string => declaration;
let textAlign: textAlign_global => declaration;
let textAlignString: string => declaration;
*/
