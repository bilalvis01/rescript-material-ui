type t;

@send
external black: t => string = "black";
@send
external white: t => string = "white";

@send
external make: (
  ~black: string=?,
  ~white: string=?,
  unit
) => t = "";