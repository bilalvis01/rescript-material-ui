open CssValueType;
open Belt;

/*
Combinator
*/
let concat = (v, cb) => {
  switch v {
    | #concat(v1, v2) => `${cb(v1)} ${cb(v2)}`
  };
};
let join = (v, cb) => {
  switch v {
    | #join(v1, v2) => `${cb(v1)}, ${cb(v2)}`
  };
};
let stick = (v, cb) => {
  switch v {
  | #stick(v1, v2) => `${cb(v1)} / ${cb(v2)}`
  };
};
let concatMany = (v, cb) => {
  switch v {
  | #concatMany(v) =>
    v
    ->Array.reduce("", (acc, item) => 
      if (Js.String2.length(acc) == 0) { cb(item) }
      else { `${acc} ${cb(item)}` }
    )
  };
};
let joinMany = (v, cb) => {
  switch v {
  | #joinMany(v) =>
    v
    ->Array.reduce("", (acc, item) => 
      if (Js.String2.length(acc) == 0) { cb(item) }
      else { `${acc}, ${cb(item)}` }
    )
  };
};
let stickMany = (v, cb) => {
  switch v {
  | #stickMany(v) =>
    v
    ->Array.reduce("", (acc, item) => 
      if (Js.String2.length(acc) == 0) { cb(item) }
      else { `${acc} / ${cb(item)}` }
    )
  };
};

/*
Textual data type
*/
let global = v => {
  switch v {
  | #inherit => "inherit"
  | #initial => "initial"
  | #unset => "unset"
  | #revert => "revert"
  }
};

let string = v => {
  switch v {
    | #string(v) => `"${v}"`
  };
};

/*
Numeric data type
*/
let num = v => Float.toString(v);
let number = v => {
  switch v {
    | #number(v) => num(v)
  }
};

let int = v => Int.toString(v);
let integer = v => {
  switch v {
    | #integer(v) => int(v)
  };
};

let pct = v => `${v->Float.toString}%`;
let percentage = v => {
  switch v {
    | #pct(v) => `${v->Float.toString}%`
  }
};

let ratio = (v) => {
  switch v {
  | #ratio(v1, v2) => `${Int.toString(v1)}/${Int.toString(v2)}`
  };
};

let fr = v => `${Float.toString(v)}fr`;
let flexUnit = v => {
  switch v {
  | #fr(v) => fr(v)
  };
};

/*
Quantities
*/
// Length
let ch = l => `${l->Float.toString}ch`;
let em = l => `${l->Float.toString}em`;
let ex = l => `${l->Float.toString}ex`;
let rem = l => `${l->Float.toString}rem`;
let vh = l => `${l->Float.toString}vh`;
let vw = l => `${l->Float.toString}vw`;
let vmin = l => `${l->Float.toString}vmin`;
let vmax = l => `${l->Float.toString}vmax`;
let px = l => `${l->Float.toString}px`;
let cm = l => `${l->Float.toString}cm`;
let mm = l => `${l->Float.toString}mm`;
let inch = l => `${l->Float.toString}in`;
let pc = l => `${l->Float.toString}pc`;
let pt = l => `${l->Float.toString}pt`;
let length = v => {
  switch v {
    | #ch(l) => ch(l)
    | #em(l) => em(l)
    | #ex(l) => ex(l)
    | #rem(l) => rem(l)
    | #vh(l) => vh(l)
    | #vw(l) => vw(l)
    | #vmin(l) => vmin(l)
    | #vmax(l) => vmax(l)
    | #px(l) => px(l)
    | #cm(l) => cm(l)
    | #mm(l) => mm(l)
    | #inch(l) => inch(l)
    | #pc(l) => pc(l)
    | #pt(l) => pt(l)
  };
};
// Angle
let deg = v => `${Float.toString(v)}deg`;
let grad = v => `${Float.toString(v)}grad`;
let rad = v => `${Float.toString(v)}rad`;
let turn = v => `${Float.toString(v)}turn`;
let angle = v => {
  switch v {
    | #deg(a) => deg(a)
    | #grad(a) => grad(a)
    | #rad(a) => rad(a)
    | #turn(a) => turn(a)
  };
};
// Time
let s = v => `${Float.toString(v)}s`;
let ms = v => `${Float.toString(v)}ms`;
let time = v => {
  switch v {
  | #s(v) => s(v) 
  | #ms(v) => ms(v)
  }
};
// Frequency
let hz = v => `${Float.toString(v)}Hz`;
let kHz = v => `${Float.toString(v)}kHz`;
let frequency = v => {
  switch v {
  | #Hz(v) => hz(v)
  | #kHz(v) => kHz(v)
  };
};
// Resolution
let dpi = v => `${Float.toString(v)}dpi`;
let dpcm = v => `${Float.toString(v)}dpcm`;
let dppx = v => `${Float.toString(v)}dppx`;
let x = v => `${Float.toString(v)}x`;
let resolution = v => {
  switch v {
  | #dpi(v) => dpi(v)
  | #dpcm(v) => dpcm(v)
  | #dppx(v) => dppx(v)
  | #x(v) => x(v)
  };
};

