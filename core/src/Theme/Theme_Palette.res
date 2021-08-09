type typeDivider = string;

type t;

@get
external common: t => Theme_CommonColors.t = "common";
@get
external mode: t => MaterialuiType.palleteMode = "mode";
@get
external contrastThreshold: t => float = "contrastThreshold";
@get
external tonalOffsetUnsafe: t => Theme_TonalOffset.obj = "tonalOffset";
@get
external tonalOffsetUnsafeNumber: t => float = "tonalOffset";
@get
external getTonalOffset: t => 'a = "tonalOffset";
@get
external primary: t => Theme_PaletteColor.t = "primary";
@get
external secondary: t => Theme_PaletteColor.t = "secondary";
@get
external error: t => Theme_PaletteColor.t = "error";
@get
external warning: t => Theme_PaletteColor.t = "warning";
@get
external info: t => Theme_PaletteColor.t = "info";
@get
external success: t => Theme_PaletteColor.t = "success";
@get
external grey: t => Theme_Color.t = "grey";
@get
external text: t => Theme_TextColor.t = "text";
@get
external divider: t => typeDivider = "divider";
@get
external action: t => Theme_ActionColor.t = "action";
@get
external background: t => Theme_BackgroundColor.t = "background";
@send
external getContrastText: (t, string) => string = "getContrastText";
@send
external getAugmentColor: (
  t, 
  Theme_PaletteColorOptions.t, 
  option<string>, 
  option<string>,
  option<string>,
) => Theme_PaletteColor.t = "augmentColor";


let tonalOffset = v => {
  let v = getTonalOffset(v);
  if (v->Js.typeof == "number") {
    Theme_TonalOffset.Number(Obj.magic(v): float);
  }
  else { 
    Theme_TonalOffset.Obj(Obj.magic(v): Theme_TonalOffset.obj);
  }
};

let augmentColor = (palette, options) => {
  let color = options->Theme_AugmentColorOptions.color;
  let mainShade = options->Theme_AugmentColorOptions.mainShade;
  let lightShade = options->Theme_AugmentColorOptions.lightShade;
  let darkShade = options->Theme_AugmentColorOptions.darkShade;
  palette->getAugmentColor(color, mainShade, lightShade, darkShade);
};

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
  ~grey: Theme_Color.t=?,
  ~text: Theme_TextColor.t=?,
  ~divider: string=?,
  ~action: Theme_ActionColor.t=?,
  ~background: Theme_BackgroundColor.t=?,
  ~getContrastText: string => string=?,
  unit
) => t = "";