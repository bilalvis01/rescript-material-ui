type t;

@get
external palette: t => Theme_Palette.t = "palette";

@module("@material-ui/core/styles")
external createTheme: ThemeOptions.t => t = "createTheme";

let make = (
  ~palette=?,
  ()
) => {
  ThemeOptions.make(
    ~palette=?palette,
    ()
  )
  ->createTheme;
};