/*
Combination of types
*/
let length_percentage = v => {
  switch v {
  | #...length as l => length(l)
  | #...percentage as p => percentage(p)
  }
};
let frequency_percentage = v => {
  switch v {
  | #...frequency as f => frequency(f)
  | #...percentage as p => percentage(p)
  }
};
let angle_percentage = v => {
  switch v {
  | #...angle as a => angle(a)
  | #...percentage as p => percentage(p)
  }
};
let time_percentage = v => {
  switch v {
  | #...time as t => time(t)
  | #...percentage as p => percentage(p)
  }
};

// Line
let lineWidth = v => {
  switch v {
    | #...length as l => length(l)
    | #thin => "thin"
    | #medium => "medium"
    | #thick => "thick"
  };
}; 
let lineWidth_global = v => {
  switch v {
  | #...lineWidth as w => lineWidth(w)
  | #...global as g => global(g)
  };
};

let lineStyle = v => {
  switch v {
  | #none => "none"
  | #hidden => "hidden"
  | #dotted => "dotted"
  | #dashed => "dashed"
  | #solid => "solid"
  | #double => "double"
  | #groove => "groove"
  | #ridge => "ridge"
  | #inset => "inset"
  | #outset => "outset"
  }
};

let lineStyle_global = v => {
  switch v {
  | #...global as g => global(g)
  | #...lineStyle as l => lineStyle(l)
  }
}; 

// transform-origin
let transformOrigin = v => {
  let xToString = x =>
    switch x {
    | #...length_percentage as l => length_percentage(l)
    | #left => "left"
    | #center => "center"
    | #right => "right"
    };
  let yToString = y =>
    switch y {
    | #...length_percentage as l => length_percentage(l)
    | #top => "top"
    | #center => "center"
    | #bottom => "bottom"
    };
  switch v {
  | #...length_percentage as l => length_percentage(l)
  | #left => "left"
  | #center => "center"
  | #right => "right"
  | #top => "top"
  | #bottom => "bottom"
  | #transformOrigin2(x, y) => `${xToString(x)} ${yToString(y)}`
  | #transformOrigin3(x, y, l) => `${xToString(x)} ${yToString(y)} ${length(l)}`
  }
};

