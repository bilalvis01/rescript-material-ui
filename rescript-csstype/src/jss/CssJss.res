module Make = (
  Type: {
    type value<'data>;
    type declarationBlock<'data>;
    type statements<'data>;
  }
) => {
  module DeclarationBlock = CssJssDeclarationBlock.Make({
    type t<'data> = Type.declarationBlock<'data>;
    type value<'data> = Type.value<'data>;
  });

  module Statements = CssJssStatements.Make({
    type t<'data> = Type.statements<'data>;
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