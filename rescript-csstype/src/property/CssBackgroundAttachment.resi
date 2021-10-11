type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.backgroundAttachment<t>;
let value2: CssType.backgroundAttachment2<t>;
let value3: CssType.backgroundAttachment3<t>;
let value4: CssType.backgroundAttachment4<t>;

module DeclarationHelper: {
  let backgroundAttachment: CssType.backgroundAttachment<CssDeclaration.d<'a>>;
  let backgroundAttachment2: CssType.backgroundAttachment2<CssDeclaration.d<'a>>;
  let backgroundAttachment3: CssType.backgroundAttachment3<CssDeclaration.d<'a>>;
  let backgroundAttachment4: CssType.backgroundAttachment4<CssDeclaration.d<'a>>;
  let backgroundAttachmentUnion: t => CssDeclaration.d<'a>;
  let backgroundAttachmentString: string => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let backgroundAttachmentFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};