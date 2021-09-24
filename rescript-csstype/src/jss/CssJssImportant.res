type declaration<'data> = [ 
  | CssDeclaration.constructor 
  | CssDeclarationFn.constructor<'data> 
];

type constructor<'data> = [
  | #Important(declaration<'data>)
];

module Make = (
  Type: {
    type value<'data>;
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  module Declaration = {
    let makeValueImportant: CssDeclaration.boxValue => CssDeclaration.boxValue =
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
      `);
    external toImportant: CssDeclaration.t => t<'data> = "%identity";
    let make = v => {
      let (selector, value) = CssDeclaration.make(v);
      (selector, makeValueImportant(value))
      ->toImportant
    } 
  };

  module DeclarationFn = {
    let makeValueImportant =
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
      `);
    external toImportant: CssDeclarationFn.t<'data> => t<'data> = "%identity";
    let make: CssDeclarationFn.constructor<'data> => t<'data> = v => {
      let (selector, value) = CssDeclarationFn.make(v);
      (selector, makeValueImportant(value))
      ->toImportant
    }
  };

  let make = v => {
    switch v { 
    | #Important(v) =>
      switch v {
      | #...CssDeclaration.constructor as d => Declaration.make(d)
      | #...CssDeclarationFn.constructor as d => DeclarationFn.make(d)
      }
    }
  };
};

module Helper = {
  let important = v => #Important(v);
};