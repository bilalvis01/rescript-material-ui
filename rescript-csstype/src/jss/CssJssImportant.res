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
    external toImportant: CssDeclaration.t => t<'data> = "%identity";
    let make = v => CssDeclaration.make(v)->toImportant;
  };

  module DeclarationFn = {
    external toImportant: CssDeclarationFn.t<'data> => t<'data> = "%identity";
    let make = v => CssDeclarationFn.make(v)->toImportant;
  };

  let make = v => {
    switch v {
    | #Important(v) =>
      switch v {
      | #...CssDeclaration.constructor as d =>
        {
          let (selector, value) = Declaration.make(d);
          let makeImportant: Type.value<'data> => Type.value<'data> =
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
          let value = makeImportant(value);
          (selector, value);
        }
      | #...CssDeclarationFn.constructor as d =>
        {
          let (selector, valueFn) = DeclarationFn.make(d);
          let makeImportant: Type.value<'data> => Type.value<'data> =
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
          let valueFn = makeImportant(valueFn);
          (selector, valueFn)
        }
      }
    }
  };
};

module Helper = {
  let important = v => #Important(v);
};