/*
Color
*/
let hue = v => { 
  switch v {
    | #...angle as a => angle(a)
    // | #...number as n => number(n)
    // | #...degree as d => Obj.magic(d)->Int.toString
  };
};
let alpha = v => { 
  switch v {
    | #...percentage as l => percentage(l)
    | #...number as n => number(n)
  };
};
let rgbParam = v => {
  switch v {
    | #...percentage as l => percentage(l)
    | #...number as n => number(n)
    // | #...rgbDecimalValue as c => Obj.magic(c)->Int.toString
  };
};
let hsl = (v1, v2, v3) => `hsl(${hue(v1)}, ${percentage(v2)}, ${percentage(v3)})`;
let hsla = (v1, v2, v3, v4) => `hsla(${hue(v1)}, ${percentage(v2)}, ${percentage(v3)}, ${alpha(v4)})`;
let rgb = (v1, v2, v3) => `rgb(${rgbParam(v1)}, ${rgbParam(v2)}, ${rgbParam(v3)})`;
let rgba = (v1, v2, v3, v4) => `rgba(${rgbParam(v1)}, ${rgbParam(v2)}, ${rgbParam(v3)}, ${alpha(v4)})`;
let hexColor = v => `#${v}`;
let colorKeyword = v => {
  switch v {
  | #transparent => "transparent"
  | #currentColor => "currentColor"
  | #black => "black"
  | #silver => "silver"
  | #gray => "gray"
  | #white => "white"
  | #maroon => "maroon"
  | #red => "red"
  | #purple => "purple"
  | #fuchsia => "fuchsia"
  | #green => "green"
  | #lime => "lime"
  | #olive => "olive"
  | #yellow => "yellow"
  | #navy => "navy"
  | #blue => "blue"
  | #teal => "teal"
  | #aqua => "aqua"
  | #orange => "orange"
  | #aliceblue => "aliceblue"
  | #antiquewhite => "antiquewhite"
  | #aquamarine => "aquamarine"
  | #azure => "azure"
  | #beige => "beique"
  | #bisque => "bisque"
  | #blanchedalmond => "blanchedalmond"
  | #blueviolet => "blueviolet"
  | #brown => "brown"
  | #burlywood => "burlywood"
  | #cadetblue => "cadetblue"
  | #chartreuse => "chartreuse"
  | #chocolate => "chocolate"
  | #coral => "coral"
  | #cornflowerblue => "cornflowerblue"
  | #cornsilk => "cornsilk"
  | #crimson => "crimson"
  | #cyan => "cyan"
  | #darkblue => "darkblue"
  | #darkcyan => "darkcyan"
  | #darkgoldenrod => "darkgoldenrod"
  | #darkgray => "darkgray"
  | #darkgreen => "darkgreen"
  | #darkkhaki => "darkkhaki"
  | #darkmagenta => "darkmagenta"
  | #darkolivegreen => "darkolivegreen"
  | #darkorange => "darkorange"
  | #darkorchid => "darkorchid"
  | #darkred => "darkred"
  | #darksalmon => "darksalmon"
  | #darkseagreen => "darkseagreen"
  | #darkslateblue => "darkslateblue"
  | #darkslategray => "darkslategray"
  | #darkslategrey => "darkslategrey"
  | #darkturquoise => "darkturquoise"
  | #darkviolet => "darkviolet"
  | #deeppink => "deeppink"
  | #deepskyblue => "deepskyblue"
  | #dimgray => "dimgray"
  | #dimgrey => "dimgrey"
  | #dodgerblue => "dodgerblue"
  | #firebrick => "firebrick"
  | #floralwhite => "floralwhite"
  | #forestgreen => "forestgreen"
  | #gainsboro => "gainsboro"
  | #ghostwhite => "ghostwhite"
  | #gold => "gold"
  | #goldenrod => "goldenrod"
  | #greenyellow => "greenyellow"
  | #grey => "grey"
  | #honeydew => "honeydew"
  | #hotpink => "hotpink"
  | #indianred => "indianred"
  | #indigo => "indigo"
  | #ivory => "ivory"
  | #khaki => "khaki"
  | #lavender => "lavender"
  | #lavenderblush => "lavenderblush"
  | #lawngreen => "lawngreen"
  | #lemonchiffon => "lemonchiffon"
  | #lightblue => "lightblue"
  | #lightcoral => "lightcoral"
  | #lightcyan => "lightcyan"
  | #lightgoldenrodyellow => "lightgoldenrodyellow"
  | #lightgray => "lightgray"
  | #lightgreen => "lightgreen"
  | #lightgrey => "lightgrey"
  | #lightpink => "lightpink"
  | #lightsalmon => "lightsalmon"
  | #lightseagreen => "lightseagreen"
  | #lightskyblue => "lightskyblue"
  | #lightslategray => "lightslategray"
  | #lightslategrey => "lightslategrey"
  | #lightsteelblue => "lightsteelblue"
  | #lightyellow => "lightyellow"
  | #limegreen => "limegreen"
  | #linen => "linen"
  | #magenta => "magenta"
  | #mediumaquamarine => "mediumaquamarine"
  | #mediumblue => "mediumblue"
  | #mediumorchid => "mediumorchid"
  | #mediumpurple => "mediumpurple"
  | #mediumseagreen => "mediumseagreen"
  | #mediumslateblue => "mediumslateblue"
  | #mediumspringgreen => "mediumspringgreen"
  | #mediumturquoise => "mediumturquoise"
  | #mediumvioletred => "mediumvioletred"
  | #midnightblue => "midnightblue"
  | #mintcream => "mintcream"
  | #mistyrose => "mistyrose"
  | #moccasin => "moccasin"
  | #navajowhite => "navajowhite"
  | #oldlace => "oldlace"
  | #olivedrab => "olivedrab"
  | #oranngered => "orangered"
  | #orchid => "orchid"
  | #palegoldenrod => "palegoldenrod"
  | #palegreen => "palegreen"
  | #paleturquoise => "paleturquoise"
  | #palevioletred => "palevioletred"
  | #papayawhip => "papayawhip"
  | #peachpuff => "peachpuff"
  | #peru => "peru"
  | #pink => "pink"
  | #plum => "plum"
  | #powderblue => "powderblue"
  | #rosybrown => "rosybrown"
  | #royalblue => "royalblue"
  | #saddlebrown => "saddlebrown"
  | #salmon => "salmon"
  | #sandybrown => "sandybrown"
  | #seagreen => "seagreen"
  | #seashell => "seashell"
  | #sienna => "sienna"
  | #skyblue => "skyblue"
  | #slateblue => "slateblue" 
  | #slategray => "slategray"
  | #slategrey => "slategrey"
  | #snow => "snow"
  | #springgreen => "springgreen"
  | #steelblue => "steelblue"
  | #tan => "tan"
  | #thistle => "thistle"
  | #tomato => "tomato"
  | #turquoise => "turquoise"
  | #violet => "violet"
  | #wheat => "wheat"
  | #whitesmoke => "whitesmoke"
  | #yellowgreen => "yellowgreen"
  | #rebeccapurple => "rebeccapurple"
  }
}; 
let color = v => {
  switch v {
    | #hsl(v1, v2, v3) => hsl(v1, v2, v3)
    | #hsla(v1, v2, v3, v4) => hsla(v1, v2, v3, v4)
    | #rgb(v1, v2, v3) => rgb(v1, v2, v3)
    | #rgba(v1, v2, v3, v4) =>  rgba(v1, v2, v3, v4)
    | #hexColor(v) => hexColor(v)
    | #...colorKeyword as c => colorKeyword(c)
  };
};
let color_global = v => {
  switch v {
  | #...color as c => color(c)
  | #...global as g => global(g)
  };
};

