module Make: (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value: CssValueType.attachment => Type.t;
  let value2: (CssValueType.attachment, CssValueType.attachment) => Type.t;
  let value3: (CssValueType.attachment, CssValueType.attachment, CssValueType.attachment) => 
    Type.t;
  let value4: (
    CssValueType.attachment, 
    CssValueType.attachment, 
    CssValueType.attachment, 
    CssValueType.attachment
  ) => Type.t;

  module DeclarationHelper: {
    let backgroundAttachment: CssValueType.attachment => [> CssDeclarationConstructor.t ];
    let backgroundAttachment2: (
      CssValueType.attachment, 
      CssValueType.attachment
    ) => [> CssDeclarationConstructor.t ];
    let backgroundAttachment3: (
      CssValueType.attachment, 
      CssValueType.attachment, 
      CssValueType.attachment
    ) => [> CssDeclarationConstructor.t ];
    let backgroundAttachment4: (
      CssValueType.attachment, 
      CssValueType.attachment, 
      CssValueType.attachment, 
      CssValueType.attachment
    ) => [> CssDeclarationConstructor.t ];
    let backgroundAttachmentUnion: Type.t => [> CssDeclarationConstructor.t ];
    let backgroundAttachmentString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let backgroundAttachmentFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};