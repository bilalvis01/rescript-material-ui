type t;
type options;
type styleSheet<'data>;
type value<'data>;
type declarationBlock<'data>;
type statements<'data>;

module Css = CssJss.Make({
  type value<'data> = value<'data>;
  type declarationBlock<'data> = declarationBlock<'data>;
  type statements<'data> = statements<'data>;
});

@module("jss")
external jss: t = "default";

@module("jss-preset-default")
external preset: unit => options = "default";

@send
external setup: (t, options) => t = "setup";

@send
external createStyleSheet: (t, statements<'data>) => styleSheet<'data> = "createStyleSheet";

@send
external toString: styleSheet<'data> => string = "toString";

@send
external update: (styleSheet<'data>, 'data) => styleSheet<'data> = "update";