@unboxed
type rec boxValue =
  | BoxValue('a): boxValue;

module Make = () => {
  type t = (string, boxValue);

  let make = declaration => {
    switch declaration {
    | #Property(name, value) => (name, BoxValue(value))
    | #Border(value) => ("border", BoxValue(value))
    | #BorderTop(value) => ("borderTop", BoxValue(value))
    | #BorderRight(value) => ("borderRight", BoxValue(value))
    | #BorderBottom(value) => ("borderBottom", BoxValue(value))
    | #BorderLeft(value) => ("borderLeft", BoxValue(value))
    | #BorderStyle(value) => ("border", BoxValue(value))
    | #BorderTopStyle(value) => ("borderTopStyle", BoxValue(value))
    | #BorderRightStyle(value) => ("borderRightStyle", BoxValue(value))
    | #BorderBottomStyle(value) => ("borderBottomStyle", BoxValue(value))
    | #BorderLeftStyle(value) => ("borderLeftStyle", BoxValue(value))
    | #BorderWidth(value) => ("boderWidth", BoxValue(value))
    | #BorderTopWidth(value) => ("borderTopWidth", BoxValue(value))
    | #BorderRightWidth(value) => ("borderRightWidth", BoxValue(value))
    | #BorderBottomWidth(value) => ("borderBottomWidth", BoxValue(value))
    | #BorderLeftWidth(value) => ("borderLeftWidth", BoxValue(value))
    | #BorderColor(value) => ("borderColor", BoxValue(value))
    | #BorderTopColor(value) => ("borderTopColor", BoxValue(value))
    | #BorderRightColor(value) => ("borderRightColor", BoxValue(value))
    | #BorderBottomColor(value) => ("borderBottomColor", BoxValue(value))
    | #BorderLeftColor(value) => ("borderLeftColor", BoxValue(value))
    | #Background(value) => ("background", BoxValue(value))
    | #BackgroundAttachment(value) => ("backgroundAttachment", BoxValue(value))
    | #BackgroundColor(value) => ("backgroundColor", BoxValue(value))
    | #BackgroundImage(value) => ("backgroundImage", BoxValue(value)) 
    | #BackgroundPosition(value) => ("backgroundPosition", BoxValue(value))
    | #BackgroundStyle(value) => ("backgroundStyle", BoxValue(value))
    | #Margin(value) => ("margin", BoxValue(value))
    | #MarginTop(value) => ("marginTop", BoxValue(value))
    | #MarginRight(value) => ("marginRight", BoxValue(value))
    | #MarginBottom(value) => ("marginBottom", BoxValue(value))
    | #MarginLeft(value) => ("marginLeft", BoxValue(value))
    | #Padding(value) => ("padding", BoxValue(value))
    | #PaddingTop(value) => ("paddingTop", BoxValue(value))
    | #PaddingBottom(value) => ("paddingBottom", BoxValue(value))
    | #PaddingRight(value) => ("paddingRight", BoxValue(value))
    | #PaddingLeft(value) => ("paddingLeft", BoxValue(value))
    | #Color(value) => ("color", BoxValue(value))
    | #Clear(value) => ("clear", BoxValue(value))
    | #Cursor(value) => ("cursor", BoxValue(value))
    | #FontWeight(value) => ("fontWeight", BoxValue(value))
    | #FontFamily(value) => ("fontFamily", BoxValue(value))
    };
  };
};