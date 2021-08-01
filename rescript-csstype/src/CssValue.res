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

/*
Position
*/
let position2 = (p1, p2) => #position2(p1, p2);
let position3 = (p1, p2, p3) => #position3(p1, p2, p3);
let position4 = (p1, p2, p3, p4) => #position4(p1, p2, p3, p4); 

/*
Image data types
*/
let src = v => #src(v);

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
let bgSize2 = (s1, s2) => #bgSize2(s1, s2);