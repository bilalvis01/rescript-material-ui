type t;

let property = "backgroundAttachment";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

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
    #Declaration(property, D.BoxValue(value(v)));
  let backgroundAttachment2 = (v1, v2) =>
    #Declaration(property, D.BoxValue(value2(v1, v2)));
  let backgroundAttachment3 = (v1, v2, v3) =>
    #Declaration(property, D.BoxValue(value3(v1, v2, v3)));
  let backgroundAttachment4 = (v1, v2, v3, v4) =>
    #Declaration(property, D.BoxValue(value4(v1, v2, v3, v4)));
  let backgroundAttachmentUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let backgroundAttachmentString = v => 
    #Declaration(property, D.BoxValue(string(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let backgroundAttachmentFn = v => #DeclarationFn(property, DF.BoxValue(v));
};