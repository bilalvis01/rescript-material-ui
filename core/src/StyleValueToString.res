open StyleType;
open Belt;

// Global
external global: global => string = "%identity";

// Number
let num = v => Float.toString(v);
let number = v => {
  switch v {
    | #num(v) => num(v)
  }
};

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

// Percentage
let pct = v => `${v->Float.toString}%`;
let percentage = v => {
  switch v {
    | #pct(v) => `${v->Float.toString}%`
  }
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

// Color
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
let rgbValue = v => {
  switch v {
    | #...percentage as l => percentage(l)
    | #...number as n => number(n)
  };
};
let hsl = (v1, v2, v3) => `hsl(${hue(v1)}, ${percentage(v2)}, ${percentage(v3)})`;
let hsla = (v1, v2, v3, v4) => `hsla(${hue(v1)}, ${percentage(v2)}, ${percentage(v3)}, ${alpha(v4)})`;
let rgb = (v1, v2, v3) => `rgb(${rgbValue(v1)}, ${rgbValue(v2)}, ${rgbValue(v3)})`;
let rgba = (v1, v2, v3, v4) => `rgba(${rgbValue(v1)}, ${rgbValue(v2)}, ${rgbValue(v3)}, ${alpha(v4)})`;
let rgbHex = v => `#${v}`;
external colorKeyword: colorKeyword => string = "%identity"; 
let color = v => {
  switch v {
    | #hsl(v1, v2, v3) => hsl(v1, v2, v3)
    | #hsla(v1, v2, v3, v4) => hsla(v1, v2, v3, v4)
    | #rgb(v1, v2, v3) => rgb(v1, v2, v3)
    | #rgba(v1, v2, v3, v4) =>  rgba(v1, v2, v3, v4)
    | #rgbHex(v) => rgbHex(v)
    | #...colorKeyword as c => colorKeyword(c)
  };
};

// Border
let borderColor = v => {
  switch v {
    | #...color as c => color(c)
    | #...global as g => global(g)
    | #revert => "revert"
  };
};