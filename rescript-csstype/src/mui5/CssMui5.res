module Make = (
  Type: {
    type value<'data>;
    type declarationBlock<'data>;
    type statements<'data>;
  }
) => {
  module DeclarationBlock = CssMui5DeclarationBlock.Make({
    type t<'data> = Type.declarationBlock<'data>;
    type value<'data> = Type.value<'data>;
  });

  module Statements = CssMui5Statements.Make({
    type t<'data> = Type.statements<'data>;
    type declarationBlock<'data> = Type.declarationBlock<'data>;
  });

  let style = DeclarationBlock.make;
  let styles = Statements.make;
  
  /*
  Helper
  */
  include CssHelper.Make({ 
    type declarationBlock<'data> = Type.declarationBlock<'data>; 
    type declarationConstructor<'data> = CssMui5DeclarationBlock.constructor<'data, Type.declarationBlock<'data>>;
    let style = DeclarationBlock.make; 
  });
};