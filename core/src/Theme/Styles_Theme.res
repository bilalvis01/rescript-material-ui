type t;

@get
external palette: t => Styles_Palette.t = "palette";

@module("@material-ui/core/styles")
external createTheme: Styles_ThemeOptions.t => t = "createTheme";

let make = (
  ~palette=?,
  ()
) => {
  Styles_ThemeOptions.make(
    ~palette=?palette,
    ()
  )
  ->createTheme;
};