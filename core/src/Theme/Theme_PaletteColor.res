type t;

@send
external light: t => string = "light";
@send
external main: t => string = "main";
@send
external dark: t => string = "dark";
@send
external contrastText: t => string = "contrastText";