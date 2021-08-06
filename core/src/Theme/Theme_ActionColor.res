type t;

@get
external active: t => string = "active";
@get
external hover: t => string = "hover";
@get
external hoverOpacity: t => float = "hoverOpacity";
@get
external selected: t => string = "selected";
@get
external selectedOpacity: t => float = "selectedOpacity";
@get
external disabledBackground: t => string = "disabledBackground";
@get
external focus: t => string = "focus";
@get
external focusOpacity: t => float = "focusOpacity";
@get
external activatedOpacity: t => float = "activatedOpacity";

@obj
external make: (
  ~active: string=?,
  ~hover: string=?,
  ~hoverOpacity: float=?,
  ~selected: string=?,
  ~selectedOpacity: float=?,
  ~disabled: string=?,
  ~disabledOpacity: float=?,
  ~disabledBackground: string=?,
  ~focus: string=?,
  ~focusOpacity: float=?,
  ~activatedOpacity: float=?,
  unit
) => t = "";