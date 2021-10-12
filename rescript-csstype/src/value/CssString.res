module Data = {
  open Belt;
  open CssType.Data;
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

  let str = v => {
    switch v {
      | #Str(v) => `"${v}"`
    };
  };

  /*
  Numeric data type
  */
  let num = v => {
    switch v {
      | #Num(v) => Float.toString(v)
    }
  };

  let int = v => {
    switch v {
      | #Int(v) => Int.toString(v)
    };
  };

  let pct = v => `${v->Float.toString}%`;
  let percentage = v => {
    switch v {
      | #Pct(v) => `${v->Float.toString}%`
    }
  };

  let ratio = (v) => {
    switch v {
    | #Ratio(v1, v2) => `${Int.toString(v1)}/${Int.toString(v2)}`
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
  let px = l => `${l->Int.toString}px`;
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
    | #TransformOrigin2(x, y) => `${xToString(x)} ${yToString(y)}`
    | #TransformOrigin3(x, y, l) => `${xToString(x)} ${yToString(y)} ${length(l)}`
    }
  };

  /*
  Color
  */
  let hue = v => { 
    switch v {
      | #...angle as a => angle(a)
      | #...cssNum as n => num(n)
      | #...cssInt as i => int(i)
    };
  };
  let alpha = v => { 
    switch v {
      | #...percentage as l => percentage(l)
      | #...cssNum as n => num(n)
    };
  };
  let rgbParam = v => {
    switch v {
      | #...percentage as l => percentage(l)
      | #...cssNum as n => num(n)
      | #...cssInt as i => int(i)
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
      | #Hsl(v1, v2, v3) => hsl(v1, v2, v3)
      | #Hsla(v1, v2, v3, v4) => hsla(v1, v2, v3, v4)
      | #Rgb(v1, v2, v3) => rgb(v1, v2, v3)
      | #Rgba(v1, v2, v3, v4) =>  rgba(v1, v2, v3, v4)
      | #HexColor(v) => hexColor(v)
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
    | #BgSize2(s1, s2) => `${autoOrLength(s1)} ${autoOrLength(s2)}`
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
    | #Position2(v1, v2) => {
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
    | #Position3(v1, v2, v3) => {
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
    | #Position4(v1, v2, v3, v4) => {
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

  let position_global = v => {
    switch v {
    | #...global as g => global(g)
    | #...position as p => position(p)
    };
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
    | #LinearColorStop2(c, l) => `${color(c)} ${length_percentage(l)}`
    | #LinearColorStop3(c, l1, l2) => `${color(c)} ${length_percentage(l1)} ${length_percentage(l2)}`
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
    | #LinearGradient(a, c) => linearGradient_(a, linearColorStop(c))
    | #LinearGradient2(a, c1, c2) => linearGradient_(a, `${linearColorStop(c1)}, ${linearColorStop(c2)}`)
    | #LinearGradient3(a, c1, c2, c3) => 
      linearGradient_(a, `${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}`)
    | #LinearGradient4(a, c1, c2, c3, c4) => 
      linearGradient_(a, `${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}, ${linearColorStop(c4)}`)
    };
    `linear-gradient(${arg})`;
  };

  let repeatingLinearGradient = v => {
    let arg = switch v {
    | #RepeatingLinearGradient(a, c) => linearGradient_(a, linearColorStop(c))
    | #RepeatingLinearGradient2(a, c1, c2) => linearGradient_(a, `${linearColorStop(c1)}, ${linearColorStop(c2)}`)
    | #RepeatingLinearGradient3(a, c1, c2, c3) => 
      linearGradient_(a, `${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}`)
    | #RepeatingLinearGradient4(a, c1, c2, c3, c4) => 
      linearGradient_(a, `${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}, ${linearColorStop(c4)}`)
    };
    `repeating-linear-gradient(${arg})`;
  };

  let radialGradientSize = (v: radialGradientSize) => {
    switch v {
    | #closestSide => "closest-side"
    | #closestCorner => "closest-corner"
    | #farthestSide => "farthest-side"
    | #farthestCorner => "farthes-corner"
    | #...length as l => length(l)
    | #Ellipse(x, y) => `${length_percentage(x)} ${length_percentage(y)}`
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
    | (Some(#circle), Some(#Ellipse(_, _))) => Some("circle")
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
    | #RadialGradient(p, s, sz, c) => 
      radialGradientEndingShape(p, s, sz)->radialGradient_(linearColorStop(c))
    | #RadialGradient2(p, s, sz, c1, c2) => 
      radialGradientEndingShape(p, s, sz)->radialGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}`)
    | #RadialGradient3(p, s, sz, c1, c2, c3) => 
      radialGradientEndingShape(p, s, sz)
      ->radialGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}`)
    | #RadialGradient4(p, s, sz, c1, c2, c3, c4) => 
      radialGradientEndingShape(p, s, sz)
      ->radialGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}, ${linearColorStop(c4)}`)
    };
    `radial-gradient(${arg})`;
  };

  let repeatingRadialGradient = v => {
    let arg = switch v {
    | #RepeatingRadialGradient(p, s, sz, c) => 
      radialGradientEndingShape(p, s, sz)->radialGradient_(linearColorStop(c))
    | #RepeatingRadialGradient2(p, s, sz, c1, c2) => 
      radialGradientEndingShape(p, s, sz)->radialGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}`)
    | #RepeatingRadialGradient3(p, s, sz, c1, c2, c3) => 
      radialGradientEndingShape(p, s, sz)
      ->radialGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}`)
    | #RepeatingRadialGradient4(p, s, sz, c1, c2, c3, c4) => 
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
    | #ConicGradient(a, p, c) => 
      conicGradientAngle(a, p)->conicGradient_(linearColorStop(c))
    | #ConicGradient2(a, p, c1, c2) => 
      conicGradientAngle(a, p)->conicGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}`)
    | #ConicGradient3(a, p, c1, c2, c3) => 
      conicGradientAngle(a, p)
      ->conicGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}`)
    | #ConicGradient4(a, p, c1, c2, c3, c4) => 
      conicGradientAngle(a, p)
      ->conicGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}, ${linearColorStop(c4)}`)
    };
    `conic-gradient(${arg})`;
  };

  let repeatingConicGradient = v => {
    let arg = switch v {
    | #RepeatingConicGradient(a, p, c) => 
      conicGradientAngle(a, p)->conicGradient_(linearColorStop(c))
    | #RepeatingConicGradient2(a, p, c1, c2) => 
      conicGradientAngle(a, p)->conicGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}`)
    | #RepeatingConicGradient3(a, p, c1, c2, c3) => 
      conicGradientAngle(a, p)
      ->conicGradient_(`${linearColorStop(c1)}, ${linearColorStop(c2)}, ${linearColorStop(c3)}`)
    | #RepeatingConicGradient4(a, p, c1, c2, c3, c4) => 
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
    | #Url(v) => `url("${v}")`
    };
  };
  let imageSrc = v => {
    switch v {
    | #...url as v => url(v)
    | #Src(v) => `"${v}"`
    };
  };
  let image = v => {
    switch v {
    | #...imageSrc as s => imageSrc(s)
    | #...gradient as g => gradient(g)
    | #Image(None, _, #...color as c) => `image(${color(c)})`
    | #Image(Some(t), _, #...color as c) => `image(${imageTags(t)} ${color(c)})`
    | #Image(None, None, #...imageSrc as s) => `image(${imageSrc(s)})`
    | #Image(Some(t), None, #...imageSrc as s) => `image(${imageTags(t)} ${imageSrc(s)})`
    | #Image(None, Some(c), #...imageSrc as s) => `image(${imageSrc(s)}, ${color(c)})`
    | #Image(Some(t), Some(c), #...imageSrc as s) => `image(${imageTags(t)} ${imageSrc(s)}, ${color(c)})`
    }
  };
  let bgImage = v => {
    switch v {
    | #...image as i => image(i)
    | #none => "none"
    }
  };
  let bgImage_global = v => {
    switch v {
    | #...bgImage as i => bgImage(i)
    | #...global as g => global(g)
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
  let repeatStyle_global = v => {
    switch v {
    | #...global as g => global(g)
    | #...repeatStyle as r => repeatStyle(r)
    }
  };
  let attachment = v => {
    switch v {
    | #scroll => "scroll"
    | #fixed => "fixed"
    | #local => "local"
    }
  };
  let attachment_global = v => {
    switch v {
    | #...global as g => global(g)
    | #...attachment as a => attachment(a)
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
  let bg = (
    ~color as c=?,
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
    switch (imageOrColor, c, bg) {
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
    | #BgLayer(color, position, size, repeat, attachment, origin, clip, imageOrColor) =>
      bg(
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
    | #colResize => "color-resize"
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
    };
  };

  let fontWeight = v => {
    switch v {
    | #bolder => "bolder"
    | #lighter => "lighter"
    | #normal => "normal"
    | #bold => "bold"
    };
  };

  let fontWeight_global = v => {
    switch v {
    | #...fontWeight as w => fontWeight(w)
    | #...global as g => global(g)
    };
  };

  let genericFontFamilyName = v => {
    switch v {
    | #serif => "serif"
    | #sansSerif => "sans-serif"
    | #monospace => "monospace"
    | #cursive => "cursive"
    | #fantasy => "fantasy"
    | #systemUi => "system-ui"
    | #uiSerif => "ui-serif"
    | #uiSansSerif => "ui-sans-serif"
    | #uiMonospace => "ui-monospace"
    | #uiRounded => "ui-rounded"
    | #emoji => "emoji"
    | #math => "math"
    | #fangsong => "fangsong"
    };
  };

  let fontFamily = v => {
    switch v {
    | #...genericFontFamilyName as g => genericFontFamilyName(g)
    | #Family(n) => `"${n}"`
    };
  };

  let fontFamily_global = v => {
    switch v {
    | #...global as g => global(g)
    | #...fontFamily as f => fontFamily(f) 
    };
  };
};

/*
===============================================================================
Property
===============================================================================
*/
module Property = {
  let background = (
    ~color=?,
    ~position=?,
    ~size=?,
    ~repeat=?,
    ~attachment=?,
    ~origin=?,
    ~clip=?,
    imageOrColor
  ) => {
    switch imageOrColor {
    | #...CssType.Data.global as g => Data.global(g)
    | #...CssType.Data.bgImage as imageOrColor
    | #...CssType.Data.color as imageOrColor =>
      Data.bg(
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
  let background2 = (v1, v2) => 
    `${Data.bgLayer(v1)}, ${Data.bgLayer(v2)}`;
  let background3 = (v1, v2, v3) =>
    `${Data.bgLayer(v1)}, ${Data.bgLayer(v2)}, ${Data.bgLayer(v3)}`;
  let background4 = (v1, v2, v3, v4) =>
    `${Data.bgLayer(v1)}, ${Data.bgLayer(v2)}, ${Data.bgLayer(v3)}, ${Data.bgLayer(v4)}`;

  let backgroundAttachment = v => Data.attachment_global(v);
  let backgroundAttachment2 = (v1, v2) => 
    `${Data.attachment(v1)}, ${Data.attachment(v2)}`;
  let backgroundAttachment3 = (v1, v2, v3) => 
    `${Data.attachment(v1)}, ${Data.attachment(v2)}, ${Data.attachment(v3)}`;
  let backgroundAttachment4 = (v1, v2, v3, v4) => 
    `${Data.attachment(v1)}, ${Data.attachment(v2)}, ${Data.attachment(v3)}, ${Data.attachment(v4)}`;

  let backgroundColor = v => Data.color_global(v);

  let backgroundImage = v => 
    Data.bgImage_global(v);
  let backgroundImage2 = (v1, v2) => 
    `${Data.bgImage(v1)}, ${Data.bgImage(v2)}`;
  let backgroundImage3 = (v1, v2, v3) => 
    `${Data.bgImage(v1)}, ${Data.bgImage(v2)}, ${Data.bgImage(v3)}`;
  let backgroundImage4 = (v1, v2, v3, v4) => 
    `${Data.bgImage(v1)}, ${Data.bgImage(v2)}, ${Data.bgImage(v3)}, ${Data.bgImage(v4)}`;

  let backgroundPosition = v => Data.position_global(v);
  let backgroundPosition2 = (v1, v2) => 
    `${Data.position(v1)}, ${Data.position(v2)}`;
  let backgroundPosition3 = (v1, v2, v3) => 
    `${Data.position(v1)}, ${Data.position(v2)}, ${Data.position(v3)}`;
  let backgroundPosition4 = (v1, v2, v3, v4) => 
    `${Data.position(v1)}, ${Data.position(v2)}, ${Data.position(v3)}, ${Data.position(v4)}`;

  let backgroundStyle = v => Data.repeatStyle_global(v);
  let backgroundStyle2 = (v1, v2) => 
    `${Data.repeatStyle(v1)}, ${Data.repeatStyle(v2)}`;
  let backgroundStyle3 = (v1, v2, v3) => 
    `${Data.repeatStyle(v1)}, ${Data.repeatStyle(v2)}, ${Data.repeatStyle(v3)}`;
  let backgroundStyle4 = (v1, v2, v3, v4) => 
    `${Data.repeatStyle(v1)}, ${Data.repeatStyle(v2)}, ${Data.repeatStyle(v3)}, ${Data.repeatStyle(v4)}`;

  let border = (~width=?, ~color=?, style) => {
    let border = switch (width, color) {
    | (None, None) => None
    | (Some(w), None) => Some(Data.lineWidth(w))
    | (None, Some(c)) => Some(Data.color(c))
    | (Some(w), Some(c)) => Some(`${Data.lineWidth(w)} ${Data.color(c)}`)
    };
    switch (border, style) {
    | (_, #...CssType.Data.global as g) => Data.global(g)
    | (None, #...CssType.Data.lineStyle as s) => Data.lineStyle(s)
    | (Some(b), #...CssType.Data.lineStyle as s) => `${b} ${Data.lineStyle(s)}`
    }
  };

  let borderStyle = v => Data.lineStyle_global(v);
  let borderStyle2 = (~tb, ~lr) =>
    `${Data.lineStyle(tb)} ${Data.lineStyle(lr)}`;
  let borderStyle3 = (~top, ~lr, ~bottom) =>
    `${Data.lineStyle(top)} ${Data.lineStyle(lr)} ${Data.lineStyle(bottom)}`;
  let borderStyle4 = (~top, ~right, ~bottom, ~left) =>
    `${Data.lineStyle(top)} ${Data.lineStyle(right)} ${Data.lineStyle(bottom)} ${Data.lineStyle(left)}`;

  let borderWidth = v => Data.lineWidth_global(v);
  let borderWidth2 = (~tb, ~lr) => 
    `${Data.lineWidth(tb)} ${Data.lineWidth(lr)}`;
  let borderWidth3 = (~top, ~lr, ~bottom) =>
    `${Data.lineWidth(top)} ${Data.lineWidth(lr)} ${Data.lineWidth(bottom)}`;
  let borderWidth4 = (~top, ~right, ~bottom, ~left) =>
    `${Data.lineWidth(top)} ${Data.lineWidth(right)} ${Data.lineWidth(bottom)} ${Data.lineWidth(left)}`;

  let borderColor = v => Data.color_global(v);
  let borderColor2 = (~tb, ~lr) => `${Data.color(tb)} ${Data.color(lr)}`;
  let borderColor3 = (~top, ~lr, ~bottom) => 
    `${Data.color(top)} ${Data.color(lr)} ${Data.color(bottom)}`;
  let borderColor4 = (~top, ~right, ~bottom, ~left) =>
    `${Data.color(top)} ${Data.color(right)} ${Data.color(bottom)} ${Data.color(left)}`;

  let color = v => Data.color_global(v);

  let clear = v => Data.clear_global(v);

  let cursor = v => Data.cursorKeyword_global(v);
  let cursor1 = (i, k) =>
    `${Data.cursorImage(i)}, ${Data.cursorKeyword(k)}`;
  let cursor2 = (i1, i2, k) =>
    `${Data.cursorImage(i1)}, ${Data.cursorImage(i2)}, ${Data.cursorKeyword(k)}`;
  let cursor3 = (i1, i2, i3, k) =>
    `${Data.cursorImage(i1)}, ${Data.cursorImage(i2)}, ${Data.cursorImage(i3)}, ${Data.cursorKeyword(k)}`;
  let cursor4 = (i1, i2, i3, i4, k) =>
    `${Data.cursorImage(i1)}, ${Data.cursorImage(i2)}, ${Data.cursorImage(i3)}, ${Data.cursorImage(i4)}, ${Data.cursorKeyword(k)}`;

  let fontFamily = v => 
    Data.fontFamily_global(v);
  let fontFamily2 = (v1, v2) =>
    `${Data.fontFamily(v1)}, ${Data.fontFamily(v2)}`;
  let fontFamily3 = (v1, v2, v3) =>
    `${Data.fontFamily(v1)}, ${Data.fontFamily(v2)}, ${Data.fontFamily(v3)}`;
  let fontFamily4 = (v1, v2, v3, v4) =>
    `${Data.fontFamily(v1)}, ${Data.fontFamily(v2)}, ${Data.fontFamily(v3)}, ${Data.fontFamily(v4)}`;

  let fontWeight = v => Data.fontWeight_global(v);

  let margin = v => Data.margin_global(v);
  let margin2 = (~tb, ~lr) => 
    `${Data.margin(tb)} ${Data.margin(lr)}`;
  let margin3 = (~top, ~lr, ~bottom) =>
    `${Data.margin(top)} ${Data.margin(lr)} ${Data.margin(bottom)}`;
  let margin4 = (~top, ~right, ~bottom, ~left) =>
    `${Data.margin(top)} ${Data.margin(right)} ${Data.margin(bottom)} ${Data.margin(left)}`;

  let padding = v => Data.padding_global(v);
  let padding2 = (~tb, ~lr) => 
    `${Data.padding(tb)} ${Data.padding(lr)}`;
  let padding3 = (~top, ~lr, ~bottom) =>
    `${Data.padding(top)} ${Data.padding(lr)} ${Data.padding(bottom)}`;
  let padding4 = (~top, ~right, ~bottom, ~left) =>
    `${Data.padding(top)} ${Data.padding(right)} ${Data.padding(bottom)} ${Data.padding(left)}`;
};