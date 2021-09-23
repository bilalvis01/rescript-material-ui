module Make: (
  Type: {
    type t<'data>;
    type value<'data>;
  }
) => {
  type advancedDeclarationConstructorLike<'data, 'declarationBlocks> = [
    | CssDeclaration.constructor
    | CssDeclarationFn.constructor<'data>
    | CssRule.constructor<'declarationBlocks>
    | CssPseudoClass.constructor<'declarationBlocks>
    | CssAtRule.constructor
    | CssImportant.constructor<'data>
  ];

  type advancedDeclarationConstructor<'data> = 
    advancedDeclarationConstructorLike<'data, Type.t<'data>>;

  let make: array<advancedDeclarationConstructor<'data>> => Type.t<'data>;
};