module Make = (
  Type: {
    type value<'data>;
  }
) => {
  type t<'data> = (string, Type.value<'data>);
  
  external makeValue: ('data => 'a) => Type.value<'data> = "%identity";

  let make = declaration => {
    switch declaration {
    | #DeclarationFn(name, value) => (name, makeValue(value))
    | #BorderFn(value) => ("border", makeValue(value))
    | #BorderTopFn(value) => ("borderTop", makeValue(value))
    | #BorderRightFn(value) => ("borderRight", makeValue(value))
    | #BorderBottomFn(value) => ("borderBottom", makeValue(value))
    | #BorderLeftFn(value) => ("borderLeft", makeValue(value))
    | #BorderStyleFn(value) => ("border", makeValue(value))
    | #BorderTopStyleFn(value) => ("borderTopStyle", makeValue(value))
    | #BorderRightStyleFn(value) => ("borderRightStyle", makeValue(value))
    | #BorderBottomStyleFn(value) => ("borderBottomStyle", makeValue(value))
    | #BorderLeftStyleFn(value) => ("borderLeftStyle", makeValue(value))
    | #BorderWidthFn(value) => ("boderWidth", makeValue(value))
    | #BorderTopWidthFn(value) => ("borderTopWidth", makeValue(value))
    | #BorderRightWidthFn(value) => ("borderRightWidth", makeValue(value))
    | #BorderBottomWidthFn(value) => ("borderBottomWidth", makeValue(value))
    | #BorderLeftWidthFn(value) => ("borderLeftWidth", makeValue(value))
    | #BorderColorFn(value) => ("borderColor", makeValue(value))
    | #BorderTopColorFn(value) => ("borderTopColor", makeValue(value))
    | #BorderRightColorFn(value) => ("borderRightColor", makeValue(value))
    | #BorderBottomColorFn(value) => ("borderBottomColor", makeValue(value))
    | #BorderLeftColorFn(value) => ("borderLeftColor", makeValue(value))
    | #BackgroundFn(value) => ("background", makeValue(value))
    | #BackgroundAttachmentFn(value) => ("backgroundAttachment", makeValue(value))
    | #BackgroundColorFn(value) => ("backgroundColor", makeValue(value))
    | #BackgroundImageFn(value) => ("backgroundImage", makeValue(value)) 
    | #BackgroundPositionFn(value) => ("backgroundPosition", makeValue(value))
    | #BackgroundStyleFn(value) => ("backgroundStyle", makeValue(value))
    | #MarginFn(value) => ("margin", makeValue(value))
    | #MarginTopFn(value) => ("marginTop", makeValue(value))
    | #MarginRightFn(value) => ("marginRight", makeValue(value))
    | #MarginBottomFn(value) => ("marginBottom", makeValue(value))
    | #MarginLeftFn(value) => ("marginLeft", makeValue(value))
    | #PaddingFn(value) => ("padding", makeValue(value))
    | #PaddingTopFn(value) => ("paddingTop", makeValue(value))
    | #PaddingBottomFn(value) => ("paddingBottom", makeValue(value))
    | #PaddingRightFn(value) => ("paddingRight", makeValue(value))
    | #PaddingLeftFn(value) => ("paddingLeft", makeValue(value))
    | #ColorFn(value) => ("color", makeValue(value))
    | #ClearFn(value) => ("clear", makeValue(value))
    | #CursorFn(value) => ("cursor", makeValue(value))
    | #FontWeightFn(value) => ("fontWeight", makeValue(value))
    | #FontFamilyFn(value) => ("fontFamily", makeValue(value))
    };
  };
};