let bgSize = v => {
  let autoOrLength = v =>
    switch v {
    | #...length_percentage as l => length_percentage(l)
    | #auto => "auto"
    }

  switch v {
  | #cover => "cover"
  | #contain => "contain"
  | #auto => "auto"
  | #...length_percentage as l => length_percentage(l)
  | #bgSize2(s1, s2) => `${autoOrLength(s1)} ${autoOrLength(s2)}`
  }
};
let position = v => {
  switch v {
  | #left => "left"
  | #center => "center"
  | #right => "right"
  | #top => "top"
  | #bottom => "bottom"
  | #...length_percentage as l => length_percentage(l)
  | #position2(v1, v2) => {
    let v1 = switch v1 {
    | #left => "left"
    | #center => "center"
    | #right => "right"
    | #...length_percentage as l => length_percentage(l)
    };
    let v2 = switch v2 {
    | #top => "top"
    | #center => "center"
    | #bottom => "bottom"
    | #...length_percentage as l => length_percentage(l)
    };
    `${v1} ${v2}`
  }
  | #position3(v1, v2, v3) => {
    let v1 = switch v1 {
    | #left => "left"
    | #center => "center"
    | #right => "right"
    };
    let v2 = switch v2 {
    | #top => "top"
    | #bottom => "bottom"
    | #...length_percentage as l => length_percentage(l)
    };
    let v3 = switch v3 {
    | #top => "top"
    | #center => "center"
    | #bottom => "bottom"
    | #...length_percentage as l => length_percentage(l)
    };
    `${v1} ${v2} ${v3}`
  }
  | #position4(v1, v2, v3, v4) => {
    let v1 = switch v1 {
    | #left => "left"
    | #right => "right"
    };
    let v3 = switch v3 {
    | #top => "top"
    | #bottom => "bottom"
    };
    `${v1} ${length_percentage(v2)} ${v3} ${length_percentage(v4)}`
  }
  }
};

