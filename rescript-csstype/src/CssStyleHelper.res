module Make = (
  Type: {
    type t;
    let style: array<CssStyleType.declaration<t>> => t;
  }
) => {
  include CssDeclarationHelper;
  include CssSelectorHelper.Make({ 
    type style = Type.t; 
    let style = Type.style; 
  });
  include CssPseudoClassHelper.Make({ 
    type style = Type.t; 
    let style = Type.style; 
  });
};