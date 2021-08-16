type t;
type options;
type styleSheet<'data>;

@module("jss")
external jss: t = "default";

@module("jss-preset-default")
external preset: unit => options = "default";

@send
external setup: (t, options) => t = "setup";

@send
external createStyleSheet: (t, Css.rules<'data>) => styleSheet<'data> = "createStyleSheet";

@send
external toString: styleSheet<'data> => string = "toString";

@send
external update: (styleSheet<'data>, 'data) => styleSheet<'data> = "update";