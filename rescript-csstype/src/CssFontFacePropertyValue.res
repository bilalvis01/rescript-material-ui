type synthetic<'a>;

type tag_fontDisplay;
type t_fontDisplay = synthetic<tag_fontDisplay>;
external fontDisplayString: string => t_fontDisplay = "%identity";
let fontDisplay = v => CssFontFaceValueString.fontDisplay(v)->fontDisplayString;