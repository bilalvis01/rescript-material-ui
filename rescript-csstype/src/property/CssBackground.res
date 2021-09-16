open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "background";

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

module DeclarationHelper = {
  let background = (
    ~color=?,
    ~position=?,
    ~size=?,
    ~repeat=?,
    ~attachment=?,
    ~origin=?,
    ~clip=?,
    imageOrColor
  ) => 
    declaration(
      property,
      value(
        ~color=?color,
        ~position=?position,
        ~size=?size,
        ~repeat=?repeat,
        ~attachment=?attachment,
        ~origin=?origin,
        ~clip=?clip,
        imageOrColor
      )
    );
  let background2 = (l1, l2) => 
    declaration(property, value2(l1, l2));
  let background3 = (l1, l2, l3) => 
    declaration(property, value3(l1, l2, l3));
  let background4 = (l1, l2, l3, l4) => 
    declaration(property, value4(l1, l2, l3, l4));
  let backgroundUnion = v =>
    declaration(property, v);
  let backgroundString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let backgroundFn = v => declarationFn(property, v);
};