type declaration<'data> = [ 
  | CssType.declaration
  | CssType.declarationFn<'data> 
];

type constructor<'data> = [
  | #Important(declaration<'data>)
];

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
    | #...CssType.declaration as d => {
        let (selector, value) = CssDeclaration.make(d);
        (selector, makeValueImportant(value))
        ->CssDeclaration.toStyleDeclaration;
      }
    | #...CssType.declarationFn as d => {
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