type t;

/*
Palette
*/
module Palette = Theme_Palette;
module Color = Theme_Color; 
module ColorPartial = Theme_ColorPartial;
module ActionColor = Theme_ActionColor;
module AugmentColorOptions = Theme_AugmentColorOptions;
module BackgroundColor = Theme_BackgroundColor;
module CommonColors = Theme_CommonColors;
module PaletteColor = Theme_PaletteColor;
module PaletteColorOptions = Theme_PaletteColorOptions;
module TextColor = Theme_TextColor;
module TonalOffset = Theme_TonalOffset;

let make: (
  ~palette: Theme_Palette.t=?,
  unit
) => t;