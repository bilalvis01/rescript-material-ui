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
external getTonalOffset: t => 'a = "tonalOffset";
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

let tonalOffset = v => {
  if (Js.typeof(v) == "number") {
    Theme_TonalOffset.Number(Obj.magic(v): float);
  }
  else { 
    Theme_TonalOffset.Obj(Obj.magic(v): Theme_TonalOffset.t);
  }
};

@module("@material-ui/core/styles")
external createPalette: Theme_PaletteOptions.t => t = "pallete";

let make = (
  ~primary=?,
  ~secondary=?,
  ~error=?,
  ~warning=?,
  ~info=?,
  ~success=?,
  ~mode=?,
  ~tonalOffset=?,
  ~contrastThreshold=?,
  ~common=?,
  ~grey=?,
  ~text=?,
  ~divider=?,
  ~action=?,
  ~background=?,
  ~getContrastText=?,
  ()
) => {
  Theme_PaletteOptions.make(
    ~primary=?primary,
    ~secondary=?secondary,
    ~error=?error,
    ~warning=?warning,
    ~info=?info,
    ~success=?success,
    ~mode=?mode,
    ~tonalOffset=?tonalOffset,
    ~contrastThreshold=?contrastThreshold,
    ~common=?common,
    ~grey=?grey,
    ~text=?text,
    ~divider=?divider,
    ~action=?action,
    ~background=?background,
    ~getContrastText=?getContrastText,
    ()
  )
  ->createPalette;
};