type t;

@send
external active: t => string = "active";
@send
external hover: t => string = "hover";
@send
external hoverOpacity: t => float = "hoverOpacity";
@send
external selected: t => string = "selected";
@send
external selectedOpacity: t => float = "selectedOpacity";
@send
external disabledBackground: t => string = "disabledBackground";
@send
external focus: t => string = "focus";
@send
external focusOpacity: t => float = "focusOpacity";
@send
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