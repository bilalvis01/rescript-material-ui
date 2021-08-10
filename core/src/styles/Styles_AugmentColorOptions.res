type t;

@get
external color: t => Styles_PaletteColorOptions.t = "color";
@get
external mainShade: t => option<string> = "mainShade";
@get
external lightShade: t => option<string> = "lightShade";
@get
external darkShade: t => option<string> = "darkShade";

@obj
external make: (
  ~color: Styles_PaletteColorOptions.t,
  ~mainShade: string=?,
  ~lightShade: string=?,
  ~darkShade: string=?,
  unit
) => t = "";