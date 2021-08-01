type t;

type variant = [
  | #h1
  | #h2
  | #h3
  | #h4
  | #h5
  | #h6
  | #subtitle1
  | #subittle2
  | #body1
  | #body2
  | #caption
  | #button
  | #overline
];

@module("@material-ui/core/styles")
external createTypography: (
  Theme_Palette.t, 
  Theme_TypographyOptions.t
) => t = "createTypography";