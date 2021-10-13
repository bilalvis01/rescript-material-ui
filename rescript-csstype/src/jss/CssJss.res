module Syntax = {
  type importantParam<'data> = [ 
    | CssType.Syntax.declaration 
    | CssType.Syntax.declarationFn<'data> 
  ];

  type important<'data> = [
    | #Important(importantParam<'data>)
  ];
  
  type styleDeclaration<'data> = [
    | CssType.Syntax.styleDeclaration<'data>
    | important<'data>
  ];

  type styleRule<'data> = [
    | CssType.Syntax.styleRule<'data>
  ];
};

module Important = {
  let makeValueImportant: CssType.boxPropertyValue => CssType.boxPropertyValue = value =>
    %raw(`
      function (value) {                
        if (Array.isArray(value)) {
          let val = value.map(item => {
            if (Array.isArray(item)) {
              return item;
            }

            return [item];
          });
          
          return [...val, '!important'];
        }

        return [[value], '!important'];
      }
    `)(value);

  let makeValueFnImportant: CssType.boxPropertyValueFn<'data> => CssType.boxPropertyValueFn<'data> = value => 
    %raw(`
      function (valueFn) {
        return function (data) {
          let value = valueFn(data)
      
          if (Array.isArray(value)) {
            let val = value
              .map(item => {
                if (Array.isArray(item)) {
                  return item
                }

                return [item]
              });
            
            return [...val, '!important'];
          }

          return [[value], '!important'];
        }
      }
    `)(value);

  let make = v => {
    switch v { 
    | #Important(v) =>
      switch v {
      | #...CssType.Syntax.declaration as d => {
          let (selector, value) = CssDeclaration.make(d);
          (selector, makeValueImportant(value))
          ->CssDeclaration.toStyleDeclaration;
        }
      | #...CssType.Syntax.declarationFn as d => {
          let (selector, value) = CssDeclarationFn.make(d);
          (selector, makeValueFnImportant(value))
          ->CssDeclarationFn.toStyleDeclaration;
        }
      }
    }
  };

  module Helper = {
    let important = v => #Important(v);
  };
};

module DeclarationBlock = CssDeclarationBlock.Make({
  type syntax<'data> = Syntax.styleDeclaration<'data>;
  let styleDeclaration = declaration => {
    switch declaration {
    | #...CssType.Syntax.styleDeclaration as d => CssStyleDeclaration.make(d)
    | #...Syntax.important as d => Important.make(d)
    }
  }
});

module Statements = CssStatements.Make({
  type syntax<'data> = Syntax.styleRule<'data>;
  let styleRule = rule => {
    switch rule {
    | #...CssType.Syntax.styleRule as styleRule => CssStyleRule.make(styleRule)
    }
  };
});

let styles = Statements.make;
  
include CssHelper.Make({ 
  type syntax<'data> = Syntax.styleDeclaration<'data>;
  let declarationBlock = DeclarationBlock.make;
});

include Important.Helper;