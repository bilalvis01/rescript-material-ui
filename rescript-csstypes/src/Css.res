open CssType;

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

// TransformOrigin
let transformOrigin2 = (~length=?, x, y) => #transformOrigin2(x, y, length);

/*
Color data types
*/
let hsl = (v1, v2, v3) => #hsl(num(v1), v2, v3);
let hsla = (v1, v2, v3, v4) => #hsla(num(v1), v2, v3, num(v4));
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

/*
properties
*/
@unboxed
type rec box_propertyValue =
  | PropertyValue(CssPropertyValue.synthetic<'a>): box_propertyValue;

type property = (string, box_propertyValue);

let property = (name, value) => (name, PropertyValue(value));
let propertyString = (name, value) => (name, PropertyValue(CssPropertyValue.string(value)));
let propertyNumber = (name, value) => (name, PropertyValue(CssPropertyValue.number(value)));
let propertyInteger = (name, value) => (name, PropertyValue(CssPropertyValue.integer(value)));

let border = (~width=?, ~color=?, style) => 
  ("border", PropertyValue(CssPropertyValue.border(~width=?width, ~color=?color, style)));
let borderString = v => ("border", PropertyValue(CssPropertyValue.string(v)));

let borderTop = (~width=?, ~color=?, style) => 
  ("borderTop", PropertyValue(CssPropertyValue.border(~width=?width, ~color=?color, style)));
let borderTopString = v => ("borderTop", PropertyValue(CssPropertyValue.string(v)));

let borderLeft = (~width=?, ~color=?, style) => 
  ("borderLeft", PropertyValue(CssPropertyValue.border(~width=?width, ~color=?color, style)));
let borderLeftString = v => ("borderLeft", PropertyValue(CssPropertyValue.string(v)));

let borderRight = (~width=?, ~color=?, style) => 
  ("borderRight", PropertyValue(CssPropertyValue.border(~width=?width, ~color=?color, style)));
let borderRightString = v => ("borderRight", PropertyValue(CssPropertyValue.string(v)));

let borderBottom = (~width=?, ~color=?, style) => 
  ("borderBottom", PropertyValue(CssPropertyValue.border(~width=?width, ~color=?color, style)));
let borderBottomString = v => ("borderBottom", PropertyValue(CssPropertyValue.string(v)));

let borderColor = v => ("borderColor", PropertyValue(CssPropertyValue.borderColor(v)));
let borderColor2 = (~tb, ~lr) => ("borderColor", PropertyValue(CssPropertyValue.borderColor2(~tb, ~lr)));
let borderColor3 = (~top, ~lr, ~bottom) =>
  ("borderColor", PropertyValue(CssPropertyValue.borderColor3(~top, ~lr, ~bottom)));
let borderColor4 = (~top, ~right, ~bottom, ~left) =>
  ("borderColor", PropertyValue(CssPropertyValue.borderColor4(~top, ~right, ~bottom, ~left)));
let borderColorString = v => ("borderColor", PropertyValue(CssPropertyValue.string(v)));

let borderTopColor = v => ("borderTopColor", PropertyValue(CssPropertyValue.borderColor(v)));
let borderTopColor2 = (~tb, ~lr) => ("borderTopColor", PropertyValue(CssPropertyValue.borderColor2(~tb, ~lr)));
let borderTopColor3 = (~top, ~lr, ~bottom) =>
  ("borderTopColor", PropertyValue(CssPropertyValue.borderColor3(~top, ~lr, ~bottom)));
let borderTopColor4 = (~top, ~right, ~bottom, ~left) =>
  ("borderTopColor", PropertyValue(CssPropertyValue.borderColor4(~top, ~right, ~bottom, ~left)));
let borderTopColorString = v => ("borderTopColor", PropertyValue(CssPropertyValue.string(v)));

let borderRightColor = v => ("borderRightColor", PropertyValue(CssPropertyValue.borderColor(v)));
let borderRightColor2 = (~tb, ~lr) => ("borderRightColor", PropertyValue(CssPropertyValue.borderColor2(~tb, ~lr)));
let borderRightColor3 = (~top, ~lr, ~bottom) =>
  ("borderRightColor", PropertyValue(CssPropertyValue.borderColor3(~top, ~lr, ~bottom)));
let borderRightColor4 = (~top, ~right, ~bottom, ~left) =>
  ("borderRightColor", PropertyValue(CssPropertyValue.borderColor4(~top, ~right, ~bottom, ~left)));
let borderRightColorString = v => ("borderRightColor", PropertyValue(CssPropertyValue.string(v)));

let borderLeftColor = v => ("borderLeftColor", PropertyValue(CssPropertyValue.borderColor(v)));
let borderLeftColor2 = (~tb, ~lr) => ("borderLeftColor", PropertyValue(CssPropertyValue.borderColor2(~tb, ~lr)));
let borderLeftColor3 = (~top, ~lr, ~bottom) =>
  ("borderLeftColor", PropertyValue(CssPropertyValue.borderColor3(~top, ~lr, ~bottom)));
let borderLeftColor4 = (~top, ~right, ~bottom, ~left) =>
  ("borderLeftColor", PropertyValue(CssPropertyValue.borderColor4(~top, ~right, ~bottom, ~left)));
let borderLeftColorString = v => ("borderLeftColor", PropertyValue(CssPropertyValue.string(v)));

let borderBottomColor = v => ("borderBottomColor", PropertyValue(CssPropertyValue.borderColor(v)));
let borderBottomColor2 = (~tb, ~lr) => ("borderBottomColor", PropertyValue(CssPropertyValue.borderColor2(~tb, ~lr)));
let borderBottomColor3 = (~top, ~lr, ~bottom) =>
  ("borderBottomColor", PropertyValue(CssPropertyValue.borderColor3(~top, ~lr, ~bottom)));
let borderBottomColor4 = (~top, ~right, ~bottom, ~left) =>
  ("borderBottomColor", PropertyValue(CssPropertyValue.borderColor4(~top, ~right, ~bottom, ~left)));
let borderBottomColorString = v => ("borderBottomColor", PropertyValue(CssPropertyValue.string(v)));

let borderStyle = v => ("borderStyle", PropertyValue(CssPropertyValue.borderStyle(v)));
let borderStyle2 = (~tb, ~lr) => ("borderStyle", PropertyValue(CssPropertyValue.borderStyle2(~tb, ~lr)));
let borderStyle3 = (~top, ~lr, ~bottom) =>
  ("borderStyle", PropertyValue(CssPropertyValue.borderStyle3(~top, ~lr, ~bottom)));
let borderStyle4 = (~top, ~right, ~bottom, ~left) =>
  ("borderStyle", PropertyValue(CssPropertyValue.borderStyle4(~top, ~right, ~bottom, ~left)));
let borderStyleString = v => ("borderStyle", PropertyValue(CssPropertyValue.string(v)));

let borderTopStyle = v => ("borderTopStyle", PropertyValue(CssPropertyValue.borderStyle(v)));
let borderTopStyle2 = (~tb, ~lr) => ("borderTopStyle", PropertyValue(CssPropertyValue.borderStyle2(~tb, ~lr)));
let borderTopStyle3 = (~top, ~lr, ~bottom) =>
  ("borderTopStyle", PropertyValue(CssPropertyValue.borderStyle3(~top, ~lr, ~bottom)));
let borderTopStyle4 = (~top, ~right, ~bottom, ~left) =>
  ("borderTopStyle", PropertyValue(CssPropertyValue.borderStyle4(~top, ~right, ~bottom, ~left)));
let borderTopStyleString = v => ("borderTopStyle", PropertyValue(CssPropertyValue.string(v)));

let borderRightStyle = v => ("borderRightStyle", PropertyValue(CssPropertyValue.borderStyle(v)));
let borderRightStyle2 = (~tb, ~lr) => ("borderRightStyle", PropertyValue(CssPropertyValue.borderStyle2(~tb, ~lr)));
let borderRightStyle3 = (~top, ~lr, ~bottom) =>
  ("borderRightStyle", PropertyValue(CssPropertyValue.borderStyle3(~top, ~lr, ~bottom)));
let borderRightStyle4 = (~top, ~right, ~bottom, ~left) =>
  ("borderRightStyle", PropertyValue(CssPropertyValue.borderStyle4(~top, ~right, ~bottom, ~left)));
let borderRightStyleString = v => ("borderRightStyle", PropertyValue(CssPropertyValue.string(v)));

let borderBottomStyle = v => ("borderBottomStyle", PropertyValue(CssPropertyValue.borderStyle(v)));
let borderBottomStyle2 = (~tb, ~lr) => ("borderBottomStyle", PropertyValue(CssPropertyValue.borderStyle2(~tb, ~lr)));
let borderBottomStyle3 = (~top, ~lr, ~bottom) =>
  ("borderBottomStyle", PropertyValue(CssPropertyValue.borderStyle3(~top, ~lr, ~bottom)));
let borderBottomStyle4 = (~top, ~right, ~bottom, ~left) =>
  ("borderBottomStyle", PropertyValue(CssPropertyValue.borderStyle4(~top, ~right, ~bottom, ~left)));
let borderBottomStyleString = v => ("borderBottomStyle", PropertyValue(CssPropertyValue.string(v)));

let borderLeftStyle = v => ("borderLeftStyle", PropertyValue(CssPropertyValue.borderStyle(v)));
let borderLeftStyle2 = (~tb, ~lr) => ("borderLeftStyle", PropertyValue(CssPropertyValue.borderStyle2(~tb, ~lr)));
let borderLeftStyle3 = (~top, ~lr, ~bottom) =>
  ("borderLeftStyle", PropertyValue(CssPropertyValue.borderStyle3(~top, ~lr, ~bottom)));
let borderLeftStyle4 = (~top, ~right, ~bottom, ~left) =>
  ("borderLeftStyle", PropertyValue(CssPropertyValue.borderStyle4(~top, ~right, ~bottom, ~left)));
let borderLeftStyleString = v => ("borderLeftStyle", PropertyValue(CssPropertyValue.string(v)));

let borderWidth = v => ("borderWidth", PropertyValue(CssPropertyValue.borderWidth(v)));
let borderWidth2 = (~tb, ~lr) => ("borderWidth", PropertyValue(CssPropertyValue.borderWidth2(~tb, ~lr)));
let borderWidth3 = (~top, ~lr, ~bottom) =>
  ("borderWidth", PropertyValue(CssPropertyValue.borderWidth3(~top, ~lr, ~bottom)));
let borderWidth4 = (~top, ~right, ~bottom, ~left) =>
  ("borderWidth", PropertyValue(CssPropertyValue.borderWidth4(~top, ~right, ~bottom, ~left)));
let borderWidthString = v => ("borderWidth", PropertyValue(CssPropertyValue.string(v)));

let borderTopWidth = v => ("borderTopWidth", PropertyValue(CssPropertyValue.borderWidth(v)));
let borderTopWidth2 = (~tb, ~lr) => ("borderTopWidth", PropertyValue(CssPropertyValue.borderWidth2(~tb, ~lr)));
let borderTopWidth3 = (~top, ~lr, ~bottom) =>
  ("borderTopWidth", PropertyValue(CssPropertyValue.borderWidth3(~top, ~lr, ~bottom)));
let borderTopWidth4 = (~top, ~right, ~bottom, ~left) =>
  ("borderTopWidth", PropertyValue(CssPropertyValue.borderWidth4(~top, ~right, ~bottom, ~left)));
let borderTopWidthString = v => ("borderTopWidth", PropertyValue(CssPropertyValue.string(v)));

let borderRightWidth = v => ("borderRightWidth", PropertyValue(CssPropertyValue.borderWidth(v)));
let borderRightWidth2 = (~tb, ~lr) => ("borderRightWidth", PropertyValue(CssPropertyValue.borderWidth2(~tb, ~lr)));
let borderRightWidth3 = (~top, ~lr, ~bottom) =>
  ("borderRightWidth", PropertyValue(CssPropertyValue.borderWidth3(~top, ~lr, ~bottom)));
let borderRightWidth4 = (~top, ~right, ~bottom, ~left) =>
  ("borderRightWidth", PropertyValue(CssPropertyValue.borderWidth4(~top, ~right, ~bottom, ~left)));
let borderRightWidthString = v => ("borderRightWidth", PropertyValue(CssPropertyValue.string(v)));

let borderBottomWidth = v => ("borderBottomWidth", PropertyValue(CssPropertyValue.borderWidth(v)));
let borderBottomWidth2 = (~tb, ~lr) => ("borderBottomWidth", PropertyValue(CssPropertyValue.borderWidth2(~tb, ~lr)));
let borderBottomWidth3 = (~top, ~lr, ~bottom) =>
  ("borderBottomWidth", PropertyValue(CssPropertyValue.borderWidth3(~top, ~lr, ~bottom)));
let borderBottomWidth4 = (~top, ~right, ~bottom, ~left) =>
  ("borderBottomWidth", PropertyValue(CssPropertyValue.borderWidth4(~top, ~right, ~bottom, ~left)));
let borderBottomWidthString = v => ("borderBottomWidth", PropertyValue(CssPropertyValue.string(v)));

let borderLeftWidth = v => ("borderLeftWidth", PropertyValue(CssPropertyValue.borderWidth(v)));
let borderLeftWidth2 = (~tb, ~lr) => ("borderLeftWidth", PropertyValue(CssPropertyValue.borderWidth2(~tb, ~lr)));
let borderLeftWidth3 = (~top, ~lr, ~bottom) =>
  ("borderLeftWidth", PropertyValue(CssPropertyValue.borderWidth3(~top, ~lr, ~bottom)));
let borderLeftWidth4 = (~top, ~right, ~bottom, ~left) =>
  ("borderLeftWidth", PropertyValue(CssPropertyValue.borderWidth4(~top, ~right, ~bottom, ~left)));
let borderLeftWidthString = v => ("borderLeftWidth", PropertyValue(CssPropertyValue.string(v)));

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
    PropertyValue(CssPropertyValue.background(
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
let background2 = (l1, l2) => ("background", PropertyValue(CssPropertyValue.background2(l1, l2)));
let background3 = (l1, l2, l3) => 
  ("background", PropertyValue(CssPropertyValue.background3(l1, l2, l3)));
let background4 = (l1, l2, l3, l4) => 
  ("background", PropertyValue(CssPropertyValue.background4(l1, l2, l3, l4)));
let backgroundString = v => ("background", PropertyValue(CssPropertyValue.string(v)));