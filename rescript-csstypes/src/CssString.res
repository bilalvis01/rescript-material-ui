open CssType;
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
external global: global => string = "%identity"; 

let string = v => {
  switch v {
    | #string(v) => v
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

// Scalar
let scalar = v => {
  switch v {
    | #...number as n => number(n)
    | #...integer as i => integer(i)
    | #...string_ as s => string(s)
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

external lineStyle: lineStyle => string = "%identity";

/*
Color
*/
let hue = v => { 
  switch v {
    | #...angle as a => angle(a)
    | #...number as n => number(n)
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
  };
};
let hsl = (v1, v2, v3) => `hsl(${hue(v1)}, ${percentage(v2)}, ${percentage(v3)})`;
let hsla = (v1, v2, v3, v4) => `hsla(${hue(v1)}, ${percentage(v2)}, ${percentage(v3)}, ${alpha(v4)})`;
let rgb = (v1, v2, v3) => `rgb(${rgbParam(v1)}, ${rgbParam(v2)}, ${rgbParam(v3)})`;
let rgba = (v1, v2, v3, v4) => `rgba(${rgbParam(v1)}, ${rgbParam(v2)}, ${rgbParam(v3)}, ${alpha(v4)})`;
let rgbX = v => `#${v}`;
external colorKeyword: colorKeyword => string = "%identity"; 
let color = v => {
  switch v {
    | #hsl(v1, v2, v3) => hsl(v1, v2, v3)
    | #hsla(v1, v2, v3, v4) => hsla(v1, v2, v3, v4)
    | #rgb(v1, v2, v3) => rgb(v1, v2, v3)
    | #rgba(v1, v2, v3, v4) =>  rgba(v1, v2, v3, v4)
    | #rgbX(v) => rgbX(v)
    | #...colorKeyword as c => colorKeyword(c)
  };
};