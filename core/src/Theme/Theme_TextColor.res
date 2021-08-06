type t;

@get
external primary: t => string = "primary";
@get
external secondary: t => string = "secondary";
@get
external disbled: t => string = "desabled";

@obj
external make: (
  ~primary: string=?,
  ~secondary: string=?,
  ~disbaled: string=?,
  unit
) => t = "";