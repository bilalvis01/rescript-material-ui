open Jest;
open! Theme;

/*
Default theme
*/
describe("default palette", (.) => {
  let palette = Theme.make()->Theme.palette;

  test("common colors", (.) => {
    let common = palette->Palette.common;
    expect(common->CommonColors.black)
    ->toBe("#000");
    expect(common->CommonColors.white)
    ->toBe("#fff");
  });

  test("primary colors", (.) => {
    let primary = palette->Palette.primary;
    expect(primary->PaletteColor.light)
    ->toBe("#7986cb");
    expect(primary->PaletteColor.main)
    ->toBe("#3f51b5");
    expect(primary->PaletteColor.dark)
    ->toBe("#303f9f");
    expect(primary->PaletteColor.contrastText)
    ->toBe("#fff");
  });

  test("secondary colors", (.) => {
    let secondary = palette->Palette.secondary;
    expect(secondary->PaletteColor.light)
    ->toBe("#ff4081");
    expect(secondary->PaletteColor.main)
    ->toBe("#f50057");
    expect(secondary->PaletteColor.dark)
    ->toBe("#c51162");
    expect(secondary->PaletteColor.contrastText)
    ->toBe("#fff");
  });

  test("error colors", (.) => {
    let error = palette->Palette.error;
    expect(error->PaletteColor.light)
    ->toBe("#e57373");
    expect(error->PaletteColor.main)
    ->toBe("#f44336");
    expect(error->PaletteColor.dark)
    ->toBe("#d32f2f");
    expect(error->PaletteColor.contrastText)
    ->toBe("#fff");
  });

  test("waring colors", (.) => {
    let warning = palette->Palette.warning;
    expect(warning->PaletteColor.light)
    ->toBe("#ffb74d");
    expect(warning->PaletteColor.main)
    ->toBe("#ff9800");
    expect(warning->PaletteColor.dark)
    ->toBe("#f57c00");
    expect(warning->PaletteColor.contrastText)
    ->toBe("rgba(0, 0, 0, 0.87)");
  });
  
  test("info colors", (.) => {
    let info = palette->Palette.info;
    expect(info->PaletteColor.light)
    ->toBe("#64b5f6");
    expect(info->PaletteColor.main)
    ->toBe("#2196f3");
    expect(info->PaletteColor.dark)
    ->toBe("#1976d2");
    expect(info->PaletteColor.contrastText)
    ->toBe("#fff");
  });

  test("success colors", (.) => {
    let success = palette->Palette.success;
    expect(success->PaletteColor.light)
    ->toBe("#81c784");
    expect(success->PaletteColor.main)
    ->toBe("#4caf50");
    expect(success->PaletteColor.dark)
    ->toBe("#388e3c");
    expect(success->PaletteColor.contrastText)
    ->toBe("rgba(0, 0, 0, 0.87)");
  });

  test("grey", (.) => {
    let grey = palette->Palette.grey
    expect(grey->Color.get50)
    ->toBe("#fafafa");
    expect(grey->Color.get100)
    ->toBe("#f5f5f5");
    expect(grey->Color.get200)
    ->toBe("#eeeeee");
    expect(grey->Color.get300)
    ->toBe("#e0e0e0");
    expect(grey->Color.get400)
    ->toBe("#bdbdbd");
    expect(grey->Color.get500)
    ->toBe("#9e9e9e");
    expect(grey->Color.get600)
    ->toBe("#757575");
    expect(grey->Color.get700)
    ->toBe("#616161");
    expect(grey->Color.get800)
    ->toBe("#424242");
    expect(grey->Color.get900)
    ->toBe("#212121");
    expect(grey->Color.getA100)
    ->toBe("#d5d5d5");
    expect(grey->Color.getA200)
    ->toBe("#aaaaaa");
    expect(grey->Color.getA400)
    ->toBe("#303030");
    expect(grey->Color.get700)
    ->toBe("#616161");
  });

  test("contrastThreshold", (.) => {
    expect(palette->Palette.contrastThreshold)
    ->toBe(3.);
  });

  test("getContrastText", (.) => {
    expect(palette->Palette.getContrastText("#fff"))
    ->toBe("rgba(0, 0, 0, 0.87)");
  });

  test("augmentColor", (.) => {
    expect(
      palette
      ->Palette.augmentColor(
        AugmentColorOptions.make(
          ~color=PaletteColorOptions.SimpleColor.make(~main="#fff", ()),
          ()
        )
      )
    )
    ->toEqual(Obj.magic({
      "contrastText": "rgba(0, 0, 0, 0.87)",
      "dark": "rgb(178, 178, 178)",
      "light": "rgb(255, 255, 255)",
      "main": "#fff",
    }));

    expect(
      palette
      ->Palette.augmentColor(
        AugmentColorOptions.make(
          ~color=PaletteColorOptions.Color.make(~\"400"="#fafafa", ()),
          ~mainShade=400,
          ()
        )
      )
    )
    ->toEqual(Obj.magic({
      "400": "#fafafa",
      "contrastText": "rgba(0, 0, 0, 0.87)",
      "dark": "rgb(175, 175, 175)",
      "light": "rgb(251, 251, 251)",
      "main": "#fafafa",
    }));
  });

  test("tanalOffset", (.) => {
    expect(palette->Palette.tonalOffsetUnsafeNumber)
    ->toBe(0.2);
    expect(
      switch (palette->Palette.tonalOffset) {
      | Number(n) => n
      | Obj(_) => 0.0
      }
    )
    ->toBe(0.2);
  });

  test("text", (.) => {
    let text = palette->Palette.text;
    expect(text->TextColor.primary)
    ->toBe("rgba(0, 0, 0, 0.87)");
    expect(text->TextColor.secondary)
    ->toBe("rgba(0, 0, 0, 0.54)");
    expect(text->TextColor.disabled)
    ->toBe("rgba(0, 0, 0, 0.38)");
    expect(text->TextColor.hint)
    ->toBe("rgba(0, 0, 0, 0.38)");
  });

  test("divider", (.) => {
    expect(palette->Palette.divider)
    ->toBe("rgba(0, 0, 0, 0.12)");
  });

  test("background", (.) => {
    let background = palette->Palette.background;
    expect(background->BackgroundColor.paper)
    ->toBe("#fff");
    expect(background->BackgroundColor.default)
    ->toBe("#fafafa");
  });

  test("action", (.) => {
    let action = palette->Palette.action;
    expect(action->ActionColor.active)
    ->toBe("rgba(0, 0, 0, 0.54)");
    expect(action->ActionColor.hover)
    ->toBe("rgba(0, 0, 0, 0.04)");
    expect(action->ActionColor.hoverOpacity)
    ->toBe(0.04);
    expect(action->ActionColor.selected)
    ->toBe("rgba(0, 0, 0, 0.08)");
    expect(action->ActionColor.selectedOpacity)
    ->toBe(0.08);
    expect(action->ActionColor.disabled)
    ->toBe("rgba(0, 0, 0, 0.26)");
    expect(action->ActionColor.disabledBackground)
    ->toBe("rgba(0, 0, 0, 0.12)");
    expect(action->ActionColor.disabledOpacity)
    ->toBe(0.38);
    expect(action->ActionColor.focus)
    ->toBe("rgba(0, 0, 0, 0.12)");
    expect(action->ActionColor.focusOpacity)
    ->toBe(0.12);
    expect(action->ActionColor.activatedOpacity)
    ->toBe(0.12);
  });
});

