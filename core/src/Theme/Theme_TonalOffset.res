type t;
type case = 
  | Number(float)
  | Obj(t);

external number: float => t = "%identity";

@obj
external make: (
  ~light: float=?,
  ~dark: float=?,
) => t = "";