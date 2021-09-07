module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  external number: float => Type.t = "%identity";
  let value: CssValueType.padding_global => Type.t;

  /*
  module DeclarationConstructor: {
    type top = [ | #PaddingTop(Type.t) ];
    type bottom = [ | #PaddingBottom(Type.t) ];
    type right = [ | #PaddingRight(Type.t) ];
    type left = [ | #PaddingLeft(Type.t) ];
    type t = [
      | top
      | bottom
      | right
      | left
    ];
  };

  module DeclarationFnConstructor: {
    type top<'data> = [ | #PaddingTopFn('data => option<Type.t>) ];
    type bottom<'data> = [ | #PaddingBottomFn('data => option<Type.t>) ];
    type right<'data> = [ | #PaddingRightFn('data => option<Type.t>) ];
    type left<'data> = [ | #PaddingLeftFn('data => option<Type.t>) ];
    type t<'data> = [
      | DeclarationConstructor.t
      | top<'data>
      | bottom<'data>
      | right<'data>
      | left<'data>
    ];
  };

  module DeclarationHelper: {
    let paddingTop: CssValueType.padding_global => [> DeclarationConstructor.top ];
    let paddingTopUnion: Type.t => [> DeclarationConstructor.top ];
    let paddingTopString: string => [> DeclarationConstructor.top ];
    let paddingTopNumber: float => [> DeclarationConstructor.top ];

    let paddingRight: CssValueType.padding_global => [> DeclarationConstructor.right ];
    let paddingRightUnion: Type.t => [> DeclarationConstructor.right ];
    let paddingRightString: string => [> DeclarationConstructor.right ];
    let paddingRightNumber: float => [> DeclarationConstructor.right ];

    let paddingBottom: CssValueType.padding_global => [> DeclarationConstructor.bottom ];
    let paddingBottomUnion: Type.t => [> DeclarationConstructor.bottom ];
    let paddingBottomString: string => [> DeclarationConstructor.bottom ];
    let paddingBottomNumber: float => [> DeclarationConstructor.bottom ];

    let paddingLeft: CssValueType.padding_global => [> DeclarationConstructor.left ];
    let paddingLeftUnion: Type.t => [> DeclarationConstructor.left ];
    let paddingLeftString: string => [> DeclarationConstructor.left ];
    let paddingLeftNumber: float => [> DeclarationConstructor.left ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let paddingTopFn: ('data => option<Type.t>) => [> DeclarationFnConstructor.top<'data> ];
    let paddingRightFn: ('data => option<Type.t>) => [> DeclarationFnConstructor.right<'data> ];
    let paddingBottomFn: ('data => option<Type.t>) => [> DeclarationFnConstructor.bottom<'data> ];
    let paddingLeftFn: ('data => option<Type.t>) => [> DeclarationFnConstructor.left<'data> ];
  };
  */
};