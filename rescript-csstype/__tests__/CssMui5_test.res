open Jest;
open Mui5;
open Css;

test("mui5", (.) => {
  let tree = 
    TestRenderer.create(
      <Box 
        sx=style([
          color(#blue),
          margin(px(24.)),
        ]) 
      />
    )
    ->TestRenderer.toJSON();
  expect(tree)->toMatchSnapshot();
})