/*
Image data types
*/
let gradientLineStartingPoint = v => {
  switch v {
  | #toTop => "to top"
  | #toBottom => "to bottom"
  | #toLeft => "to left"
  | #toRight => "to right"
  | #toTopLeft => "to top left"
  | #toTopRight => "to top right"
  | #toBottomLeft => "to bottom left"
  | #toBottomRight => "to bottom right"
  }
};
let gradientLineAngle = v => {
  switch v {
  | #...angle as a => angle(a)
  | #...gradientLineStartingPoint as s => gradientLineStartingPoint(s) 
  };
};
let linearColorStop = v => {
  switch v {
  | #...color as c => color(c)
  | #...length_percentage as l => length_percentage(l)
  | #linearColorStop2(c, l) => `${color(c)} ${length_percentage(l)}`
  | #linearColorStop3(c, l1, l2) => `${color(c)} ${length_percentage(l1)} ${length_percentage(l2)}`
  };
};

let linearGradient_ = (angle: option<gradientLineAngle>, linearColorStop: string) => {
  switch angle {
  | None => linearColorStop
  | Some(a) => `${gradientLineAngle(a)}, ${linearColorStop}` 
  };
};

let linearGradient = v => {
  let arg = switch v {
  | #linearGradient(a, c) => linearGradient_(a, linearColorStop(c))
  | #linearGradient2(a, c1, c2) => linearGradient_(a, `${linearColorStop(c1)}, ${linearColorStop(c2)}`)
  | #linearGradient3(a, c1, c2, c3) => 
    linearGradient_(a, `${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}`)
  | #linearGradient4(a, c1, c2, c3, c4) => 
    linearGradient_(a, `${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}, ${linearColorStop(c4)}`)
  };
  `linear-gradient(${arg})`;
};

let repeatingLinearGradient = v => {
  let arg = switch v {
  | #repeatingLinearGradient(a, c) => linearGradient_(a, linearColorStop(c))
  | #repeatingLinearGradient2(a, c1, c2) => linearGradient_(a, `${linearColorStop(c1)}, ${linearColorStop(c2)}`)
  | #repeatingLinearGradient3(a, c1, c2, c3) => 
    linearGradient_(a, `${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}`)
  | #repeatingLinearGradient4(a, c1, c2, c3, c4) => 
    linearGradient_(a, `${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}, ${linearColorStop(c4)}`)
  };
  `repeating-linear-gradient(${arg})`;
};

let radialGradientSize = (v: radialGradientSize) => {
  switch v {
  | #"closest-side" => "closest-side"
  | #"closest-corner" => "closest-corner"
  | #"farthest-side" => "farthest-side"
  | #"farthest-corner" => "farthes-corner"
  | #...length as l => length(l)
  | #ellipse(x, y) => `${length_percentage(x)} ${length_percentage(y)}`
  };
};

let radialGradientPosition = (v: radialGradientPosition) =>
  switch v {
  | #...position as p => position(p)
  | #...transformOrigin as t => transformOrigin(t)
  };