describe("custom palette", (.) => {
  let palette = Theme.make(
    ~palette=Palette.make(
      ~common=CommonColors.make(
        ~black="#212121",
        ~white="#fafafa",
        ()
      ),
      ~primary=PaletteColorOptions.SimpleColor.make(
        ~main="#fff",
        ~light="#fefefe",
        ~dark="#ababab",
        ~contrastText="#aaaaaa",
        ()
      ),
      ~secondary=PaletteColorOptions.SimpleColor.make(
        ~main="#fff",
        ~light="#fefefe",
        ~dark="#ababab",
        ~contrastText="#aaaaaa",
        ()
      ),
      ~error=PaletteColorOptions.SimpleColor.make(
        ~main="#fff",
        ~light="#fefefe",
        ~dark="#ababab",
        ~contrastText="#aaaaaa",
        ()
      ),
      ~warning=PaletteColorOptions.SimpleColor.make(
        ~main="#fff",
        ~light="#fefefe",
        ~dark="#ababab",
        ~contrastText="#aaaaaa",
        ()
      ),
      ~info=PaletteColorOptions.SimpleColor.make(
        ~main="#fff",
        ~light="#fefefe",
        ~dark="#ababab",
        ~contrastText="#aaaaaa",
        ()
      ),
      ~success=PaletteColorOptions.SimpleColor.make(
        ~main="#fff",
        ~light="#fefefe",
        ~dark="#ababab",
        ~contrastText="#aaaaaa",
        ()
      ),
      ~grey=Color.make(
        ~\"50"="#000000",
        ~\"100"="#000000",
        ~\"200"="#000000",
        ~\"300"="#000000",
        ~\"400"="#000000",
        ~\"500"="#000000",
        ~\"600"="#000000",
        ~\"700"="#000000",
        ~\"800"="#000000",
        ~\"900"="#000000",
        ~\"A100"="#000000",
        ~\"A200"="#000000",
        ~\"A400"="#000000",
        ~\"A700"="#000000",
        ()
      ),
      ~contrastThreshold=2.0,
      ~getContrastText=v => v,
      ~tonalOffset=TonalOffset.make(~light=0.3, ~dark=0.4),
      ~text=TextColor.make(
        ~primary="#ababab",
        ~secondary="#aabbcc",
        ~disabled="#ffffaa",
        ~hint="#11bb22",
        ()
      ),
      ~divider="#abbccd",
      ~background=BackgroundColor.make(
        ~default="#999999",
        ~paper="#888888",
        ()
      ),
      ~action=ActionColor.make(
        ~active="#444444",
        ~hover="#abcdef",
        ~hoverOpacity=0.9,
        ~selected="#112233",
        ~selectedOpacity=0.8,
        ~disabled="#221100",
        ~disabledBackground="#000000",
        ~disabledOpacity=0.6,
        ~focus="#bbbbbb",
        ~focusOpacity=0.1,
        ~activatedOpacity=0.4,
        ()
      ),
      ()
    ),
    ()
  )
  ->Theme.palette;

  test("common colors", (.) => {
    let common = palette->Palette.common;
    expect(common->CommonColors.black)
    ->toBe("#212121");
    expect(common->CommonColors.white)
    ->toBe("#fafafa");
  });

  test("primary colors", (.) => {
    let primary = palette->Palette.primary;
    expect(primary->PaletteColor.light)
    ->toBe("#fefefe");
    expect(primary->PaletteColor.main)
    ->toBe("#fff");
    expect(primary->PaletteColor.dark)
    ->toBe("#ababab");
    expect(primary->PaletteColor.contrastText)
    ->toBe("#aaaaaa");
  });

  test("secondary colors", (.) => {
    let secondary = palette->Palette.secondary;
    expect(secondary->PaletteColor.light)
    ->toBe("#fefefe");
    expect(secondary->PaletteColor.main)
    ->toBe("#fff");
    expect(secondary->PaletteColor.dark)
    ->toBe("#ababab");
    expect(secondary->PaletteColor.contrastText)
    ->toBe("#aaaaaa");
  });

  test("error colors", (.) => {
    let error = palette->Palette.error;
    expect(error->PaletteColor.light)
    ->toBe("#fefefe");
    expect(error->PaletteColor.main)
    ->toBe("#fff");
    expect(error->PaletteColor.dark)
    ->toBe("#ababab");
    expect(error->PaletteColor.contrastText)
    ->toBe("#aaaaaa");
  });

  test("warning colors", (.) => {
    let warning = palette->Palette.warning;
    expect(warning->PaletteColor.light)
    ->toBe("#fefefe");
    expect(warning->PaletteColor.main)
    ->toBe("#fff");
    expect(warning->PaletteColor.dark)
    ->toBe("#ababab");
    expect(warning->PaletteColor.contrastText)
    ->toBe("#aaaaaa");
  });

  test("info colors", (.) => {
    let info = palette->Palette.info;
    expect(info->PaletteColor.light)
    ->toBe("#fefefe");
    expect(info->PaletteColor.main)
    ->toBe("#fff");
    expect(info->PaletteColor.dark)
    ->toBe("#ababab");
    expect(info->PaletteColor.contrastText)
    ->toBe("#aaaaaa");
  });

  test("success colors", (.) => {
    let success = palette->Palette.success;
    expect(success->PaletteColor.light)
    ->toBe("#fefefe");
    expect(success->PaletteColor.main)
    ->toBe("#fff");
    expect(success->PaletteColor.dark)
    ->toBe("#ababab");
    expect(success->PaletteColor.contrastText)
    ->toBe("#aaaaaa");
  });

  test("grey", (.) => {
    let grey = palette->Palette.grey
    expect(grey->Color.get50)
    ->toBe("#000000");
    expect(grey->Color.get100)
    ->toBe("#000000");
    expect(grey->Color.get200)
    ->toBe("#000000");
    expect(grey->Color.get300)
    ->toBe("#000000");
    expect(grey->Color.get400)
    ->toBe("#000000");
    expect(grey->Color.get500)
    ->toBe("#000000");
    expect(grey->Color.get600)
    ->toBe("#000000");
    expect(grey->Color.get700)
    ->toBe("#000000");
    expect(grey->Color.get800)
    ->toBe("#000000");
    expect(grey->Color.get900)
    ->toBe("#000000");
    expect(grey->Color.getA100)
    ->toBe("#000000");
    expect(grey->Color.getA200)
    ->toBe("#000000");
    expect(grey->Color.getA400)
    ->toBe("#000000");
    expect(grey->Color.get700)
    ->toBe("#000000");
  });

  test("contrastThreshold", (.) => {
    expect(palette->Palette.contrastThreshold)
    ->toBe(2.0);
  });

  test("getContrastText", (.) => {
    expect(palette->Palette.getContrastText("#fff"))
    ->toBe("#fff");
  });

  test("tonalOffset", (.) => {
    expect(palette->Palette.tonalOffsetUnsafe)
    ->toEqual({ "light": 0.3, "dark": 0.4 })

    expect(
      switch palette->Palette.tonalOffset {
      | Obj(v) => v
      | Number(_) => { "light": 0.6, "dark": 0.7 }
      }
    )
    ->toEqual({ "light": 0.3, "dark": 0.4 })
  });

  test("text", (.) => {
    let text = palette->Palette.text;
    expect(text->TextColor.primary)
    ->toBe("#ababab");
    expect(text->TextColor.secondary)
    ->toBe("#aabbcc");
    expect(text->TextColor.disabled)
    ->toBe("#ffffaa");
    expect(text->TextColor.hint)
    ->toBe("#11bb22");
  });

  test("divider", (.) => {
    expect(palette->Palette.divider)
    ->toBe("#abbccd");
  });

  test("background", (.) => {
    let background = palette->Palette.background;
    expect(background->BackgroundColor.paper)
    ->toBe("#888888");
    expect(background->BackgroundColor.default)
    ->toBe("#999999");
  });

  test("action", (.) => {
    let action = palette->Palette.action;
    expect(action->ActionColor.active)
    ->toBe("#444444");
    expect(action->ActionColor.hover)
    ->toBe("#abcdef");
    expect(action->ActionColor.hoverOpacity)
    ->toBe(0.9);
    expect(action->ActionColor.selected)
    ->toBe("#112233");
    expect(action->ActionColor.selectedOpacity)
    ->toBe(0.8);
    expect(action->ActionColor.disabled)
    ->toBe("#221100");
    expect(action->ActionColor.disabledBackground)
    ->toBe("#000000");
    expect(action->ActionColor.disabledOpacity)
    ->toBe(0.6);
    expect(action->ActionColor.focus)
    ->toBe("#bbbbbb");
    expect(action->ActionColor.focusOpacity)
    ->toBe(0.1);
    expect(action->ActionColor.activatedOpacity)
    ->toBe(0.4);
  });
});