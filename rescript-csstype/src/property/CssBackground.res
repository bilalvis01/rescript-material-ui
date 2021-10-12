type tag;
type t = CssType.propertyValue<tag>;

let property = "background";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let {
  background as bg,
  background2 as bg2,
  background3 as bg3,
  background4 as bg4,
} = module(CssString.Property);

external string: string => t = "%identity";
let value = (
  ~color=?,
  ~position=?,
  ~size=?,
  ~repeat=?,
  ~attachment=?,
  ~origin=?,
  ~clip=?,
  imageOrColor
) => 
  bg(
    ~color=?color,
    ~position=?position,
    ~size=?size,
    ~repeat=?repeat,
    ~attachment=?attachment,
    ~origin=?origin,
    ~clip=?clip,
    imageOrColor
  )
  ->string;
let value2 = (v1, v2) => bg2(v1, v2)->string;
let value3 = (v1, v2, v3) => bg3(v1, v2, v3)->string;
let value4 = (v1, v2, v3, v4) => bg4(v1, v2, v3, v4)->string;

module DeclarationHelper = {
  let background = (
    ~color=?,
    ~position=?,
    ~size=?,
    ~repeat=?,
    ~attachment=?,
    ~origin=?,
    ~clip=?,
    imageOrColor
  ) => 
    declaration(
      property,
      value(
        ~color=?color,
        ~position=?position,
        ~size=?size,
        ~repeat=?repeat,
        ~attachment=?attachment,
        ~origin=?origin,
        ~clip=?clip,
        imageOrColor
      )
    );
  let background2 = (v1, v2) => 
    declaration(property, value2(v1, v2));
  let background3 = (v1, v2, v3) => 
    declaration(property, value3(v1, v2, v3));
  let background4 = (v1, v2, v3, v4) => 
    declaration(property, value4(v1, v2, v3, v4));
  let backgroundUnion = v =>
    declaration(property, v);
  let backgroundString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let backgroundFn = v => declarationFn(property, v);
};