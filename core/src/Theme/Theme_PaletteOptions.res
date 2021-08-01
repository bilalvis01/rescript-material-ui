type t;

@obj
external make: (
  ~primary: Theme_PaletteColorOptions.t=?,
  ~secondary: Theme_PaletteColorOptions.t=?,
  ~error: Theme_PaletteColorOptions.t=?,
  ~warning: Theme_PaletteColorOptions.t=?,
  ~info: Theme_PaletteColorOptions.t=?,
  ~success: Theme_PaletteColorOptions.t=?,
  ~mode: MaterialuiType.palleteMode=?,
  ~tonalOffset: Theme_TonalOffset.t=?,
  ~contrastThreshold: float=?,
  ~common: Theme_CommonColors.t=?,
  ~grey: Theme_ColorPartial.t=?,
  ~text: Theme_TextColor.t=?,
  ~divider: string=?,
  ~action: Theme_ActionColor.t=?,
  ~background: Theme_BackgroundColor.t=?,
  ~getContrastText: string => string=?,
  unit
) => t = "";