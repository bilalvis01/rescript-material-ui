open StyleType;

type t;

let make: (string, string) => t;

let borderString: string => t;
let border: border => t;
let border2: (~style: lineStyle, [ | lineWidth | color ]) => t;
let border3: (~width: lineWidth, ~style: lineStyle, ~color: color) => t;

let borderTopString: string => t;
let borderTop: border => t;
let borderTop2: (~style: lineStyle, [ | lineWidth | color ]) => t;
let borderTop3: (~width: lineWidth, ~style: lineStyle, ~color: color) => t;

let borderLeftString: string => t;
let borderLeft: border => t;
let borderLeft2: (~style: lineStyle, [ | lineWidth | color ]) => t;
let borderLeft3: (~width: lineWidth, ~style: lineStyle, ~color: color) => t;

let borderRightString: string => t;
let borderRight: border => t;
let borderRight2: (~style: lineStyle, [ | lineWidth | color ]) => t;
let borderRight3: (~width: lineWidth, ~style: lineStyle, ~color: color) => t;

let borderBottomString: string => t;
let borderBottom: border => t;
let borderBottom2: (~style: lineStyle, [ | lineWidth | color ]) => t;
let borderBottom3: (~width: lineWidth, ~style: lineStyle, ~color: color) => t;