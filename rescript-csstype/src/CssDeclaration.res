module Make = (
  Type: {
    type value;
  }
) => {
  type t = (string, Type.value);

  external makeValue: CssPropertyValue.synthetic<'a> => Type.value = "%identity";

  let make = declaration => {
    switch declaration {
    | #Property(name, value) => (name, makeValue(value))
    | #Border(value) => ("border", makeValue(value))
    | #BorderTop(value) => ("borderTop", makeValue(value))
    | #BorderRight(value) => ("borderRight", makeValue(value))
    | #BorderBottom(value) => ("borderBottom", makeValue(value))
    | #BorderLeft(value) => ("borderLeft", makeValue(value))
    | #BorderStyle(value) => ("border", makeValue(value))
    | #BorderTopStyle(value) => ("borderTopStyle", makeValue(value))
    | #BorderRightStyle(value) => ("borderRightStyle", makeValue(value))
    | #BorderBottomStyle(value) => ("borderBottomStyle", makeValue(value))
    | #BorderLeftStyle(value) => ("borderLeftStyle", makeValue(value))
    | #BorderWidth(value) => ("boderWidth", makeValue(value))
    | #BorderTopWidth(value) => ("borderTopWidth", makeValue(value))
    | #BorderRightWidth(value) => ("borderRightWidth", makeValue(value))
    | #BorderBottomWidth(value) => ("borderBottomWidth", makeValue(value))
    | #BorderLeftWidth(value) => ("borderLeftWidth", makeValue(value))
    | #BorderColor(value) => ("borderColor", makeValue(value))
    | #BorderTopColor(value) => ("borderTopColor", makeValue(value))
    | #BorderRightColor(value) => ("borderRightColor", makeValue(value))
    | #BorderBottomColor(value) => ("borderBottomColor", makeValue(value))
    | #BorderLeftColor(value) => ("borderLeftColor", makeValue(value))
    | #Background(value) => ("background", makeValue(value))
    | #BackgroundAttachment(value) => ("backgroundAttachment", makeValue(value))
    | #BackgroundColor(value) => ("backgroundColor", makeValue(value))
    | #BackgroundImage(value) => ("backgroundImage", makeValue(value)) 
    | #BackgroundPosition(value) => ("backgroundPosition", makeValue(value))
    | #BackgroundStyle(value) => ("backgroundStyle", makeValue(value))
    | #Margin(value) => ("margin", makeValue(value))
    | #MarginTop(value) => ("marginTop", makeValue(value))
    | #MarginRight(value) => ("marginRight", makeValue(value))
    | #MarginBottom(value) => ("marginBottom", makeValue(value))
    | #MarginLeft(value) => ("marginLeft", makeValue(value))
    | #Padding(value) => ("padding", makeValue(value))
    | #PaddingTop(value) => ("paddingTop", makeValue(value))
    | #PaddingBottom(value) => ("paddingBottom", makeValue(value))
    | #PaddingRight(value) => ("paddingRight", makeValue(value))
    | #PaddingLeft(value) => ("paddingLeft", makeValue(value))
    | #Color(value) => ("color", makeValue(value))
    | #Clear(value) => ("clear", makeValue(value))
    | #Cursor(value) => ("cursor", makeValue(value))
    | #FontWeight(value) => ("fontWeight", makeValue(value))
    };
  };
};