let styles = CssJssStatements.make;
  
include CssHelper.Make({ 
  type styleDeclaration<'data> = CssJssDeclarationBlock.styleDeclaration<'data>;
  let declarationBlock = CssJssDeclarationBlock.make;
});

include CssJssImportant.Helper;