module Make = (
  Type: {
    type value<'data>;
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  module DeclarationFn = CssDeclarationFn.Make({
    type value<'data> = Type.value<'data>;
  });

  external declarationToImportant: CssDeclaration.t => t<'data> = "%identity";

  let make = v => {
    switch v {
    | #Important(v) =>
      switch v {
      | #...CssDeclarationConstructor.t as d =>
        {
          let (selector, value) = CssDeclaration.make(d);
          let makeImportant: CssDeclarationConstructor.boxValue => CssDeclarationConstructor.boxValue =
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
          (selector, value)->declarationToImportant;
        }
      | #...CssDeclarationFnConstructor.t as d =>
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