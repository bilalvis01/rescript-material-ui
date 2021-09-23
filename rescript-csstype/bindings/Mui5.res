type value<'data>;
type declarationBlock<'data>;
type statements<'data>;

module Css = CssJss.Make({
  type value<'data> = value<'data>;
  type declarationBlock<'data> = declarationBlock<'data>;
  type statements<'data> = statements<'data>;
});