type props;

@obj
external makeProps: (
  ~children: React.element,
  ~theme: 'param => 'return,
) => props = "";

@module("@material-ui/core/ThemeProvider")
external make: React.component<props> = "default";