let radialGradientEndingShape = (
  position: option<radialGradientPosition>, 
  endingShape: option<radialGradientEndingShape>, 
  size: option<radialGradientSize>,
) => {
  let endingShape = switch (endingShape, size) {
  | (None, None) => None
  | (Some(s), None) => Some(Obj.magic(s))
  | (None, Some(#...length)) => None
  | (None, Some(sz)) => Some(radialGradientSize(sz))
  | (Some(#ellipse), Some(#...length)) => Some("ellipse")
  | (Some(#ellipse), Some(sz)) => Some(`ellipse ${radialGradientSize(sz)}`)
  | (Some(#circle), Some(#ellipse(_, _))) => Some("circle")
  | (Some(#circle), Some(sz)) => Some(`circle ${radialGradientSize(sz)}`)
  };
  switch (endingShape, position) {
  | (None, None) => None
  | (Some(s), None) => Some(s)
  | (None, Some(p)) => Some(`at ${radialGradientPosition(p)}`)
  | (Some(s), Some(p)) => Some(`${s} at ${radialGradientPosition(p)}`)
  };
};

let radialGradient_ = (endingShape: option<string>, linearColorStop: string) => {
  switch endingShape {
  | None => linearColorStop
  | Some(endingShape) => `${endingShape}, ${linearColorStop}` 
  };
};

let radialGradient = v => {
  let arg = switch v {
  | #radialGradient(p, s, sz, c) => 
    radialGradientEndingShape(p, s, sz)->radialGradient_(linearColorStop(c))
  | #radialGradient2(p, s, sz, c1, c2) => 
    radialGradientEndingShape(p, s, sz)->radialGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}`)
  | #radialGradient3(p, s, sz, c1, c2, c3) => 
    radialGradientEndingShape(p, s, sz)
    ->radialGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}`)
  | #radialGradient4(p, s, sz, c1, c2, c3, c4) => 
    radialGradientEndingShape(p, s, sz)
    ->radialGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}, ${linearColorStop(c4)}`)
  };
  `radial-gradient(${arg})`;
};

let repeatingRadialGradient = v => {
  let arg = switch v {
  | #repeatingRadialGradient(p, s, sz, c) => 
    radialGradientEndingShape(p, s, sz)->radialGradient_(linearColorStop(c))
  | #repeatingRadialGradient2(p, s, sz, c1, c2) => 
    radialGradientEndingShape(p, s, sz)->radialGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}`)
  | #repeatingRadialGradient3(p, s, sz, c1, c2, c3) => 
    radialGradientEndingShape(p, s, sz)
    ->radialGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}`)
  | #repeatingRadialGradient4(p, s, sz, c1, c2, c3, c4) => 
    radialGradientEndingShape(p, s, sz)
    ->radialGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}, ${linearColorStop(c4)}`)
  };
  `repeating-radial-gradient(${arg})`;
};

let conicGradientAngle = (angle: option<gradientLineAngle>, pos: option<position>) => {
  switch (angle, pos) {
  | (None, None) => None
  | (Some(a), None) => Some(`from ${gradientLineAngle(a)}`)
  | (None, Some(p)) => Some(`at ${position(p)}`)
  | (Some(a), Some(p)) => Some(`from ${gradientLineAngle(a)} at ${position(p)}`)
  };
};

let conicGradient_ = (angle: option<string>, linearColorStop: string) => {
  switch angle {
  | None => linearColorStop
  | Some(a) => `${a}, ${linearColorStop}` 
  };
};

let conicGradient = v => {
  let arg = switch v {
  | #conicGradient(a, p, c) => 
    conicGradientAngle(a, p)->conicGradient_(linearColorStop(c))
  | #conicGradient2(a, p, c1, c2) => 
    conicGradientAngle(a, p)->conicGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}`)
  | #conicGradient3(a, p, c1, c2, c3) => 
    conicGradientAngle(a, p)
    ->conicGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}`)
  | #conicGradient4(a, p, c1, c2, c3, c4) => 
    conicGradientAngle(a, p)
    ->conicGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}, ${linearColorStop(c4)}`)
  };
  `conic-gradient(${arg})`;
};

let repeatingConicGradient = v => {
  let arg = switch v {
  | #repeatingConicGradient(a, p, c) => 
    conicGradientAngle(a, p)->conicGradient_(linearColorStop(c))
  | #repeatingConicGradient2(a, p, c1, c2) => 
    conicGradientAngle(a, p)->conicGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}`)
  | #repeatingConicGradient3(a, p, c1, c2, c3) => 
    conicGradientAngle(a, p)
    ->conicGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}`)
  | #repeatingConicGradient4(a, p, c1, c2, c3, c4) => 
    conicGradientAngle(a, p)
    ->conicGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}, ${linearColorStop(c4)}`)
  };
  `repeating-conic-gradient(${arg})`;
};

