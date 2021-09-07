module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssValueType.lineStyle_global => Type.t;
  let value2: (~tb: CssValueType.lineStyle, ~lr: CssValueType.lineStyle) => Type.t;
  let value3: (
    ~top: CssValueType.lineStyle, 
    ~lr: CssValueType.lineStyle, 
    ~bottom: CssValueType.lineStyle
  ) => Type.t;
  let value4: (
    ~top: CssValueType.lineStyle, 
    ~right: CssValueType.lineStyle, 
    ~bottom: CssValueType.lineStyle, 
    ~left: CssValueType.lineStyle
  ) => Type.t;

  module DeclarationConstructor: {
    type t = [ | #BorderStyle(Type.t) ];
  };

  module DeclarationFnConstructor: {
    type borderStyle<'data> = [ | #BorderStyleFn('data => option<Type.t>) ];
    type t<'data> = [
      | DeclarationConstructor.t
      | borderStyle<'data>
    ];
  };

  module DeclarationHelper: {
    let borderStyle: CssValueType.lineStyle_global => [> DeclarationConstructor.t ];
    let borderStyle2: (
      ~tb: CssValueType.lineStyle, 
      ~lr: CssValueType.lineStyle
    ) => [> DeclarationConstructor.t ];
    let borderStyle3: (
      ~top: CssValueType.lineStyle, 
      ~lr: CssValueType.lineStyle, 
      ~bottom: CssValueType.lineStyle
    ) => [> DeclarationConstructor.t ];
    let borderStyle4: (
      ~top: CssValueType.lineStyle, 
      ~right: CssValueType.lineStyle, 
      ~bottom: CssValueType.lineStyle, 
      ~left: CssValueType.lineStyle
    ) => [> DeclarationConstructor.t ];
    let borderStyleUnion: Type.t => [> DeclarationConstructor.t ];
    let borderStyleString: string => [> DeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderStyleFn: ('data => option<Type.t>) => [> DeclarationFnConstructor.borderStyle<'data> ];
  };
};