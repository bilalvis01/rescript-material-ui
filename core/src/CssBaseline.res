type props;

@obj
external makeProps: (
  ~children: React.element=?,
  unit
) => props = "";

@module("@material-ui/core/CssBaseline")
external make: React.component<props> = "default";