type t;

@send
external default: t => string = "default";
@send
external paper: t => string = "paper";

@obj
external make: (
  ~default: string=?,
  ~paper: string=?,
  unit
) => t = "";