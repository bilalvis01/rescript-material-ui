external string: string => CssType.val = "%identity";
external number: float => CssType.val = "%identity";
external integer: int => CssType.val = "%identity";

/*
Textual data types
*/
// String
let str = v => #Str(v);

/*
Numeric data types
*/
let num = v => #Num(v);
let int = v => #Int(v);
let ratio = (v1, v2) => #Ratio(v1, v2);
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
let pct = v => #Pct(v);

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
Position
*/
let position2 = (p1, p2) => #Position2(p1, p2);
let position3 = (p1, p2, p3) => #Position3(p1, p2, p3);
let position4 = (p1, p2, p3, p4) => #Position4(p1, p2, p3, p4); 

/*
Image data types
*/
let src = v => #Src(v);

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
  #BgLayer(
    color,
    position,
    size,
    repeat,
    attachment,
    origin,
    clip,
    imageOrColor
  );
let bgSize2 = (s1, s2) => #BgSize2(s1, s2);

/*
Color data types
*/
let hsl = (v1, v2, v3) => #Hsl(int(v1), v2, v3);
let hsla = (v1, v2, v3, v4) => #Hsla(int(v1), v2, v3, num(v4));
let rgb = (v1, v2, v3) => #Rgb(int(v1), int(v2), int(v3));
let rgba = (v1, v2, v3, v4) => 
  #Rgba(int(v1), int(v2), int(v3), num(v4));
let hexColor = v => #HexColor(v);

/*
Image data types
*/
let url = v => #Url(v);
let image = (~dir=?, ~color=?, imageSrcOrColor) => #Image(dir, color, imageSrcOrColor);
let linearColorStop2 = (c, l) => #LinearColorStop2(c, l);
let linearColorStop3 = (c, l1, l2) => #LinearColorStop3(c, l1, l2);
let linearGradient = (~angle=?, c) => #LinearGradient(angle, c);
let linearGradient2 = (~angle=?, c1, c2) => #LinearGradient2(angle, c1, c2);
let linearGradient3 = (~angle=?, c1, c2, c3) => #LinearGradient3(angle, c1, c2, c3);
let linearGradient4 = (~angle=?, c1, c2, c3, c4) => #LinearGradient4(angle, c1, c2, c3, c4);
let repeatingLinearGradient = (~angle=?, c) => #RepeatingLinearGradient(angle, c);
let repeatingLinearGradient2 = (~angle=?, c1, c2) => #RepeatingLinearGradient2(angle, c1, c2);
let repeatingLinearGradient3 = (~angle=?, c1, c2, c3) => #RepeatingLinearGradient3(angle, c1, c2, c3);
let repeatingLinearGradient4 = (~angle=?, c1, c2, c3, c4) => #RepeatingLinearGradient4(angle, c1, c2, c3, c4);
let radialGradient = (~position=?, ~endingShape=?, ~size=?, c) => 
  #RadialGradient(position, endingShape, size, c);
let radialGradient2 = (~position=?, ~endingShape=?, ~size=?, c1, c2) => 
  #RadialGradient2(position, endingShape, size, c1, c2);
let radialGradient3 = (~position=?, ~endingShape=?, ~size=?, c1, c2, c3) => 
  #RadialGradient3(position, endingShape, size, c1, c2, c3);
let radialGradient4 = (~position=?, ~endingShape=?, ~size=?, c1, c2, c3, c4) => 
  #RadialGradient4(position, endingShape, size, c1, c2, c3, c4);
let repeatingRadialGradient = (~position=?, ~endingShape=?, ~size=?, c) => 
  #RepeatingRadialGradient(position, endingShape, size, c);
let repeatingRadialGradient2 = (~position=?, ~endingShape=?, ~size=?, c1, c2) => 
  #RepeatingRadialGradient2(position, endingShape, size, c1, c2);
let repeatingRadialGradient3 = (~position=?, ~endingShape=?, ~size=?, c1, c2, c3) => 
  #RepeatingRadialGradient3(position, endingShape, size, c1, c2, c3);
let repeatingRadialGradient4 = (~position=?, ~endingShape=?, ~size=?, c1, c2, c3, c4) => 
  #RepeatingRadialGradient4(position, endingShape, size, c1, c2, c3, c4);
let conicGradient = (~angle=?, ~position=?, c) => #ConicGradient(angle, position, c);
let conicGradient2 = (~angle=?, ~position=?, c1, c2) => #ConicGradient2(angle, position, c1, c2);
let conicGradient3 = (~angle=?, ~position=?, c1, c2, c3) => #ConicGradient3(angle, position, c1, c2, c3);
let conicGradient4 = (~angle=?, ~position=?, c1, c2, c3, c4) => #ConicGradient4(angle, position, c1, c2, c3, c4);
let repeatingConicGradient = (~angle=?, ~position=?, c) => #RepeatingConicGradient(angle, position, c);
let repeatingConicGradient2 = (~angle=?, ~position=?, c1, c2) => #RepeatingConicGradient2(angle, position, c1, c2);
let repeatingConicGradient3 = (~angle=?, ~position=?, c1, c2, c3) => #RepeatingConicGradient3(angle, position, c1, c2, c3);
let repeatingConicGradient4 = (~angle=?, ~position=?, c1, c2, c3, c4) => #RepeatingConicGradient4(angle, position, c1, c2, c3, c4);