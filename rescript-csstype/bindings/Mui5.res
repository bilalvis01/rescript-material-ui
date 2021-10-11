module Css = CssMui5;

module Primary = {
  type t;

  @get
  external main: t => string = "main";
};

module Palette = {
  type t;

  @get
  external primary: t => Primary.t = "primary";
};

module Theme = {
  type t;

  @get
  external palette: t => Palette.t = "palette";
};

module Box = {
  @react.component @module("@mui/material/Box")
  external make: (
    ~sx: CssType.declarationBlock<Theme.t>
  ) => React.element = "default";
};

module GlobalStyles = {
  @react.component @module("@mui/material/GlobalStyles")
  external make: (
    ~styles: Theme.t => CssType.statements<Theme.t>
  ) => React.element = "default";
};