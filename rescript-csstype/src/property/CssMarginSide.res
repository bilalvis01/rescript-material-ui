module Make = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  external number: float => Type.t = "%identity";
  let value = v => CssValueString.margin_global(v)->string;

  /*
  module DeclarationConstructor = {
    type top = [ | #MarginTop(Type.t) ];
    type right = [ | #MarginRight(Type.t) ];
    type bottom = [ | #MarginBottom(Type.t) ];
    type left = [ | #MarginLeft(Type.t) ];
    type t = [
      | top
      | right
      | bottom
      | left
    ];
  };

  module DeclarationFnConstructor = {
    type top<'data> = [ | #MarginTopFn('data => option<Type.t>) ];
    type right<'data> = [ | #MarginRightFn('data => option<Type.t>) ];
    type bottom<'data> = [ | #MarginBottomFn('data => option<Type.t>) ];
    type left<'data> = [ | #MarginLeftFn('data => option<Type.t>) ];
    type t<'data> = [
      | DeclarationConstructor.t
      | top<'data>
      | right<'data>
      | bottom<'data>
      | left<'data>
    ];
  };

  module DeclarationHelper = {
    let marginTop = v =>
      #MarginTop(value(v));
    let marginTopUnion = v =>
      #MarginTop(v);
    let marginTopString = v =>
      #MarginTop(string(v));
    let marginTopNumber = v =>
      #MarginTop(number(v));

    let marginRight = v =>
      #MarginRight(value(v));
    let marginRightUnion = v =>
      #MarginRight(v);
    let marginRightString = v =>
      #MarginRight(string(v));
    let marginRightNumber = v =>
      #MarginRight(number(v));

    let marginBottom = v =>
      #MarginBottom(value(v));
    let marginBottomUnion = v =>
      #MarginBottom(v);
    let marginBottomString = v =>
      #MarginBottom(string(v));
    let marginBottomNumber = v =>
      #MarginBottom(number(v));

    let marginLeft = v =>
      #MarginLeft(value(v));
    let marginLeftUnion = v =>
      #MarginLeft(v);
    let marginLeftString = v =>
      #MarginLeft(string(v));
    let marginLeftNumber = v =>
      #MarginLeft(number(v));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let marginTopFn = v => #MarginTopFn(v);
    let marginRightFn = v => #MarginRightFn(v);
    let marginBottomFn = v => #MarginBottomFn(v);
    let marginLeftFn = v => #MarginLeftFn(v);
  };
  */
};