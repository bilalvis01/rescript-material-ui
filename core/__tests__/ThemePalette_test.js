// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Caml_option = require("rescript/lib/js/caml_option.js");
var Theme_Theme$Materialui = require("../src/Theme/Theme_Theme.js");
var Theme_Palette$Materialui = require("../src/Theme/Theme_Palette.js");

describe("default palette", (function () {
        var palette = Theme_Theme$Materialui.make(undefined, undefined).palette;
        test("common colors", (function () {
                var common = palette.common;
                expect(common.black).toBe("#000");
                expect(common.white).toBe("#fff");
                
              }));
        test("primary colors", (function () {
                var primary = palette.primary;
                expect(primary.light).toBe("#7986cb");
                expect(primary.main).toBe("#3f51b5");
                expect(primary.dark).toBe("#303f9f");
                expect(primary.contrastText).toBe("#fff");
                
              }));
        test("secondary colors", (function () {
                var secondary = palette.secondary;
                expect(secondary.light).toBe("#ff4081");
                expect(secondary.main).toBe("#f50057");
                expect(secondary.dark).toBe("#c51162");
                expect(secondary.contrastText).toBe("#fff");
                
              }));
        test("error colors", (function () {
                var error = palette.error;
                expect(error.light).toBe("#e57373");
                expect(error.main).toBe("#f44336");
                expect(error.dark).toBe("#d32f2f");
                expect(error.contrastText).toBe("#fff");
                
              }));
        test("waring colors", (function () {
                var warning = palette.warning;
                expect(warning.light).toBe("#ffb74d");
                expect(warning.main).toBe("#ff9800");
                expect(warning.dark).toBe("#f57c00");
                expect(warning.contrastText).toBe("rgba(0, 0, 0, 0.87)");
                
              }));
        test("info colors", (function () {
                var info = palette.info;
                expect(info.light).toBe("#64b5f6");
                expect(info.main).toBe("#2196f3");
                expect(info.dark).toBe("#1976d2");
                expect(info.contrastText).toBe("#fff");
                
              }));
        test("success colors", (function () {
                var success = palette.success;
                expect(success.light).toBe("#81c784");
                expect(success.main).toBe("#4caf50");
                expect(success.dark).toBe("#388e3c");
                expect(success.contrastText).toBe("rgba(0, 0, 0, 0.87)");
                
              }));
        test("grey", (function () {
                var grey = palette.grey;
                expect(grey[50]).toBe("#fafafa");
                expect(grey[100]).toBe("#f5f5f5");
                expect(grey[200]).toBe("#eeeeee");
                expect(grey[300]).toBe("#e0e0e0");
                expect(grey[400]).toBe("#bdbdbd");
                expect(grey[500]).toBe("#9e9e9e");
                expect(grey[600]).toBe("#757575");
                expect(grey[700]).toBe("#616161");
                expect(grey[800]).toBe("#424242");
                expect(grey[900]).toBe("#212121");
                expect(grey.A100).toBe("#d5d5d5");
                expect(grey.A200).toBe("#aaaaaa");
                expect(grey.A400).toBe("#303030");
                expect(grey[700]).toBe("#616161");
                
              }));
        test("contrastThreshold", (function () {
                expect(palette.contrastThreshold).toBe(3);
                
              }));
        test("getContrastText", (function () {
                expect(palette.getContrastText("#fff")).toBe("rgba(0, 0, 0, 0.87)");
                
              }));
        test("augmentColor", (function () {
                expect(Theme_Palette$Materialui.augmentColor(palette, {
                            color: {
                              main: "#fff"
                            }
                          })).toEqual({
                      contrastText: "rgba(0, 0, 0, 0.87)",
                      dark: "rgb(178, 178, 178)",
                      light: "rgb(255, 255, 255)",
                      main: "#fff"
                    });
                expect(Theme_Palette$Materialui.augmentColor(palette, {
                            color: {
                              "400": "#fafafa",
                              A400: "#fcfcfc"
                            },
                            mainShade: "400",
                            darkShade: "A400"
                          })).toEqual({
                      "400": "#fafafa",
                      A400: "#fcfcfc",
                      contrastText: "rgba(0, 0, 0, 0.87)",
                      dark: "#fcfcfc",
                      light: "rgb(251, 251, 251)",
                      main: "#fafafa"
                    });
                
              }));
        test("tanalOffset", (function () {
                expect(palette.tonalOffset).toBe(0.2);
                var n = Theme_Palette$Materialui.tonalOffset(palette);
                var tmp;
                tmp = n.TAG === /* Number */0 ? n._0 : 0.0;
                expect(tmp).toBe(0.2);
                
              }));
        test("text", (function () {
                var text = palette.text;
                expect(text.primary).toBe("rgba(0, 0, 0, 0.87)");
                expect(text.secondary).toBe("rgba(0, 0, 0, 0.54)");
                expect(text.disabled).toBe("rgba(0, 0, 0, 0.38)");
                expect(text.hint).toBe("rgba(0, 0, 0, 0.38)");
                
              }));
        test("divider", (function () {
                expect(palette.divider).toBe("rgba(0, 0, 0, 0.12)");
                
              }));
        test("background", (function () {
                var background = palette.background;
                expect(background.paper).toBe("#fff");
                expect(background.default).toBe("#fafafa");
                
              }));
        test("action", (function () {
                var action = palette.action;
                expect(action.active).toBe("rgba(0, 0, 0, 0.54)");
                expect(action.hover).toBe("rgba(0, 0, 0, 0.04)");
                expect(action.hoverOpacity).toBe(0.04);
                expect(action.selected).toBe("rgba(0, 0, 0, 0.08)");
                expect(action.selectedOpacity).toBe(0.08);
                expect(action.disabled).toBe("rgba(0, 0, 0, 0.26)");
                expect(action.disabledBackground).toBe("rgba(0, 0, 0, 0.12)");
                expect(action.disabledOpacity).toBe(0.38);
                expect(action.focus).toBe("rgba(0, 0, 0, 0.12)");
                expect(action.focusOpacity).toBe(0.12);
                expect(action.activatedOpacity).toBe(0.12);
                
              }));
        
      }));

