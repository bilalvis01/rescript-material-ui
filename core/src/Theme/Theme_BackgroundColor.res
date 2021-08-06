type t;

@get
external default: t => string = "default";
@get
external paper: t => string = "paper";

@obj
external make: (
  ~default: string=?,
  ~paper: string=?,
  unit
) => t = "";