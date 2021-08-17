module Make = (
  Type: {
    type value<'data>;
  }
) => {
  type t<'data> = (string, Type.value<'data>);

  external declarationToImportant: CssDeclaration.t => t<'data> = "%identity";
  external declarationFnToImpontant: CssDeclarationFn.t<'data> => t<'data> = "%identity";

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
                  return [...value.slice(), '!important'];
                }

                return [[value], '!important'];
              }
            `);
          let value = makeImportant(value);
          (selector, value)->declarationToImportant;
        }
      | #...CssDeclarationFnConstructor.t as d =>
        {
          let (selector, valueFn) = CssDeclarationFn.make(d);
          let makeImportant: CssDeclarationFnConstructor.boxValue<'data> => CssDeclarationFnConstructor.boxValue<'data> =
            %raw(`
              function (valueFn) {
                return function (data) {
                  let value = valueFn(data);
                  
                  if (Array.isArray(value)) {
                    return [...value.slice(), '!important'];
                  }

                  return [[value], '!important'];
                }
              }
            `);
          let valueFn = makeImportant(valueFn);
          (selector, valueFn)->declarationFnToImpontant
        }
      }
    }
  };
};