open Jest;
open Mui5.Css;
open Mui5;

test("mui5 Box", (.) => {
  let tree = 
    TestRenderer.create(
      <Box 
        sx=sx([
          colorFn(theme =>
            Some(Color.string(
              theme
              ->Theme.palette
              ->Palette.primary
              ->Primary.main
            ))
          ),
          margin(px(24)),
        ]) 
      />
    )
    ->TestRenderer.toJSON();
  expect(tree)->toMatchSnapshot();
});

@val @scope("document")
external head: string = "head";

test("mui5 GlobalStyles", (.) => {
  let _ = 
    TestRenderer.create(
      <>  
        <GlobalStyles
          styles={theme => styles([
            rule("h1", [
              colorString(
                theme
                ->Theme.palette
                ->Palette.primary
                ->Primary.main
              ),
            ]),
          ])}
        />
      </>
    )
    ->TestRenderer.toJSON();
  expect(head)->toMatchSnapshot();
});