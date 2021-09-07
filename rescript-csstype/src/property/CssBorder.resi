module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderValue.Make({ type t = Type.t }));

  module DeclarationHelper: {
    let border: (
      ~width: CssValueType.lineWidth=?, 
      ~color: CssValueType.color=?, 
      CssValueType.lineStyle_global
    ) => [> CssDeclarationConstructor.t ];
    let borderUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderString: string => [> CssDeclarationConstructor.t ];

    /*
    let borderTop: (
      ~width: CssValueType.lineWidth=?, 
      ~color: CssValueType.color=?, 
      CssValueType.lineStyle_global
    ) => [> CssDeclarationConstructor.top ];
    let borderTopUnion: Type.t => [> CssDeclarationConstructor.top ];
    let borderTopString: string => [> CssDeclarationConstructor.top ];

    let borderRight: (
      ~width: CssValueType.lineWidth=?, 
      ~color: CssValueType.color=?, 
      CssValueType.lineStyle_global
    ) => [> CssDeclarationConstructor.right ];
    let borderRightUnion: Type.t => [> CssDeclarationConstructor.right ];
    let borderRightString: string => [> CssDeclarationConstructor.right ];

    let borderBottom: (
      ~width: CssValueType.lineWidth=?, 
      ~color: CssValueType.color=?, 
      CssValueType.lineStyle_global
    ) => [> CssDeclarationConstructor.bottom ];
    let borderBottomUnion: Type.t => [> CssDeclarationConstructor.bottom ]; 
    let borderBottomString: string => [> CssDeclarationConstructor.bottom ];

    let borderLeft: (
      ~width: CssValueType.lineWidth=?, 
      ~color: CssValueType.color=?, 
      CssValueType.lineStyle_global
    ) => [> CssDeclarationConstructor.left ];
    let borderLeftUnion: Type.t => [> CssDeclarationConstructor.left ]; 
    let borderLeftString: string => [> CssDeclarationConstructor.left ];
    */
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
    /*
    let borderTopFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.top<'data> ];
    let borderLeftFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.left<'data> ];
    let borderRightFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.right<'data> ];
    let borderBottomFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.bottom<'data> ];
    */
  };
}