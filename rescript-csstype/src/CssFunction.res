/*
Color data types
*/
let hsl = (v1, v2, v3) => #hsl(v1, v2, v3);
let hsla = (v1, v2, v3, v4) => #hsla(v1, v2, v3, CssValue.num(v4));
let rgb = (v1, v2, v3) => #rgb(CssValue.num(v1), CssValue.num(v2), CssValue.num(v3));
let rgba = (v1, v2, v3, v4) => 
  #rgba(CssValue.num(v1), CssValue.num(v2), CssValue.num(v3), CssValue.num(v4));
let rgbX = v => #rgbX(v);

/*
Image data types
*/
let url = v => #url(v);
let image = (~dir=?, ~color=?, imageSrcOrColor) => #image(dir, color, imageSrcOrColor);
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