type t;

@obj
external make: (
  ~color: Theme_PaletteColorOptions.t,
  ~mainShade: 'mainShade,
  ~lightShade: 'lightShade,
  ~darkShade: 'darkShade,
  ~name: 'number,
) => t = "";