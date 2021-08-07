type t;

@get
external primary: t => string = "primary";
@get
external secondary: t => string = "secondary";
@get
external disabled: t => string = "disabled";
@get
external hint: t => string = "hint";

@obj
external make: (
  ~primary: string=?,
  ~secondary: string=?,
  ~disabled: string=?,
  ~hint: string=?,
  unit
) => t = "";