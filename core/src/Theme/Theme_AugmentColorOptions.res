type t;

@get
external color: t => Theme_PaletteColorOptions.t = "color";
@get
external mainShade: t => option<int> = "mainShade";
@get
external lightShade: t => option<int> = "lightShade";
@get
external darkShade: t => option<int> = "darkShade";

@obj
external make: (
  ~color: Theme_PaletteColorOptions.t,
  ~mainShade: int=?,
  ~lightShade: int=?,
  ~darkShade: int=?,
  unit
) => t = "";