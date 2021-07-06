open StyleType;

// Number
let num = v => #num(v);

// Length
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

// Color
let hsl = (v1, v2, v3) => #hsl(v1, v2, v3);
let hsla = (v1, v2, v3, v4) => #hsla(v1, v2, v3, v4);
let rgb = (v1, v2, v3) => #rgb(v1, v2, v3);
let rgba = (v1, v2, v3, v4) => #rgba(v1, v2, v3, v4);
let rgbHex = v => #rgbHex(v);

external borderString: string => border = "%identity";
let border2 = (
  ~style: lineStyle,
  widthOrColor: [ | color | lineWidth ] 
) => {
  let widthOrColor = switch widthOrColor {
    | #...color as c => StyleValueToString.color(c)
    | #...lineWidth as w => StyleValueToString.lineWidth(w)
  };

  borderString(`${StyleValueToString.lineStyle(style)} ${widthOrColor}`);
};
let border3 = (
  ~width: lineWidth,
  ~style: lineStyle,
  ~color: color
) => {
  borderString(`${StyleValueToString.lineWidth(width)} ${StyleValueToString.lineStyle(style)} ${StyleValueToString.color(color)}`);
};

external borderColorString: string => borderColor = "%identity";
let borderColor2 = (v1, v2) => 
  borderColorString(`${StyleValueToString.borderColor(v1)} ${StyleValueToString.borderColor(v2)}`);
let borderColor3 = (v1, v2, v3) => 
  borderColorString(`${StyleValueToString.borderColor(v1)} ${StyleValueToString.borderColor(v2)} ${StyleValueToString.borderColor(v3)}`);
let borderColor4 = (v1, v2, v3, v4) => 
  borderColorString(`${StyleValueToString.borderColor(v1)} ${StyleValueToString.borderColor(v2)} ${StyleValueToString.borderColor(v3)} ${StyleValueToString.borderColor(v4)}`);