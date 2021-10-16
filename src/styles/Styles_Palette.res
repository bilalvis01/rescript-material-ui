type typeDivider = string;

type t;

@get
external common: t => Styles_CommonColor.t = "common";
@get
external contrastThreshold: t => float = "contrastThreshold";
@get
external tonalOffsetUnsafe: t => Styles_TonalOffset.obj = "tonalOffset";
@get
external tonalOffsetUnsafeNumber: t => float = "tonalOffset";
@get
external getTonalOffset: t => 'a = "tonalOffset";
@get
external primary: t => Styles_PaletteColor.t = "primary";
@get
external secondary: t => Styles_PaletteColor.t = "secondary";
@get
external error: t => Styles_PaletteColor.t = "error";
@get
external warning: t => Styles_PaletteColor.t = "warning";
@get
external info: t => Styles_PaletteColor.t = "info";
@get
external success: t => Styles_PaletteColor.t = "success";
@get
external \"type": t => MaterialuiType.palleteType = "type";
@get
external grey: t => Styles_Color.t = "grey";
@get
external text: t => Styles_TextColor.t = "text";
@get
external divider: t => typeDivider = "divider";
@get
external action: t => Styles_ActionColor.t = "action";
@get
external background: t => Styles_BackgroundColor.t = "background";
@send
external getContrastText: (t, string) => string = "getContrastText";
@send
external getAugmentColor: (
  t, 
  Styles_PaletteColorOptions.t, 
  option<string>, 
  option<string>,
  option<string>,
) => Styles_PaletteColor.t = "augmentColor";


let tonalOffset = v => {
  let v = getTonalOffset(v);
  if (v->Js.typeof == "number") {
    Styles_TonalOffset.Number(Obj.magic(v): float);
  }
  else { 
    Styles_TonalOffset.Obj(Obj.magic(v): Styles_TonalOffset.obj);
  }
};

let augmentColor = (palette, options) => {
  let color = options->Styles_AugmentColorOptions.color;
  let mainShade = options->Styles_AugmentColorOptions.mainShade;
  let lightShade = options->Styles_AugmentColorOptions.lightShade;
  let darkShade = options->Styles_AugmentColorOptions.darkShade;
  palette->getAugmentColor(color, mainShade, lightShade, darkShade);
};

@obj
external make: (
  ~primary: Styles_PaletteColorOptions.t=?,
  ~secondary: Styles_PaletteColorOptions.t=?,
  ~error: Styles_PaletteColorOptions.t=?,
  ~warning: Styles_PaletteColorOptions.t=?,
  ~info: Styles_PaletteColorOptions.t=?,
  ~success: Styles_PaletteColorOptions.t=?,
  ~\"type": MaterialuiType.palleteType=?,
  ~tonalOffset: Styles_TonalOffset.t=?,
  ~contrastThreshold: float=?,
  ~common: Styles_CommonColor.t=?,
  ~grey: Styles_Color.t=?,
  ~text: Styles_TextColor.t=?,
  ~divider: string=?,
  ~action: Styles_ActionColor.t=?,
  ~background: Styles_BackgroundColor.t=?,
  ~getContrastText: string => string=?,
  unit
) => t = "";