type typeDivider = string;

type t;

@send
external common: t => Theme_CommonColors.t = "common";
@send
external mode: t => MaterialuiType.palleteMode = "mode";
@send
external contrastThreshold: t => float = "contrastThreshold";
@send
external tonalOffsetUnsafe: t => Theme_TonalOffset.t = "tonalOffset";
@send
external tonalOffsetUnsafeNumber: t => float = "tonalOffset";
@send
external primary: t => Theme_PaletteColor.t = "primary";
@send
external secondary: t => Theme_PaletteColor.t = "secondary";
@send
external error: t => Theme_PaletteColor.t = "error";
@send
external warning: t => Theme_PaletteColor.t = "warning";
@send
external info: t => Theme_PaletteColor.t = "info";
@send
external success: t => Theme_PaletteColor.t = "success";
@send
external grey: t => Theme_Color.t = "grey";
@send
external text: t => Theme_TextColor.t = "text";
@send
external divider: t => typeDivider = "divider";
@send
external action: t => Theme_ActionColor.t = "action";
@send
external background: t => Theme_BackgroundColor.t = "background";
@send
external getContrastText: (t, string) => string = "getContrastText";
@send
external augmentColor: (t, Theme_AugmentColorOptions.t) => Theme_PaletteColor.t = "augmentColor";

let tonalOffset: t => Theme_TonalOffset.case;

let make: (
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
) => t;