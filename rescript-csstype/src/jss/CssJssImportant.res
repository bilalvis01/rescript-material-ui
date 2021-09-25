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

  module Declaration = CssDeclaration.Make({
    type value<'data> = Type.value<'data>;
    let makeValueImportant: CssDeclaration.boxValue => value<'data> = value =>
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
    let map = ((selector, value)) => (selector, makeValueImportant(value));
  });

  module DeclarationFn = CssDeclarationFn.Make({
    type value<'data> = Type.value<'data>;
    let makeValueImportant: CssDeclarationFn.boxValue<'data> => value<'data> = value => 
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
    let map = ((selector, value)) => (selector, makeValueImportant(value));
  });

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