type t;

module Color = {
  @obj
  external make: (
    ~\"50": string=?,
    ~\"100": string=?,
    ~\"200": string=?,
    ~\"300": string=?,
    ~\"400": string=?,
    ~\"500": string=?,
    ~\"600": string=?,
    ~\"700": string=?,
    ~\"800": string=?,
    ~\"900": string=?,
    ~\"A100": string=?,
    ~\"A200": string=?,
    ~\"A400": string=?,
    ~\"A700": string=?,
    unit
  ) => t = "";
};

module SimpleColor = {
  @obj
  external make: (
    ~light: string=?,
    ~main: string,
    ~dark: string=?,
    ~contrastText: string=?,
    unit
  ) => t = "";
};