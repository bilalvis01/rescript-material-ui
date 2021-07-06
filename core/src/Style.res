/*
open Belt;
open StyleType;

type property = [
  | #border
  | #borderTop
  | #borderLeft
  | #borderRight
  | #borderBottom
  | #borderColor
  | #borderRadius
  | #display
  | #overflow
  | #textOverflow
  | #visibility
  | #whiteSpace
  | #flexDirection
  | #flexWrap
  | #justifyContent
  | #alignItems
  | #alignContent
  | #order
  | #flex
  | #flexGrow
  | #flexShrink
  | #alignSelf
  | #color
  | #backgroundColor
  | #position
  | #zIndex
  | #top
  | #right
  | #left
  | #bottom
  | #shadow
  | #width
  | #minWidth
  | #maxWidth
  | #height
  | #minHeight
  | #maxHeight
  | #margin
  | #marginTop
  | #marginRight
  | #marginBottom
  | #marginLeft
  | #padding
  | #paddingTop
  | #paddingRight
  | #paddingBottom
  | #paddingLeft
  | #fontFamily
  | #fontSize
  | #fontStyle
  | #fontWeight
  | #letterSpacing
  | #lineHeight
  | #textAlign
];

@unboxed
type rec declaration =
  | Declaration((property, 'a)): declaration;

type t = Js.Dict.t<declaration>;

let make = entries => Js.Dict.fromArray(entries);

module BorderColorValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(StringOf.color_global(v));
  let make2 = (~y, ~x) => Any(`${StringOf.color(y)} ${StringOf.color(x)}`);
  let make3 = 
    (~top, ~x, ~bottom) => 
    Any(`${StringOf.color(top)} ${StringOf.color(x)} ${StringOf.color(bottom)}`);
  let make4 = 
    (~top, ~right, ~bottom, ~left) => 
    Any(`${StringOf.color(top)} ${StringOf.color(right)} ${StringOf.color(bottom)} ${StringOf.color(left)}`);

  let string = v => Any(v);
};

module BorderRadiusValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(StringOf.borderRadius_global(v));
  let make2 = 
    (~tl_br, ~tr_bl) => Any(`${StringOf.borderRadius(tl_br)} ${StringOf.borderRadius(tr_bl)}`);
  let make3 = 
    (~tl, ~tr_bl, ~br) => 
    Any(`${StringOf.borderRadius(tl)} ${StringOf.borderRadius(tr_bl)} ${StringOf.borderRadius(br)}`);
  let make4 = (~tl, ~tr, ~br, ~bl) =>
    Any(`${StringOf.borderRadius(tl)} ${StringOf.borderRadius(tr)} ${StringOf.borderRadius(br)} ${StringOf.borderRadius(bl)}`);

  let ellipse = (~rx, ~ry) => Any(`${Obj.magic(rx)} / ${Obj.magic(ry)}`);

  let string = v => Any(v);
};

// Spacing
module MarginValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(StringOf.margin_global(v));
  let make2 = (~y, ~x) => Any(`${StringOf.margin(y)} ${StringOf.margin(x)}`);
  let make3 = 
    (~top, ~x, ~bottom) => Any(`${StringOf.margin(top)} ${StringOf.margin(x)} ${StringOf.margin(bottom)}`);
  let make4 =
    (~top, ~right, ~bottom, ~left) => 
    Any(`${StringOf.margin(top)} ${StringOf.margin(right)} ${StringOf.margin(bottom)} ${StringOf.margin(left)}`);

  let string = v => Any(v);
};

module PaddingValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(StringOf.padding_global(v));
  let make2 = (~y, ~x) => Any(`${StringOf.padding(y)} ${StringOf.padding(x)}`);
  let make3 = 
    (~top, ~x, ~bottom) => 
    Any(`${StringOf.padding(top)} ${StringOf.padding(x)} ${StringOf.padding(bottom)}`);
  let make4 =
    (~top, ~right, ~bottom, ~left) => 
    Any(`${StringOf.padding(top)} ${StringOf.padding(right)} ${StringOf.padding(bottom)} ${StringOf.padding(left)}`);

  let string = v => Any(v);
}

// Display
module DisplayValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(v);
  let make2 = (v1, v2) => Any(`${Obj.magic(v1)}, ${Obj.magic(v2)}`);

  let string = v => Any(v);
};

module OverflowValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(v);
  let make2 = (v1, v2) => Any(`${Obj.magic(v1)}, ${Obj.magic(v2)}`);

  let string = v => Any(v);
};

module TextOverflowValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(v);
  let make2 = (v1, v2) => Any(`${Obj.magic(v1)}, ${Obj.magic(v2)}`);

  let string = v => Any(v);
};

module VisibilityValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(v);

  let string = v => Any(v);
};

module WhiteSpaceValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(v);

  let string = v => Any(v);
};

// Sizing
module SizingValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(StringOf.sizing_global(v));

  let string = v => Any(v);
};

// Flexbox
module FlexDirectionValue = { 
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(v);

  let string = v => Any(v);
};

module FlexWrapValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(v);

  let string = v => Any(v);
};

module JustifyContentValue = {
  @unboxed
  type rec t =
    | Any('a): t;
  
  let make = v => Any(v);
  let make2 = (v1, v2) => Any(`${Obj.magic(v1)} ${Obj.magic(v2)}`);

  let string = v => Any(v);
};

module AlignItemsValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(v);
  let make2 = (v1, v2) => Any([[Obj.magic(v1), Obj.magic(v2)]]);
  
  let string = v => Any(v);
};

module AlignContentValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(v);
  let make2 = (v1, v2) => Any(`${Obj.magic(v1)} ${Obj.magic(v2)}`);
  
  let string = v => Any(v);
};

module OrderValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(v);
  
  let inherit = Any("inherit");
  let initial = Any("initial");
  let unset = Any("unset");
};

module FlexValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = (
    ~shrink=?,
    ~width as w=?,
    grow    
  ) => {
    let flex = grow->Float.toString;

    let flex = switch shrink {
      | Some(shrink) => `${flex} ${shrink->Float.toString}`
      | None => flex
    };

    Any(switch w {
      | Some(w) => `${flex} ${StringOf.width(w)}`
      | None => flex
    })
  };

  let string = v => Any(v);

  let none = Any("none");
  let auto = Any("auto");

  let inherit = Any("inherit");
  let initial = Any("initial");
  let unset = Any("unset");
};

module FlexGrowValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(v);

  let string = v => Any(v);

  let inherit = Any("inherit");
  let initial = Any("initial");
  let unset = Any("unset");
};

module FlexShrinkValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(v);

  let string = v => Any(v);

  let inherit = Any("inherit");
  let initial = Any("initial");
  let unset = Any("unset");
};

module AlignSelfValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(v);
  let make2 = (v1, v2) => Any(`${Obj.magic(v1)} ${Obj.magic(v2)}`);
  
  let string = v => Any(v);
};

// Position
module PositionValue = {
  type rec t =
    | Any('a): t;

  let make = v => Any(v);

  let string = v => Any(v);
};

module ZIndexValue = {
  type rec t =
    | Any('a): t;

  let make = v => Any(v);

  let auto = Any("auto");
  let inherit = Any("inherit");
  let initial = Any("initial");
  let unset = Any("unset");
};

module EdgePositionValue = {
  type rec t =
    | Any('a): t;

  let make = v => Any(StringOf.edgePosition_global(v));

  let string = v => Any(v);
};

// Palette
module ColorValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(StringOf.color_global(v));

  let string = v => Any(v);
};

// Shadows
module ShadowValue = {
  @unboxed
  type rec t =
  | Any('a): t;

  let make = (
    ~inset=false, 
    ~offsetX, 
    ~offsetY, 
    ~spread=?, 
    ~blur=?, 
    ~color as col=?,
    ()
  ) => {
    let shadow = `${StringOf.length(offsetX)} ${StringOf.length(offsetY)}`;

    let shadow = switch (blur, spread) {
      | (Some(blur), Some(spread)) => 
        `${shadow} ${StringOf.length(blur)} ${StringOf.length(spread)}`
      | (Some(blur), None) => `${shadow} ${StringOf.length(blur)}`
      | _ => shadow
    };

    let shadow = if inset == true {
      `inset ${shadow}`
    } else {
      shadow
    };

    Any(switch col {
      | Some(col) => `${shadow} ${StringOf.color(col)}`
      | None => shadow
    })
  };

  let many = shadows => 
    Any(shadows
    ->Array.reduceWithIndex("", (acc, shadow, i) => if i == 0 {
      Obj.magic(shadow)
    } else {
      `${acc}, ${Obj.magic(shadow)}`
    }));

  let string = v => Any(v);

  let none = Any("none");
  let inherit = Any("inherit");
  let initial = Any("initial");
  let unset = Any("unset");
};

// Typography
module FontFamilyValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => 
    Any(v
    ->Array.reduceWithIndex("", (acc, v, i) => if i == 0 {
      v
    } else {
      `${acc}, ${v}`
    }));

  let string = v => Any(v);

  let inherit = Any("inherit");
  let initial = Any("initial");
  let unset = Any("unset");
};

module FontSizeValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(StringOf.fontSize_global(v));

  let string = v => Any(v);
};

module FontStyleValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = (~angle=?, fontStyle) => Any(switch (fontStyle, angle) {
    | (#oblique, Some(a)) => `oblique ${StringOf.angle(a)}`
    | (#oblique, None) => "oblique"
    | (#normal, _) => "normal"
    | (#italic, _) => "italic"
    | (#inherit, _) => "inherit"
    | (#initial, _) => "initial"
    | (#unset, _) => "unset"
  });

  let string = v => Any(v);
};

module FontWeightValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(StringOf.fontWeight_global(v));

  let string = v => Any(v);
};

module LetterSpacingValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(StringOf.letterSpacing_global(v));

  let string = v => Any(v);
};

module LineHeightValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(StringOf.lineHeight_global(v));

  let string = v => Any(v);
};

module TextAlignValue = {
  @unboxed
  type rec t =
    | Any('a): t;

  let make = v => Any(v);

  let string = v => Any(v);
};

let num = v => #num(v);

let hsl = (v1, v2, v3) => 
  #hsl(StringOf.hue(v1), StringOf.percentage(v2), StringOf.percentage(v3));
let hsla = (v1, v2, v3, v4) => 
  #hsla(StringOf.hue(v1), StringOf.percentage(v2), StringOf.percentage(v3), StringOf.alphaValue(v4));
let rgb = (v1, v2, v3) =>
  #rgb(StringOf.rgbValue(v1), StringOf.rgbValue(v2), StringOf.rgbValue(v3));
let rgba = (v1, v2, v3, v4) =>
  #rgba(StringOf.rgbValue(v1), StringOf.rgbValue(v2), StringOf.rgbValue(v3), StringOf.alphaValue(v4));
let hex = v => #hex(v);

let deg = v => #deg(v);
let grad = v => #grad(v);
let rad = v => #rad(v);
let turn = v => #turn(v);

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
let pct = v => #pct(v);

// Border
let border = (
  ~width=?,
  ~style=?,
  ~color=?,
  ()
) => Declaration((#border, BorderValue.make(~width=?width, ~style=?style, ~color=?color, ())));
let borderString = v => Declaration((#border, BorderValue.string(v)));
let borderInherit = () => Declaration((#border, BorderValue.inherit));
let borderInitial = () => Declaration((#border, BorderValue.initial));
let borderUnset = () => Declaration((#border, BorderValue.unset));
let borderTop = (
  ~width=?,
  ~style=?,
  ~color=?,
  ()
) => Declaration((#borderTop, BorderValue.make(~width=?width, ~style=?style, ~color=?color, ())));
let borderTopString = v => Declaration((#borderTop, BorderValue.string(v)));
let borderTopInherit = () => Declaration((#borderTop, BorderValue.inherit));
let borderTopInitial = () => Declaration((#borderTop, BorderValue.initial));
let borderTopUnset = () => Declaration((#borderTop, BorderValue.unset));
let borderLeft = (
  ~width=?,
  ~style=?,
  ~color=?,
  ()
) => Declaration((#borderLeft, BorderValue.make(~width=?width, ~style=?style, ~color=?color, ())));
let borderLeftString = v => Declaration((#borderLeft, BorderValue.string(v)));
let borderLeftInherit = () => Declaration((#borderLeft, BorderValue.inherit));
let borderLeftInitial = () => Declaration((#borderLeft, BorderValue.initial));
let borderLeftUnset = () => Declaration((#borderLeft, BorderValue.unset));
let borderRight = (
  ~width=?,
  ~style=?,
  ~color=?,
  ()
) => Declaration((#borderRight, BorderValue.make(~width=?width, ~style=?style, ~color=?color, ())));
let borderRightString = v => Declaration((#borderRight, BorderValue.string(v)));
let borderRightInherit = () => Declaration((#borderRight, BorderValue.inherit));
let borderRightInitial = () => Declaration((#borderRight, BorderValue.initial));
let borderRightUnset = () => Declaration((#borderRight, BorderValue.unset));
let borderBottom = (
  ~width=?,
  ~style=?,
  ~color=?,
  ()
) => Declaration((#borderBottom, BorderValue.make(~width=?width, ~style=?style, ~color=?color, ())));
let borderBottomString = v => Declaration((#borderBottom, BorderValue.string(v)));
let borderBottomInherit = () => Declaration((#borderBottom, BorderValue.inherit));
let borderBottomInitial = () => Declaration((#borderBottom, BorderValue.initial));
let borderBottomUnset = () => Declaration((#borderBottom, BorderValue.unset));
let borderColor = v => Declaration((#borderColor, BorderColorValue.make(v)));
let borderColor2 = (~y, ~x) => Declaration((#borderColor, BorderColorValue.make2(~y, ~x)));
let borderColor3 = 
  (~top, ~x, ~bottom) => Declaration((#borderColor, BorderColorValue.make3(~top, ~x, ~bottom)));
let borderColor4 = 
  (~top, ~right, ~bottom, ~left) => Declaration((#borderColor, BorderColorValue.make4(~top, ~right, ~bottom, ~left)));
let borderColorString = v => Declaration((#borderColor, BorderColorValue.string(v)));
let borderRadius = v => Declaration((#borderRadius, BorderRadiusValue.make(v)));
let borderRadius2 = (~tl_br, ~tr_bl) => Declaration((#borderRadius, BorderRadiusValue.make2(~tl_br, ~tr_bl)));
let borderRadius3 = (~tl, ~tr_bl, ~br) => Declaration((#borderRadius, BorderRadiusValue.make3(~tl, ~tr_bl, ~br)));
let borderRadius4 = 
  (~tl, ~tr, ~br, ~bl) => Declaration((#borderRadius, BorderRadiusValue.make4(~tl, ~tr, ~br, ~bl)));
let borderRadiusEllipse = (~rx, ~ry) => Declaration((#borderRadius, BorderRadiusValue.ellipse(~rx, ~ry)));
let borderRadiusString = v => Declaration((#borderRadius, BorderRadiusValue.string(v)));

// Display
let display = v => Declaration((#display, DisplayValue.make(v)));
let display2 = (v1, v2) => Declaration((#display, DisplayValue.make2(v1, v2)));
let displayString = v => Declaration((#display, DisplayValue.string(v)));
let overflow = v => Declaration((#overflow,OverflowValue.make(v)));
let overflow2 = (v1, v2) => Declaration((#overflow,OverflowValue.make2(v1, v2)));
let overflowString = v => Declaration((#overflow,OverflowValue.string(v)));
let textOverflow = v => Declaration((#textOverflow, TextOverflowValue.make(v)));
let textOverflow2 = (v1, v2) => Declaration((#textOverflow, TextOverflowValue.make2(v1, v2)));
let textOverflowString = v => Declaration((#textOverflow, TextOverflowValue.string(v)));
let visibility = v => Declaration((#visibility, VisibilityValue.make(v)));
let visibilityString = v => Declaration((#visibility, VisibilityValue.string(v)));
let whiteSpace = v => Declaration((#whiteSpace, WhiteSpaceValue.make(v)));
let whiteSpaceString = v => Declaration((#whiteSpace, WhiteSpaceValue.string(v)));

// Flexbox
let flexDirection = v => Declaration((#flexDirection, FlexDirectionValue.make(v)));
let flexDirectionString = v => Declaration((#flexDirection, FlexDirectionValue.string(v)));
let flexWrap = v => Declaration((#flexWrap, FlexWrapValue.make(v)));
let flexWrapString = v => Declaration((#flexWrap, FlexWrapValue.string(v)));
let justifyContent = v => Declaration((#justifyContent, JustifyContentValue.make(v)));
let justifyContent2 = (v1, v2) => Declaration((#justifyContent, JustifyContentValue.make2(v1, v2)));
let justifyContentString = v => Declaration((#justifyContent, JustifyContentValue.string(v)));
let alignItems = v => Declaration((#alignItems, AlignItemsValue.make(v)));
let alignItems2 = (v1, v2) => Declaration((#alignItems, AlignItemsValue.make2(v1, v2)));
let alignItemsString = v => Declaration((#alignItems, AlignItemsValue.string(v)));
let alignContent = v => Declaration((#alignContent, AlignContentValue.make(v)));
let alignContent2 = (v1, v2) => Declaration((#alignContent, AlignContentValue.make2(v1, v2)));
let alignContentString = v => Declaration((#alignContent, AlignContentValue.string(v)));
let order = v => Declaration((#order, OrderValue.make(v)));
let orderInherit = () => Declaration((#order, OrderValue.inherit));
let orderInitial = () => Declaration((#order, OrderValue.initial));
let orderUnset = () => Declaration((#order, OrderValue.unset));
let flex = (
  ~shrink=?,
  ~width=?,
  grow
) => Declaration((#flex, FlexValue.make(~shrink=?shrink, ~width=?width, grow)));
let flexString = v => Declaration((#flex, FlexValue.string(v)));
let flexNone = () => Declaration((#flex, FlexValue.none));
let flexAuto = () => Declaration((#flex, FlexValue.auto));
let flexInitial = () => Declaration((#flex, FlexValue.initial));
let flexInherit = () => Declaration((#flex, FlexValue.inherit));
let flexUnset = () => Declaration((#flex, FlexValue.unset));
let flexGrow = v => Declaration((#flexGrow, FlexGrowValue.make(v)));
let flexGrowInherit = () => Declaration((#flexGrow, FlexGrowValue.inherit));
let flexGrowInitial = () => Declaration((#flexGrow, FlexGrowValue.initial));
let flexGrowUnset = () => Declaration((#flexGrow, FlexGrowValue.unset));
let flexShrink = v => Declaration((#flexShrink, FlexShrinkValue.make(v)));
let flexShrinkInherit = () => Declaration((#flexShrink, FlexShrinkValue.inherit));
let flexShrinkInitial = () => Declaration((#flexShrink, FlexShrinkValue.initial));
let flexShrinkUnset = () => Declaration((#flexShrink, FlexShrinkValue.unset));
let alignSelf = v => Declaration((#alignSelf, AlignSelfValue.make(v)));
let alignSelf2 = (v1, v2) => Declaration((#alignSelf, AlignSelfValue.make2(v1, v2)));
let alignSelfString = v => Declaration((#alignSelf, AlignSelfValue.string(v)));

// Palletes
let color = v => Declaration((#color, ColorValue.make(v)));
let colorString = v => Declaration((#color, ColorValue.string(v)));
let backgroundColor = v => Declaration((#backgroundColor, ColorValue.make(v)));
let backgroundColorString = v => Declaration((#backgroundColor, ColorValue.string(v)));

// Positions
let position = v => Declaration((#position, PositionValue.make(v)));
let positionString = v => Declaration(#position, PositionValue.string(v));
let zIndex = v => Declaration((#zIndex, ZIndexValue.make(v)));
let zIndexAuto = () => Declaration((#zIndex, ZIndexValue.auto));
let zIndexInherit = () => Declaration((#zIndex, ZIndexValue.inherit));
let zIndexInitial = () => Declaration((#zIndex, ZIndexValue.initial));
let zIndexUnset = () => Declaration((#zIndex, ZIndexValue.unset));
let top = v => Declaration((#top, EdgePositionValue.make(v)));
let topString = v => Declaration((#top, EdgePositionValue.string(v)));
let right = v => Declaration((#right, EdgePositionValue.make(v)));
let rightString = v => Declaration((#right, EdgePositionValue.string(v)));
let left = v => Declaration((#left, EdgePositionValue.make(v)));
let leftString = v => Declaration((#left, EdgePositionValue.string(v)));
let bottom = v => Declaration((#bottom, EdgePositionValue.make(v)));
let bottomString = v => Declaration((#bottom, EdgePositionValue.string(v)));

// Shadows
let shadow = (
  ~inset=false,
  ~offsetX,
  ~offsetY,
  ~blur=?,
  ~spread=?,
  ~color=?,
  ()
) => Declaration((
  #shadow, 
  ShadowValue.make(
    ~inset, 
    ~offsetX, 
    ~offsetY, 
    ~blur=?blur, 
    ~spread=?spread, 
    ~color=?color, 
    ()
  )
));
let shadowMany = v => Declaration((#shadow, ShadowValue.many(v)));
let shadowString = v => Declaration((#shadow, ShadowValue.string(v)));
let shadowNone = () => Declaration((#shadow, ShadowValue.none));
let shadowInherit = () => Declaration((#shadow, ShadowValue.inherit));
let shadowInitial = () => Declaration((#shadow, ShadowValue.initial));
let shadowUnset = () => Declaration((#shadow, ShadowValue.unset));

// Sizing
let width = v => Declaration((#width, SizingValue.make(v)));
let widthString = v => Declaration((#width, SizingValue.string(v)));
let minWidth = v => Declaration((#minWidth, SizingValue.make(v)));
let minWidthString = v => Declaration((#minWidth, SizingValue.string(v)));
let maxWidth = v => Declaration((#maxWidth, SizingValue.make(v)));
let maxWidthString = v => Declaration((#maxWidth, SizingValue.string(v)));
let height = v => Declaration((#height, SizingValue.make(v)));
let heightString = v => Declaration((#height, SizingValue.string(v)));
let minHeight = v => Declaration((#minHeight, SizingValue.make(v)));
let minHeightString = v => Declaration((#minHeight, SizingValue.string(v)));
let maxHeight = v => Declaration((#maxHeight, SizingValue.make(v)));
let maxHeightString = v => Declaration((#maxHeight, SizingValue.string(v)));

// Spacing
let margin = v => Declaration((#margin, MarginValue.make(v)));
let margin2 = (~y, ~x) => Declaration((#margin, MarginValue.make2(~y, ~x)));
let margin3 = 
  (~top, ~x, ~bottom) => Declaration((#margin, MarginValue.make3(~top, ~x, ~bottom)));
let margin4 = 
  (~top, ~right, ~bottom, ~left) =>
  Declaration((#margin, MarginValue.make4(~top, ~right, ~bottom, ~left)));
let marginString = v => Declaration((#margin, MarginValue.string(v)));
let marginTop = v => Declaration((#marginTop, MarginValue.make(v)));
let marginTopString = v => Declaration((#marginTop, MarginValue.string(v)));
let marginRight = v => Declaration((#marginRight, MarginValue.make(v)));
let marginRightString = v => Declaration((#marginRight, MarginValue.string(v)));
let marginBottom = v => Declaration((#marginBottom, MarginValue.make(v)));
let marginBottomString = v => Declaration((#marginBottom, MarginValue.string(v)));
let marginLeft = v => Declaration((#marginLeft, MarginValue.make(v)));
let marginLeftString = v => Declaration((#marginLeft, MarginValue.string(v)));
let padding = v => Declaration((#padding, PaddingValue.make(v)));
let padding2 = (~y, ~x) => Declaration((#padding, PaddingValue.make2(~y, ~x)));
let padding3 = 
  (~top, ~x, ~bottom) => Declaration((#padding, PaddingValue.make3(~top, ~x, ~bottom)));
let padding4 = 
  (~top, ~right, ~bottom, ~left) =>
  Declaration((#padding, PaddingValue.make4(~top, ~right, ~bottom, ~left)));
let paddingString = v => Declaration((#padding, PaddingValue.string(v)));
let paddingTop = v => Declaration((#paddingTop, PaddingValue.make(v)));
let paddingTopString = v => Declaration((#paddingTop, PaddingValue.string(v)));
let paddingRight = v => Declaration((#paddingRight, PaddingValue.make(v)));
let paddingRightString = v => Declaration((#paddingRight, PaddingValue.string(v)));
let paddingBottom = v => Declaration((#paddingBottom, PaddingValue.make(v)));
let paddingBottomString = v => Declaration((#paddingBottom, PaddingValue.string(v)));
let paddingLeft = v => Declaration((#paddingLeft, PaddingValue.make(v)));
let paddingLeftString = v => Declaration((#paddingLeft, PaddingValue.string(v)));

// Typography
let fontFamily = v => Declaration((#fontFamily, FontFamilyValue.make(v)));
let fontFamilyString = v => Declaration((#fontFamily, FontFamilyValue.string(v)));
let fontFamilyInherit = () => Declaration((#fontFamily, FontFamilyValue.inherit));
let fontFamilyInitial = () => Declaration((#fontFamily, FontFamilyValue.initial));
let fontFamilyUnset = () => Declaration((#fontFamily, FontFamilyValue.unset));
let fontSize = v => Declaration((#fontSize, FontSizeValue.make(v)));
let fontSizeString = v => Declaration((#fontSize, FontSizeValue.string(v)));
let fontStyle = (~angle=?, fontStyle) => Declaration((#fontStyle, FontStyleValue.make(~angle=?angle, fontStyle)));
let fontStyleString = v => Declaration((#fontStyle, FontStyleValue.string(v)));
let fontWeight = v => Declaration((#fontWeight, FontWeightValue.make(v)));
let fontWeightString = v => Declaration((#fontWeight, FontWeightValue.string(v)));
let letterSpacing = v => Declaration((#letterSpacing, LetterSpacingValue.make(v)));
let letterSpacingString = v => Declaration((#letterSpacing, LetterSpacingValue.string(v)));
let lineHeight = v => Declaration((#lineHeight, LineHeightValue.make(v)));
let lineHeightString = v => Declaration((#lineHeight, LineHeightValue.string(v)));
let textAlign = v => Declaration((#textAlign, TextAlignValue.make(v)));
let textAlignString = v => Declaration((#textAlign, TextAlignValue.string(v)));
*/