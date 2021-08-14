type t;
external string: string => t = "%identity";
let value = (
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
  | #...CssValueType.global as g => CssValueString.global(g)
  | #...CssValueType.bgImage as imageOrColor
  | #...CssValueType.color as imageOrColor =>
    CssValueString.background(
      ~color=?color,
      ~position=?position,
      ~size=?size,
      ~repeat=?repeat,
      ~attachment=?attachment,
      ~origin=?origin,
      ~clip=?clip,
      imageOrColor
    );
  }
  ->string;
};
let value2 = (l1, l2) => 
  `${CssValueString.bgLayer(l1)}, ${CssValueString.bgLayer(l2)}`->string;
let value3 = (l1, l2, l3) =>
  `${CssValueString.bgLayer(l1)}, ${CssValueString.bgLayer(l2)}, ${CssValueString.bgLayer(l3)}`->string;
let value4 = (l1, l2, l3, l4) =>
  `${CssValueString.bgLayer(l1)}, ${CssValueString.bgLayer(l2)}, ${CssValueString.bgLayer(l3)}, ${CssValueString.bgLayer(l4)}`
  ->string;