type t;

@get
external palette: t => Theme_Palette.t = "palette";

let make: (
  ~palette: Theme_Palette.t=?,
  unit
) => t;