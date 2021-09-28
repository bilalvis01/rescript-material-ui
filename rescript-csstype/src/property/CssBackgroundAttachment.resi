type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssValueType.backgroundAttachment<t>;
let value2: CssValueType.backgroundAttachment2<t>;
let value3: CssValueType.backgroundAttachment3<t>;
let value4: CssValueType.backgroundAttachment4<t>;

module DeclarationHelper: {
  let backgroundAttachment: CssValueType.backgroundAttachment<d<'a>>;
  let backgroundAttachment2: CssValueType.backgroundAttachment2<d<'a>>;
  let backgroundAttachment3: CssValueType.backgroundAttachment3<d<'a>>;
  let backgroundAttachment4: CssValueType.backgroundAttachment4<d<'a>>;
  let backgroundAttachmentUnion: t => d<'a>;
  let backgroundAttachmentString: string => d<'a>;
};

module DeclarationFnHelper: {
  let backgroundAttachmentFn: ('data => option<t>) => dFn<'a, 'data>;
};