module Make: (
  Type: {
    type t;
    let style: array<CssStyleType.declaration<t>> => t;
  }
) => {
  include (module type of CssDeclarationHelper);
  include (module type of CssSelectorHelper.Make({ type style = Type.t; let style = Type.style; }));
  include (module type of CssPseudoClassHelper.Make({ type style = Type.t; let style = Type.style; }));
};