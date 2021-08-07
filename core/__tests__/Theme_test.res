open Jest;
open! Theme;

let theme = Theme.make(());

describe("palette", (.) => {
  let palette = theme->Theme.palette;

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
});