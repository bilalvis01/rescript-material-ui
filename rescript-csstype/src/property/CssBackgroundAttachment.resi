type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

external string: string => t = "%identity";
let value: CssPropertyValueType.backgroundAttachment<t>;
let value2: CssPropertyValueType.backgroundAttachment2<t>;
let value3: CssPropertyValueType.backgroundAttachment3<t>;
let value4: CssPropertyValueType.backgroundAttachment4<t>;

module DeclarationHelper: {
  let backgroundAttachment: CssPropertyValueType.backgroundAttachment<d<'a>>;
  let backgroundAttachment2: CssPropertyValueType.backgroundAttachment2<d<'a>>;
  let backgroundAttachment3: CssPropertyValueType.backgroundAttachment3<d<'a>>;
  let backgroundAttachment4: CssPropertyValueType.backgroundAttachment4<d<'a>>;
  let backgroundAttachmentUnion: t => d<'a>;
  let backgroundAttachmentString: string => d<'a>;
};

module DeclarationFnHelper: {
  let backgroundAttachmentFn: ('data => option<t>) => dFn<'a, 'data>;
};