module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  external number: float => Type.t = "%identity";
  let value: CssValueType.margin_global => Type.t;

  /*
  module DeclarationConstructor: {
    type top = [ | #MarginTop(Type.t) ];
    type right = [ | #MarginRight(Type.t) ];
    type bottom = [ | #MarginBottom(Type.t) ];
    type left = [ | #MarginLeft(Type.t) ];
    type t = [
      | top
      | right
      | bottom
      | left
    ];
  };

  module DeclarationFnConstructor: {
    type top<'data> = [ | #MarginTopFn('data => option<Type.t>) ];
    type right<'data> = [ | #MarginRightFn('data => option<Type.t>) ];
    type bottom<'data> = [ | #MarginBottomFn('data => option<Type.t>) ];
    type left<'data> = [ | #MarginLeftFn('data => option<Type.t>) ];
    type t<'data> = [
      | DeclarationConstructor.t
      | top<'data>
      | right<'data>
      | bottom<'data>
      | left<'data>
    ];
  };

  module DeclarationHelper: {
    let marginTop: CssValueType.margin_global => [> DeclarationConstructor.top ];
    let marginTopUnion: Type.t => [> DeclarationConstructor.top ];
    let marginTopString: string => [> DeclarationConstructor.top ];
    let marginTopNumber: float => [> DeclarationConstructor.top ];

    let marginRight: CssValueType.margin_global => [> DeclarationConstructor.right ];
    let marginRightUnion: Type.t => [> DeclarationConstructor.right ];
    let marginRightString: string => [> DeclarationConstructor.right ];
    let marginRightNumber: float => [> DeclarationConstructor.right ];

    let marginBottom: CssValueType.margin_global => [> DeclarationConstructor.bottom ];
    let marginBottomUnion: Type.t => [> DeclarationConstructor.bottom ];
    let marginBottomString: string => [> DeclarationConstructor.bottom ];
    let marginBottomNumber: float => [> DeclarationConstructor.bottom ];

    let marginLeft: CssValueType.margin_global => [> DeclarationConstructor.left ];
    let marginLeftUnion: Type.t => [> DeclarationConstructor.left ];
    let marginLeftString: string => [> DeclarationConstructor.left ];
    let marginLeftNumber: float => [> DeclarationConstructor.left ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let marginTopFn: ('data => option<Type.t>) => [> DeclarationFnConstructor.top<'data> ];
    let marginRightFn: ('data => option<Type.t>) => [> DeclarationFnConstructor.right<'data> ];
    let marginBottomFn: ('data => option<Type.t>) => [> DeclarationFnConstructor.bottom<'data> ];
    let marginLeftFn: ('data => option<Type.t>) => [> DeclarationFnConstructor.left<'data> ];
  };
  */
};