type t;

@send
external primary: t => string = "primary";
@send
external secondary: t => string = "secondary";
@send
external disbled: t => string = "desabled";

@obj
external make: (
  ~primary: string=?,
  ~secondary: string=?,
  ~disbaled: string=?,
  unit
) => t = "";