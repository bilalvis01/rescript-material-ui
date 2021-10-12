type tag;
type t = CssType.propertyValue<tag>;

external string: string => t = "%identity";
let value: CssType.Property.backgroundAttachment<t>;
let value2: CssType.Property.backgroundAttachment2<t>;
let value3: CssType.Property.backgroundAttachment3<t>;
let value4: CssType.Property.backgroundAttachment4<t>;

module DeclarationHelper: {
  let backgroundAttachment: CssType.Property.backgroundAttachment<CssType.d<'a>>;
  let backgroundAttachment2: CssType.Property.backgroundAttachment2<CssType.d<'a>>;
  let backgroundAttachment3: CssType.Property.backgroundAttachment3<CssType.d<'a>>;
  let backgroundAttachment4: CssType.Property.backgroundAttachment4<CssType.d<'a>>;
  let backgroundAttachmentUnion: t => CssType.d<'a>;
  let backgroundAttachmentString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let backgroundAttachmentFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};