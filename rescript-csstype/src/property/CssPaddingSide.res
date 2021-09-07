module Make = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  external number: float => Type.t = "%identity";
  let value = v => CssValueString.padding_global(v)->string;

  /*
  module DeclarationConstructor = {
    type top = [ | #PaddingTop(Type.t) ];
    type bottom = [ | #PaddingBottom(Type.t) ];
    type right = [ | #PaddingRight(Type.t) ];
    type left = [ | #PaddingLeft(Type.t) ];
    type t = [
      | top
      | bottom
      | right
      | left
    ];
  };

  module DeclarationFnConstructor = {
    type top<'data> = [ | #PaddingTopFn('data => option<Type.t>) ];
    type bottom<'data> = [ | #PaddingBottomFn('data => option<Type.t>) ];
    type right<'data> = [ | #PaddingRightFn('data => option<Type.t>) ];
    type left<'data> = [ | #PaddingLeftFn('data => option<Type.t>) ];
    type t<'data> = [
      | DeclarationConstructor.t
      | top<'data>
      | bottom<'data>
      | right<'data>
      | left<'data>
    ];
  };

  module DeclarationHelper = {
    let paddingTop = v =>
      #PaddingTop(value(v));
    let paddingTopUnion = v =>
      #PaddingTop(v);
    let paddingTopString = v =>
      #PaddingTop(string(v));
    let paddingTopNumber = v =>
      #PaddingTop(number(v));

    let paddingRight = v =>
      #PaddingRight(value(v));
    let paddingRightUnion = v =>
      #PaddingRight(v);
    let paddingRightString = v =>
      #PaddingRight(string(v));
    let paddingRightNumber = v =>
      #PaddingRight(number(v));

    let paddingBottom = v =>
      #PaddingBottom(value(v));
    let paddingBottomUnion = v =>
      #PaddingBottom(v);
    let paddingBottomString = v =>
      #PaddingBottom(string(v));
    let paddingBottomNumber = v =>
      #PaddingBottom(number(v));

    let paddingLeft = v =>
      #PaddingLeft(value(v));
    let paddingLeftUnion = v =>
      #PaddingLeft(v);
    let paddingLeftString = v =>
      #PaddingLeft(string(v));
    let paddingLeftNumber = v =>
      #PaddingLeft(number(v));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let paddingTopFn = v => #PaddingTopFn(v);
    let paddingRightFn = v => #PaddingRightFn(v);
    let paddingBottomFn = v => #PaddingBottomFn(v);
    let paddingLeftFn = v => #PaddingLeftFn(v);
  };
  */
};