describe("custom palette", (function () {
        var palette = Theme_Theme$Materialui.make(Caml_option.some(Theme_Palette$Materialui.make({
                      light: "#fefefe",
                      main: "#fff",
                      dark: "#ababab",
                      contrastText: "#aaaaaa"
                    }, {
                      light: "#fefefe",
                      main: "#fff",
                      dark: "#ababab",
                      contrastText: "#aaaaaa"
                    }, {
                      light: "#fefefe",
                      main: "#fff",
                      dark: "#ababab",
                      contrastText: "#aaaaaa"
                    }, {
                      light: "#fefefe",
                      main: "#fff",
                      dark: "#ababab",
                      contrastText: "#aaaaaa"
                    }, {
                      light: "#fefefe",
                      main: "#fff",
                      dark: "#ababab",
                      contrastText: "#aaaaaa"
                    }, {
                      light: "#fefefe",
                      main: "#fff",
                      dark: "#ababab",
                      contrastText: "#aaaaaa"
                    }, undefined, {
                      light: 0.3,
                      dark: 0.4
                    }, 2.0, {
                      black: "#212121",
                      white: "#fafafa"
                    }, {
                      "50": "#000000",
                      "100": "#000000",
                      "200": "#000000",
                      "300": "#000000",
                      "400": "#000000",
                      "500": "#000000",
                      "600": "#000000",
                      "700": "#000000",
                      "800": "#000000",
                      "900": "#000000",
                      A100: "#000000",
                      A200: "#000000",
                      A400: "#000000",
                      A700: "#000000"
                    }, {
                      primary: "#ababab",
                      secondary: "#aabbcc",
                      disabled: "#ffffaa",
                      hint: "#11bb22"
                    }, "#abbccd", {
                      active: "#444444",
                      hover: "#abcdef",
                      hoverOpacity: 0.9,
                      selected: "#112233",
                      selectedOpacity: 0.8,
                      disabled: "#221100",
                      disabledOpacity: 0.6,
                      disabledBackground: "#000000",
                      focus: "#bbbbbb",
                      focusOpacity: 0.1,
                      activatedOpacity: 0.4
                    }, {
                      default: "#999999",
                      paper: "#888888"
                    }, (function (v) {
                        return v;
                      }), undefined)), undefined).palette;
        test("common colors", (function () {
                var common = palette.common;
                expect(common.black).toBe("#212121");
                expect(common.white).toBe("#fafafa");
                
              }));
        test("primary colors", (function () {
                var primary = palette.primary;
                expect(primary.light).toBe("#fefefe");
                expect(primary.main).toBe("#fff");
                expect(primary.dark).toBe("#ababab");
                expect(primary.contrastText).toBe("#aaaaaa");
                
              }));
        test("secondary colors", (function () {
                var secondary = palette.secondary;
                expect(secondary.light).toBe("#fefefe");
                expect(secondary.main).toBe("#fff");
                expect(secondary.dark).toBe("#ababab");
                expect(secondary.contrastText).toBe("#aaaaaa");
                
              }));
        test("error colors", (function () {
                var error = palette.error;
                expect(error.light).toBe("#fefefe");
                expect(error.main).toBe("#fff");
                expect(error.dark).toBe("#ababab");
                expect(error.contrastText).toBe("#aaaaaa");
                
              }));
        test("warning colors", (function () {
                var warning = palette.warning;
                expect(warning.light).toBe("#fefefe");
                expect(warning.main).toBe("#fff");
                expect(warning.dark).toBe("#ababab");
                expect(warning.contrastText).toBe("#aaaaaa");
                
              }));
        test("info colors", (function () {
                var info = palette.info;
                expect(info.light).toBe("#fefefe");
                expect(info.main).toBe("#fff");
                expect(info.dark).toBe("#ababab");
                expect(info.contrastText).toBe("#aaaaaa");
                
              }));
        test("success colors", (function () {
                var success = palette.success;
                expect(success.light).toBe("#fefefe");
                expect(success.main).toBe("#fff");
                expect(success.dark).toBe("#ababab");
                expect(success.contrastText).toBe("#aaaaaa");
                
              }));
        test("grey", (function () {
                var grey = palette.grey;
                expect(grey[50]).toBe("#000000");
                expect(grey[100]).toBe("#000000");
                expect(grey[200]).toBe("#000000");
                expect(grey[300]).toBe("#000000");
                expect(grey[400]).toBe("#000000");
                expect(grey[500]).toBe("#000000");
                expect(grey[600]).toBe("#000000");
                expect(grey[700]).toBe("#000000");
                expect(grey[800]).toBe("#000000");
                expect(grey[900]).toBe("#000000");
                expect(grey.A100).toBe("#000000");
                expect(grey.A200).toBe("#000000");
                expect(grey.A400).toBe("#000000");
                expect(grey[700]).toBe("#000000");
                
              }));
        test("contrastThreshold", (function () {
                expect(palette.contrastThreshold).toBe(2.0);
                
              }));
        test("getContrastText", (function () {
                expect(palette.getContrastText("#fff")).toBe("#fff");
                
              }));
        test("tonalOffset", (function () {
                expect(palette.tonalOffset).toEqual({
                      light: 0.3,
                      dark: 0.4
                    });
                var v = Theme_Palette$Materialui.tonalOffset(palette);
                var tmp;
                tmp = v.TAG === /* Number */0 ? ({
                      light: 0.6,
                      dark: 0.7
                    }) : v._0;
                expect(tmp).toEqual({
                      light: 0.3,
                      dark: 0.4
                    });
                
              }));
        test("text", (function () {
                var text = palette.text;
                expect(text.primary).toBe("#ababab");
                expect(text.secondary).toBe("#aabbcc");
                expect(text.disabled).toBe("#ffffaa");
                expect(text.hint).toBe("#11bb22");
                
              }));
        test("divider", (function () {
                expect(palette.divider).toBe("#abbccd");
                
              }));
        test("background", (function () {
                var background = palette.background;
                expect(background.paper).toBe("#888888");
                expect(background.default).toBe("#999999");
                
              }));
        test("action", (function () {
                var action = palette.action;
                expect(action.active).toBe("#444444");
                expect(action.hover).toBe("#abcdef");
                expect(action.hoverOpacity).toBe(0.9);
                expect(action.selected).toBe("#112233");
                expect(action.selectedOpacity).toBe(0.8);
                expect(action.disabled).toBe("#221100");
                expect(action.disabledBackground).toBe("#000000");
                expect(action.disabledOpacity).toBe(0.6);
                expect(action.focus).toBe("#bbbbbb");
                expect(action.focusOpacity).toBe(0.1);
                expect(action.activatedOpacity).toBe(0.4);
                
              }));
        
      }));

/*  Not a pure module */
