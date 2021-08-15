@unboxed
type rec boxValue<'data> =
  | BoxValue('data => 'a): boxValue<'data>;

module Make = () => {
  type t<'data> = (string, boxValue<'data>);

  let make = declaration => {
    switch declaration {
    | #PropertyFn(name, value) => (name, BoxValue(value))
    | #BorderFn(value) => ("border", BoxValue(value))
    | #BorderTopFn(value) => ("borderTop", BoxValue(value))
    | #BorderRightFn(value) => ("borderRight", BoxValue(value))
    | #BorderBottomFn(value) => ("borderBottom", BoxValue(value))
    | #BorderLeftFn(value) => ("borderLeft", BoxValue(value))
    | #BorderStyleFn(value) => ("border", BoxValue(value))
    | #BorderTopStyleFn(value) => ("borderTopStyle", BoxValue(value))
    | #BorderRightStyleFn(value) => ("borderRightStyle", BoxValue(value))
    | #BorderBottomStyleFn(value) => ("borderBottomStyle", BoxValue(value))
    | #BorderLeftStyleFn(value) => ("borderLeftStyle", BoxValue(value))
    | #BorderWidthFn(value) => ("boderWidth", BoxValue(value))
    | #BorderTopWidthFn(value) => ("borderTopWidth", BoxValue(value))
    | #BorderRightWidthFn(value) => ("borderRightWidth", BoxValue(value))
    | #BorderBottomWidthFn(value) => ("borderBottomWidth", BoxValue(value))
    | #BorderLeftWidthFn(value) => ("borderLeftWidth", BoxValue(value))
    | #BorderColorFn(value) => ("borderColor", BoxValue(value))
    | #BorderTopColorFn(value) => ("borderTopColor", BoxValue(value))
    | #BorderRightColorFn(value) => ("borderRightColor", BoxValue(value))
    | #BorderBottomColorFn(value) => ("borderBottomColor", BoxValue(value))
    | #BorderLeftColorFn(value) => ("borderLeftColor", BoxValue(value))
    | #BackgroundFn(value) => ("background", BoxValue(value))
    | #BackgroundAttachmentFn(value) => ("backgroundAttachment", BoxValue(value))
    | #BackgroundColorFn(value) => ("backgroundColor", BoxValue(value))
    | #BackgroundImageFn(value) => ("backgroundImage", BoxValue(value)) 
    | #BackgroundPositionFn(value) => ("backgroundPosition", BoxValue(value))
    | #BackgroundStyleFn(value) => ("backgroundStyle", BoxValue(value))
    | #MarginFn(value) => ("margin", BoxValue(value))
    | #MarginTopFn(value) => ("marginTop", BoxValue(value))
    | #MarginRightFn(value) => ("marginRight", BoxValue(value))
    | #MarginBottomFn(value) => ("marginBottom", BoxValue(value))
    | #MarginLeftFn(value) => ("marginLeft", BoxValue(value))
    | #PaddingFn(value) => ("padding", BoxValue(value))
    | #PaddingTopFn(value) => ("paddingTop", BoxValue(value))
    | #PaddingBottomFn(value) => ("paddingBottom", BoxValue(value))
    | #PaddingRightFn(value) => ("paddingRight", BoxValue(value))
    | #PaddingLeftFn(value) => ("paddingLeft", BoxValue(value))
    | #ColorFn(value) => ("color", BoxValue(value))
    | #ClearFn(value) => ("clear", BoxValue(value))
    | #CursorFn(value) => ("cursor", BoxValue(value))
    | #FontWeightFn(value) => ("fontWeight", BoxValue(value))
    | #FontFamilyFn(value) => ("fontFamily", BoxValue(value))
    };
  };
};