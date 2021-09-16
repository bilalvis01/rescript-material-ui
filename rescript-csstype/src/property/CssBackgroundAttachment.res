open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "backgroundAttachment";

external string: string => t = "%identity";
let value = v => CssValueString.attachment(v)->string;
let value2 = (v1, v2) => 
  `${CssValueString.attachment(v1)}, ${CssValueString.attachment(v2)}`
  ->string;
let value3 = (v1, v2, v3) => 
  `${CssValueString.attachment(v1)}, ${CssValueString.attachment(v2)}, ${CssValueString.attachment(v3)}`
  ->string;
let value4 = (v1, v2, v3, v4) => 
  `${CssValueString.attachment(v1)}, ${CssValueString.attachment(v2)}, ${CssValueString.attachment(v3)}, ${CssValueString.attachment(v4)}`
  ->string;

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
  include DeclarationHelper;
  let backgroundAttachmentFn = v => declarationFn(property, v);
};