let gradient = v => {
  switch v {
  | #...linearGradient as g => linearGradient(g)
  | #...repeatingLinearGradient as g => repeatingLinearGradient(g)
  | #...radialGradient as g => radialGradient(g)
  | #...repeatingRadialGradient as g => repeatingRadialGradient(g)
  | #...conicGradient as g => conicGradient(g)
  | #...repeatingConicGradient as g => repeatingConicGradient(g)
  };
};
let imageTags = v => {
  switch v {
  | #ltr => "ltr"
  | #rtl => "rtl"
  }
};
let url = v => {
  switch v {
  | #url(v) => `url("${v}")`
  };
};
let imageSrc = v => {
  switch v {
  | #...url as v => url(v)
  | #src(v) => `"${v}"`
  };
};
let image = v => {
  switch v {
  | #...imageSrc as s => imageSrc(s)
  | #...gradient as g => gradient(g)
  | #image(None, _, #...color as c) => `image(${color(c)})`
  | #image(Some(t), _, #...color as c) => `image(${imageTags(t)} ${color(c)})`
  | #image(None, None, #...imageSrc as s) => `image(${imageSrc(s)})`
  | #image(Some(t), None, #...imageSrc as s) => `image(${imageTags(t)} ${imageSrc(s)})`
  | #image(None, Some(c), #...imageSrc as s) => `image(${imageSrc(s)}, ${color(c)})`
  | #image(Some(t), Some(c), #...imageSrc as s) => `image(${imageTags(t)} ${imageSrc(s)}, ${color(c)})`
  }
};
let bgImage = v => {
  switch v {
  | #...image as i => image(i)
  | #none => "none"
  }
};
let repeatStyle = v => {
  switch v {
  | #repeatX => "repeat-x" 
  | #repeatY => "repeat-y"
  | #repeat => "repeat"
  | #space => "space"
  | #round => "round"
  | #noRepeat => "no-repeat"
  | #repeat__repeat => "repeat repeat"
  | #repeat__space => "repeat space"
  | #repeat__round => "repeat round"
  | #repeat__noRepeat => "repeat no-repeat"
  | #space__repeat => "space repeat"
  | #space__space => "space space"
  | #space__round => "space round"
  | #space__noRepeat => "space no-repeat"
  | #round__repeat => "round repeat"
  | #round__space => "round space"
  | #round__round => "round round"
  | #round__noRepeat => "round no-repeat"
  | #noRepeat__repeat => "no-repeat repeat"
  | #noRepeat__space => "no-repeat space"
  | #noRepeat__round => "no-repeat round"
  | #noRepeat__noRepeat => "no-repeat no-repeat"
  }
};
let attachment = v => {
  switch v {
  | #scroll => "scroll"
  | #fixed => "fixed"
  | #local => "local"
  }
};
let box = v => {
  switch v {
  | #borderBox => "border-box"
  | #paddingBox => "padding-box"
  | #contentBox => "content-box"
  }
};

