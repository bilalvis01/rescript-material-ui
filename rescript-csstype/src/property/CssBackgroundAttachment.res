type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "backgroundAttachment";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let {
  backgroundAttachment as bgAtt,
  backgroundAttachment2 as bgAtt2,
  backgroundAttachment3 as bgAtt3,
  backgroundAttachment4 as bgAtt4,
} = module(CssPropertyValueString);

external string: string => t = "%identity";
let value = v => bgAtt(v)->string;
let value2 = (v1, v2) => bgAtt2(v1, v2)->string;
let value3 = (v1, v2, v3) => bgAtt3(v1, v2, v3)->string;
let value4 = (v1, v2, v3, v4) => bgAtt4(v1, v2, v3, v4)->string;

module DeclarationHelper = {
  let backgroundAttachment = v => 
    declaration(property, value(v));
  let backgroundAttachment2 = (v1, v2) =>
    declaration(property, value2(v1, v2));
  let backgroundAttachment3 = (v1, v2, v3) =>
    declaration(property, value3(v1, v2, v3));
  let backgroundAttachment4 = (v1, v2, v3, v4) =>
    declaration(property, value4(v1, v2, v3, v4));
  let backgroundAttachmentUnion = v =>
    declaration(property, v);
  let backgroundAttachmentString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let backgroundAttachmentFn = v => declarationFn(property, v);
};