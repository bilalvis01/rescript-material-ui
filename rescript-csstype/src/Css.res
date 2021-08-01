module type MakeStyleType = (
  Type: {
    type t;
  }
) => {
  @unboxed
  type rec boxValue =
    | BoxValue('a): boxValue;
  let style: array<CssProperty.property> => Type.t;
  let fontFace: array<FontFace.descriptor> => CssProperty.property;
};

module MakeStyle: MakeStyleType = (
  Type: {
    type t;
  }
) => {
  @unboxed
  type rec boxValue =
    | BoxValue('a): boxValue;
  external makeStyle: Js.Dict.t<boxValue> => Type.t = "%identity";
  let style = rules => {
    let rules = rules->Belt.Array.map(rule => {
      switch rule {
      | CssProperty.Property(name, value) => (name, BoxValue(value))
      | CssProperty.Border(value) => ("border", BoxValue(value))
      | CssProperty.BorderTop(value) => ("borderTop", BoxValue(value))
      | CssProperty.BorderRight(value) => ("borderRight", BoxValue(value))
      | CssProperty.BorderBottom(value) => ("borderBottom", BoxValue(value))
      | CssProperty.BorderLeft(value) => ("borderLeft", BoxValue(value))
      | CssProperty.BorderStyle(value) => ("border", BoxValue(value))
      | CssProperty.BorderTopStyle(value) => ("borderTopStyle", BoxValue(value))
      | CssProperty.BorderRightStyle(value) => ("borderRightStyle", BoxValue(value))
      | CssProperty.BorderBottomStyle(value) => ("borderBottomStyle", BoxValue(value))
      | CssProperty.BorderLeftStyle(value) => ("borderLeftStyle", BoxValue(value))
      | CssProperty.BorderWidth(value) => ("boderWidth", BoxValue(value))
      | CssProperty.BorderTopWidth(value) => ("borderTopWidth", BoxValue(value))
      | CssProperty.BorderRightWidth(value) => ("borderRightWidth", BoxValue(value))
      | CssProperty.BorderBottomWidth(value) => ("borderBottomWidth", BoxValue(value))
      | CssProperty.BorderLeftWidth(value) => ("borderLeftWidth", BoxValue(value))
      | CssProperty.BorderColor(value) => ("borderColor", BoxValue(value))
      | CssProperty.BorderTopColor(value) => ("borderTopColor", BoxValue(value))
      | CssProperty.BorderRightColor(value) => ("borderRightColor", BoxValue(value))
      | CssProperty.BorderBottomColor(value) => ("borderBottomColor", BoxValue(value))
      | CssProperty.BorderLeftColor(value) => ("borderLeftColor", BoxValue(value))
      | CssProperty.Background(value) => ("background", BoxValue(value))
      | CssProperty.BackgroundAttachment(value) => ("backgroundAttachment", BoxValue(value))
      | CssProperty.BackgroundColor(value) => ("backgroundColor", BoxValue(value))
      | CssProperty.BackgroundImage(value) => ("backgroundImage", BoxValue(value)) 
      | CssProperty.BackgroundPosition(value) => ("backgroundPosition", BoxValue(value))
      | CssProperty.BackgroundStyle(value) => ("backgroundStyle", BoxValue(value))
      | CssProperty.Margin(value) => ("margin", BoxValue(value))
      | CssProperty.MarginTop(value) => ("marginTop", BoxValue(value))
      | CssProperty.MarginRight(value) => ("marginRight", BoxValue(value))
      | CssProperty.MarginBottom(value) => ("marginBottom", BoxValue(value))
      | CssProperty.MarginLeft(value) => ("marginLeft", BoxValue(value))
      | CssProperty.Padding(value) => ("padding", BoxValue(value))
      | CssProperty.PaddingTop(value) => ("paddingTop", BoxValue(value))
      | CssProperty.PaddingBottom(value) => ("paddingBottom", BoxValue(value))
      | CssProperty.PaddingRight(value) => ("paddingRight", BoxValue(value))
      | CssProperty.PaddingLeft(value) => ("paddingLeft", BoxValue(value))
      | CssProperty.Color(value) => ("color", BoxValue(value))
      | CssProperty.Clear(value) => ("clear", BoxValue(value))
      | CssProperty.Cursor(value) => ("cursor", BoxValue(value))
      | CssProperty.FontFace(value) => ("@font-face", BoxValue(value))
      };
    });
    Js.Dict.fromArray(rules)->makeStyle
  };

  let fontFace = descriptors => 
    CssProperty.FontFace(FontFace.make(descriptors))
};

type style;

module PropertyValue = CssPropertyValue;

include CssValue;
include CssFunction;
include CssProperty;
include MakeStyle({ type t = style });