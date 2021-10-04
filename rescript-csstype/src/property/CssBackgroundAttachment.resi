type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssType.backgroundAttachment<t>;
let value2: CssType.backgroundAttachment2<t>;
let value3: CssType.backgroundAttachment3<t>;
let value4: CssType.backgroundAttachment4<t>;

module DeclarationHelper: {
  let backgroundAttachment: CssType.backgroundAttachment<d<'a>>;
  let backgroundAttachment2: CssType.backgroundAttachment2<d<'a>>;
  let backgroundAttachment3: CssType.backgroundAttachment3<d<'a>>;
  let backgroundAttachment4: CssType.backgroundAttachment4<d<'a>>;
  let backgroundAttachmentUnion: t => d<'a>;
  let backgroundAttachmentString: string => d<'a>;
};

module DeclarationFnHelper: {
  let backgroundAttachmentFn: ('data => option<t>) => dFn<'a, 'data>;
};