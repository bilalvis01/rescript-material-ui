open Type;
type synthetic<'a>;

external string: string => synthetic<'a> = "%identity";

type border;
type t_border = synthetic<border>;
let border: Type.border => t_border;
let border2: (Type.border, Type.border) => t_border;
let border3: (Type.border, Type.border, Type.border) => t_border;