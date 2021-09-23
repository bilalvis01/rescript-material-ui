module Make = (
  Type: {
    type value<'data>;
    type declarationBlock<'data>;
    type statementBlocks<'data>;
  }
) => {
  module DeclarationBlock = CssMui5DeclarationBlock.Make({
    type t<'data> = Type.declarationBlock<'data>;
    type value<'data> = Type.value<'data>;
  });

  module Statements = CssMui5Statements.Make({
    type t<'data> = Type.declarationBlock<'data>;
    type declarationBlock<'data> = Type.declarationBlock<'data>;
  });

  let style = DeclarationBlock.make;
  let styles = Statements.make;

  /*
  Property Value
  */
  include CssPropertyValue;
  
  /*
  Helper
  */
  include CssHelper.Make({ 
    type declarationBlock<'data> = Type.declarationBlock<'data>; 
    type declarationConstructor<'data> = DeclarationBlock.advancedDeclarationConstructor<'data>;
    let style = DeclarationBlock.make; 
  });
};