/*
Background
*/
let background = (
  ~color as col=?,
  ~position as pos=?,
  ~size=?,
  ~repeat=?,
  ~attachment as att=?,
  ~origin=?,
  ~clip=?,
  imageOrColor
) => {
  let pos = switch (pos, size) {
  | (None, _) => None
  | (Some(p), None) => Some(position(p))
  | (Some(p), Some(s)) => Some(`${position(p)} / ${bgSize(s)}`)
  };
  let bg = switch (pos, repeat) {
  | (None, None) => None
  | (Some(p), None) => Some(p)
  | (None, Some(r)) => Some(repeatStyle(r))
  | (Some(p), Some(r)) => Some(`${p} ${repeatStyle(r)}`)
  };
  let bg = switch (bg, att) {
  | (None, None) => None
  | (Some(bg), None) => Some(bg)
  | (None, Some(a)) => Some(attachment(a))
  | (Some(bg), Some(a)) => Some(`${bg} ${attachment(a)}`)
  };
  let box = switch (origin, clip) {
  | (None, _) => None
  | (Some(o), None) => Some(box(o))
  | (Some(o), Some(c)) => Some(`${box(o)} ${box(c)}`)
  }
  let bg = switch (bg, box) {
  | (None, None) => None
  | (Some(bg), None) => Some(bg)
  | (None, Some(b)) => Some(b)
  | (Some(bg), Some(b)) => Some(`${bg} ${b}`)
  };
  switch (imageOrColor, col, bg) {
  | (#...bgImage as i, None, None) => bgImage(i)
  | (#...bgImage as i, Some(c), None) => `${color(c)} ${bgImage(i)}`
  | (#...bgImage as i, None, Some(bg)) => `${bgImage(i)} ${bg}`
  | (#...bgImage as i, Some(c), Some(bg)) => `${color(c)} ${bgImage(i)} ${bg}`
  | (#...color as c, _, None) => color(c)
  | (#...color as c, _, Some(bg)) => `${color(c)} ${bg}`
  };
};
let bgLayer = v => {
  switch v {
  | #...color as c => color(c)
  | #...bgImage as i => bgImage(i)
  | #bgLayer(color, position, size, repeat, attachment, origin, clip, imageOrColor) =>
    background(
      ~color=?color, 
      ~position=?position, 
      ~size=?size, 
      ~repeat=?repeat,
      ~attachment=?attachment,
      ~origin=?origin,
      ~clip=?clip,
      imageOrColor
    );
  };
};

/*
Spacing
*/
let margin = v => {
  switch v {
  | #...length_percentage as l => length_percentage(l)
  | #auto => "auto"
  };
};
let margin_global = v => {
  switch v {
  | #...margin as m => margin(m)
  | #...global as g => global(g)
  }
};
let padding = v => length_percentage(v);
let padding_global = v => {
  switch v {
  | #...padding as p => padding(p)
  | #...global as g => global(g)
  }
};

let clear = v => {
  switch v {
  | #none => "none"
  | #left => "left"
  | #right => "right"
  | #both => "both"
  | #inlineStart => "inline-start"
  | #inlineEnd => "inline-end"
  }
};
let clear_global = v => {
  switch v {
  | #...clear as c => clear(c)
  | #...global as g => global(g)
  }
};

let cursorKeyword = v => {
  switch v {
  | #auto => "auto"
  | #default => "default"
  | #none => "none"
  | #contextMenu => "context-menu"
  | #help => "help"
  | #pointer => "pointer"
  | #progress => "progress"
  | #wait => "wait"
  | #cell => "cell"
  | #crosshair => "crosshair"
  | #text => "text"
  | #verticalText => "vertical-text"
  | #alias => "alias"
  | #copy => "copy"
  | #move => "move"
  | #noDrop => "no-drop"
  | #notAllowed => "not-allowed"
  | #eResize => "e-resize"
  | #nResize => "n-resize"
  | #neResize => "ne-resize"
  | #nwResize => "nw-resize"
  | #sResize => "s-resize"
  | #seResize => "se-resize"
  | #swResize => "sw-resize"
  | #wResize => "w-resize"
  | #ewResize => "ew-resize"
  | #nsResize => "ns-resize"
  | #neswResize => "nesw-resize"
  | #colResize => "col-resize"
  | #rowResize => "row-resize"
  | #allScroll => "all-scroll"
  | #zoomIn => "zoom-in"
  | #zoomOut => "zoom-out"
  | #grab => "grab"
  | #grabbing => "grabbing"
  }
};
let cursorKeyword_global = v => {
  switch v {
  | #...cursorKeyword as k => cursorKeyword(k)
  | #...global as g => global(g)
  }
};
let cursorImage = v => {
  switch v {
  | #...url as u => url(u)
  | #url2(u, x) => `url("${u}") ${Belt.Float.toString(x)}`
  | #url3(u, x, y) => `url("${u}") ${Belt.Float.toString(x)} ${Belt.Float.toString(y)}` 
  };
};