type t;

@get
external palette: t => Styles_Palette.t = "palette";

let make: (
  ~palette: Styles_Palette.t=?,
  unit
) => t;