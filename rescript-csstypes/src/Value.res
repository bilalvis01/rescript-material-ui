open Type;
type synthetic<'a>;

module Basic = {
  // Number
  let num = v => #number(v);
  external number: float => synthetic<'a> = "%identity";

  // Integer
  let int = v => #int(v);
  external integer: int => synthetic<'a> = "%identity";

  // String
  let str = v => #string(v);
  external string: string => synthetic<'a> = "%identity";


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
};

module Combinator = {
  let many = v => #many(v);
  let stack = v => #stack(v);
  let join = (v1, v2) => #join(v1, v2);
  let concat = (v1, v2) => #concat(v1, v2);
};

module Border = {
  type tag;
  type t = synthetic<tag>;
  external string: string => t = "%identity";
  let make = v => ValueToString.border(v)->string;
  let make2 = (v1, v2) => 
    v1
    ->Combinator.concat(v2)
    ->ValueToString.border
    ->string;
  let make3 = (v1, v2, v3) =>
    v1
    ->Combinator.concat(v2)
    ->Combinator.concat(v3)
    ->ValueToString.border
    ->string;
};

external borderColorString: string => borderColor = "%identity";
let borderColor2 = (v1, v2) => 
  borderColorString(`${ValueToString.borderColor(v1)} ${ValueToString.borderColor(v2)}`);
let borderColor3 = (v1, v2, v3) => 
  borderColorString(`${ValueToString.borderColor(v1)} ${ValueToString.borderColor(v2)} ${ValueToString.borderColor(v3)}`);
let borderColor4 = (v1, v2, v3, v4) => 
  borderColorString(`${ValueToString.borderColor(v1)} ${ValueToString.borderColor(v2)} ${ValueToString.borderColor(v3)} ${ValueToString.borderColor(v4)}`);