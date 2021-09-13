type t;

external string: string => t = "%identity";
let value: CssValueType.attachment => t;
let value2: (CssValueType.attachment, CssValueType.attachment) => t;
let value3: (CssValueType.attachment, CssValueType.attachment, CssValueType.attachment) => 
  t;
let value4: (
  CssValueType.attachment, 
  CssValueType.attachment, 
  CssValueType.attachment, 
  CssValueType.attachment
) => t;

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
  let backgroundAttachmentUnion: t => [> CssDeclarationConstructor.t ];
  let backgroundAttachmentString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let backgroundAttachmentFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};