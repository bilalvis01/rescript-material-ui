type t;

@get
external palette: t => Styles_Palette.t = "palette";
@get
external typography: t => Styles_Typography.t = "typography";

let make: (
  ~palette: Styles_Palette.t=?,
  unit
) => t;