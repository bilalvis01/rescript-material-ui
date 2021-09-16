type tag;
type t = CssValueType.propertyValue<tag>;

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
  let backgroundAttachment: CssValueType.attachment => [> CssDeclaration.constructor ];
  let backgroundAttachment2: (
    CssValueType.attachment, 
    CssValueType.attachment
  ) => [> CssDeclaration.constructor ];
  let backgroundAttachment3: (
    CssValueType.attachment, 
    CssValueType.attachment, 
    CssValueType.attachment
  ) => [> CssDeclaration.constructor ];
  let backgroundAttachment4: (
    CssValueType.attachment, 
    CssValueType.attachment, 
    CssValueType.attachment, 
    CssValueType.attachment
  ) => [> CssDeclaration.constructor ];
  let backgroundAttachmentUnion: t => [> CssDeclaration.constructor ];
  let backgroundAttachmentString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let backgroundAttachmentFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};