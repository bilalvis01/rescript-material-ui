# rescript-material-ui
Rescript bindings for material ui.

## Status

This package is still under active development thus unstable api, breaking changes, bugs should be expected.

## Installation

## Usage

Here is a quick examples to get you started, it's all you need:

```
/* App.re */
@react.component
let make = () => {
  open MaterialuiPropsTypes;

  <Mui.Box
    sx=Css.sx([
      Css.background(Css.rgb(200, 200, 200)),
      Css.padding4(~top=Css.px(20), ~bottom=Css.px(20), ~left=Css.px(40), ~right=Css.px(40)),
    ])
  >
    {React.string("Material UI 5")}
  </Mui.Box>
}
```

in another file:

```
ReactDOMRe.renderToElementWithId(<App />, "root");
```

## Examples

WIP

## Documentation

WIP

## License

This project is licensed under the terms of the MIT license.
