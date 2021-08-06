type t;

/*
Palette
*/
module Palette = Theme_Palette;
module Color = Theme_Color; 
module ActionColor = Theme_ActionColor;
module AugmentColor = Theme_AugmentColor;
module BackgroundColor = Theme_BackgroundColor;
module CommonColors = Theme_CommonColors;
module PaletteColor = Theme_PaletteColor;
module PaletteColorOptions = Theme_PaletteColorOptions;
module TextColor = Theme_TextColor;
module TonalOffset = Theme_TonalOffset;

/*
Typography
*/
module Typography = Theme_Typography;

@get
external palette: t => Palette.t = "palette";

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