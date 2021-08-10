type t;

@get
external black: t => string = "black";
@get
external white: t => string = "white";

@obj
external make: (
  ~black: string=?,
  ~white: string=?,
  unit
) => t = "";