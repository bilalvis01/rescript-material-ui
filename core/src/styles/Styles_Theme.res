type t;

@get
external palette: t => Styles_Palette.t = "palette";
@get
external typography: t => Styles_Typography.t = "typography";

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