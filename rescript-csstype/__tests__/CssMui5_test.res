open Jest;
open Mui5.Css;
open Mui5;

test("mui5", (.) => {
  let tree = 
    TestRenderer.create(
      <Box 
        sx=sx([
          color(#blue),
          margin(px(24)),
        ]) 
      />
    )
    ->TestRenderer.toJSON();
  expect(tree)->toMatchSnapshot();
})