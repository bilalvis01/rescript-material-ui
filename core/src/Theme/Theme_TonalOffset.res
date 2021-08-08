type t;

type obj = {
  light: float,
  dark: float,
};

type case = 
  | Number(float)
  | Obj(obj);

external number: float => t = "%identity";

@obj
external make: (
  ~light: float=?,
  ~dark: float=?,
) => t = "";