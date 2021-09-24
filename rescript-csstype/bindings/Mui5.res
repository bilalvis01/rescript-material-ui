type value<'data>;
type declarationBlock<'data>;
type statements<'data>;

module Css = CssMui5.Make({
  type value<'data> = value<'data>;
  type declarationBlock<'data> = declarationBlock<'data>;
  type statements<'data> = statements<'data>;
});

module Theme = {
  type t;
};

module Box = {
  @react.component @module("@mui/material/Box")
  external make: (
    ~sx: declarationBlock<Theme.t>
  ) => React.element = "default";
};