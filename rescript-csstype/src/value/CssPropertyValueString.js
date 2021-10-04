// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var CssValueString$Ress = require("./CssValueString.js");

function background(color, position, size, repeat, attachment, origin, clip, imageOrColor) {
  var imageOrColor$1;
  if (typeof imageOrColor === "object") {
    imageOrColor$1 = imageOrColor;
  } else {
    if (imageOrColor === "inherit" || imageOrColor === "unset" || imageOrColor === "revert" || imageOrColor === "initial") {
      return CssValueString$Ress.$$global(imageOrColor);
    }
    imageOrColor$1 = imageOrColor;
  }
  return CssValueString$Ress.bg(color, position, size, repeat, attachment, origin, clip, imageOrColor$1);
}

function background2(v1, v2) {
  return CssValueString$Ress.bgLayer(v1) + ", " + CssValueString$Ress.bgLayer(v2);
}

function background3(v1, v2, v3) {
  return CssValueString$Ress.bgLayer(v1) + ", " + CssValueString$Ress.bgLayer(v2) + ", " + CssValueString$Ress.bgLayer(v3);
}

function background4(v1, v2, v3, v4) {
  return CssValueString$Ress.bgLayer(v1) + ", " + CssValueString$Ress.bgLayer(v2) + ", " + CssValueString$Ress.bgLayer(v3) + ", " + CssValueString$Ress.bgLayer(v4);
}

var backgroundAttachment = CssValueString$Ress.attachment_global;

function backgroundAttachment2(v1, v2) {
  return CssValueString$Ress.attachment(v1) + ", " + CssValueString$Ress.attachment(v2);
}

function backgroundAttachment3(v1, v2, v3) {
  return CssValueString$Ress.attachment(v1) + ", " + CssValueString$Ress.attachment(v2) + ", " + CssValueString$Ress.attachment(v3);
}

function backgroundAttachment4(v1, v2, v3, v4) {
  return CssValueString$Ress.attachment(v1) + ", " + CssValueString$Ress.attachment(v2) + ", " + CssValueString$Ress.attachment(v3) + ", " + CssValueString$Ress.attachment(v4);
}

var backgroundColor = CssValueString$Ress.color_global;

var backgroundImage = CssValueString$Ress.bgImage_global;

function backgroundImage2(v1, v2) {
  return CssValueString$Ress.bgImage(v1) + ", " + CssValueString$Ress.bgImage(v2);
}

function backgroundImage3(v1, v2, v3) {
  return CssValueString$Ress.bgImage(v1) + ", " + CssValueString$Ress.bgImage(v2) + ", " + CssValueString$Ress.bgImage(v3);
}

function backgroundImage4(v1, v2, v3, v4) {
  return CssValueString$Ress.bgImage(v1) + ", " + CssValueString$Ress.bgImage(v2) + ", " + CssValueString$Ress.bgImage(v3) + ", " + CssValueString$Ress.bgImage(v4);
}

var backgroundPosition = CssValueString$Ress.position_global;

function backgroundPosition2(v1, v2) {
  return CssValueString$Ress.position(v1) + ", " + CssValueString$Ress.position(v2);
}

function backgroundPosition3(v1, v2, v3) {
  return CssValueString$Ress.position(v1) + ", " + CssValueString$Ress.position(v2) + ", " + CssValueString$Ress.position(v3);
}

function backgroundPosition4(v1, v2, v3, v4) {
  return CssValueString$Ress.position(v1) + ", " + CssValueString$Ress.position(v2) + ", " + CssValueString$Ress.position(v3) + ", " + CssValueString$Ress.position(v4);
}

var backgroundStyle = CssValueString$Ress.repeatStyle_global;

function backgroundStyle2(v1, v2) {
  return CssValueString$Ress.repeatStyle(v1) + ", " + CssValueString$Ress.repeatStyle(v2);
}

function backgroundStyle3(v1, v2, v3) {
  return CssValueString$Ress.repeatStyle(v1) + ", " + CssValueString$Ress.repeatStyle(v2) + ", " + CssValueString$Ress.repeatStyle(v3);
}

function backgroundStyle4(v1, v2, v3, v4) {
  return CssValueString$Ress.repeatStyle(v1) + ", " + CssValueString$Ress.repeatStyle(v2) + ", " + CssValueString$Ress.repeatStyle(v3) + ", " + CssValueString$Ress.repeatStyle(v4);
}

function border(width, color, style) {
  var border$1 = width !== undefined ? (
      color !== undefined ? CssValueString$Ress.lineWidth(width) + " " + CssValueString$Ress.color(color) : CssValueString$Ress.lineWidth(width)
    ) : (
      color !== undefined ? CssValueString$Ress.color(color) : undefined
    );
  if (style === "inherit" || style === "unset" || style === "revert" || style === "initial") {
    return CssValueString$Ress.$$global(style);
  } else if (border$1 !== undefined) {
    return border$1 + " " + CssValueString$Ress.lineStyle(style);
  } else {
    return CssValueString$Ress.lineStyle(style);
  }
}

var borderStyle = CssValueString$Ress.lineStyle_global;

function borderStyle2(tb, lr) {
  return CssValueString$Ress.lineStyle(tb) + " " + CssValueString$Ress.lineStyle(lr);
}

function borderStyle3(top, lr, bottom) {
  return CssValueString$Ress.lineStyle(top) + " " + CssValueString$Ress.lineStyle(lr) + " " + CssValueString$Ress.lineStyle(bottom);
}

function borderStyle4(top, right, bottom, left) {
  return CssValueString$Ress.lineStyle(top) + " " + CssValueString$Ress.lineStyle(right) + " " + CssValueString$Ress.lineStyle(bottom) + " " + CssValueString$Ress.lineStyle(left);
}

var borderWidth = CssValueString$Ress.lineWidth_global;

function borderWidth2(tb, lr) {
  return CssValueString$Ress.lineWidth(tb) + " " + CssValueString$Ress.lineWidth(lr);
}

function borderWidth3(top, lr, bottom) {
  return CssValueString$Ress.lineWidth(top) + " " + CssValueString$Ress.lineWidth(lr) + " " + CssValueString$Ress.lineWidth(bottom);
}

function borderWidth4(top, right, bottom, left) {
  return CssValueString$Ress.lineWidth(top) + " " + CssValueString$Ress.lineWidth(right) + " " + CssValueString$Ress.lineWidth(bottom) + " " + CssValueString$Ress.lineWidth(left);
}

var borderColor = CssValueString$Ress.color_global;

function borderColor2(tb, lr) {
  return CssValueString$Ress.color(tb) + " " + CssValueString$Ress.color(lr);
}

function borderColor3(top, lr, bottom) {
  return CssValueString$Ress.color(top) + " " + CssValueString$Ress.color(lr) + " " + CssValueString$Ress.color(bottom);
}

function borderColor4(top, right, bottom, left) {
  return CssValueString$Ress.color(top) + " " + CssValueString$Ress.color(right) + " " + CssValueString$Ress.color(bottom) + " " + CssValueString$Ress.color(left);
}

var color = CssValueString$Ress.color_global;

var clear = CssValueString$Ress.clear_global;

var cursor = CssValueString$Ress.cursorKeyword_global;

function cursor1(i, k) {
  return CssValueString$Ress.cursorImage(i) + ", " + CssValueString$Ress.cursorKeyword(k);
}

function cursor2(i1, i2, k) {
  return CssValueString$Ress.cursorImage(i1) + ", " + CssValueString$Ress.cursorImage(i2) + ", " + CssValueString$Ress.cursorKeyword(k);
}

function cursor3(i1, i2, i3, k) {
  return CssValueString$Ress.cursorImage(i1) + ", " + CssValueString$Ress.cursorImage(i2) + ", " + CssValueString$Ress.cursorImage(i3) + ", " + CssValueString$Ress.cursorKeyword(k);
}

function cursor4(i1, i2, i3, i4, k) {
  return CssValueString$Ress.cursorImage(i1) + ", " + CssValueString$Ress.cursorImage(i2) + ", " + CssValueString$Ress.cursorImage(i3) + ", " + CssValueString$Ress.cursorImage(i4) + ", " + CssValueString$Ress.cursorKeyword(k);
}

var fontFamily = CssValueString$Ress.fontFamily_global;

function fontFamily2(v1, v2) {
  return CssValueString$Ress.fontFamily(v1) + ", " + CssValueString$Ress.fontFamily(v2);
}

function fontFamily3(v1, v2, v3) {
  return CssValueString$Ress.fontFamily(v1) + ", " + CssValueString$Ress.fontFamily(v2) + ", " + CssValueString$Ress.fontFamily(v3);
}

function fontFamily4(v1, v2, v3, v4) {
  return CssValueString$Ress.fontFamily(v1) + ", " + CssValueString$Ress.fontFamily(v2) + ", " + CssValueString$Ress.fontFamily(v3) + ", " + CssValueString$Ress.fontFamily(v4);
}

var fontWeight = CssValueString$Ress.fontWeight_global;

var margin = CssValueString$Ress.margin_global;

function margin2(tb, lr) {
  return CssValueString$Ress.margin(tb) + " " + CssValueString$Ress.margin(lr);
}

function margin3(top, lr, bottom) {
  return CssValueString$Ress.margin(top) + " " + CssValueString$Ress.margin(lr) + " " + CssValueString$Ress.margin(bottom);
}

function margin4(top, right, bottom, left) {
  return CssValueString$Ress.margin(top) + " " + CssValueString$Ress.margin(right) + " " + CssValueString$Ress.margin(bottom) + " " + CssValueString$Ress.margin(left);
}

var padding = CssValueString$Ress.padding_global;

function padding2(tb, lr) {
  return CssValueString$Ress.padding(tb) + " " + CssValueString$Ress.padding(lr);
}

function padding3(top, lr, bottom) {
  return CssValueString$Ress.padding(top) + " " + CssValueString$Ress.padding(lr) + " " + CssValueString$Ress.padding(bottom);
}

function padding4(top, right, bottom, left) {
  return CssValueString$Ress.padding(top) + " " + CssValueString$Ress.padding(right) + " " + CssValueString$Ress.padding(bottom) + " " + CssValueString$Ress.padding(left);
}

exports.background = background;
exports.background2 = background2;
exports.background3 = background3;
exports.background4 = background4;
exports.backgroundAttachment = backgroundAttachment;
exports.backgroundAttachment2 = backgroundAttachment2;
exports.backgroundAttachment3 = backgroundAttachment3;
exports.backgroundAttachment4 = backgroundAttachment4;
exports.backgroundColor = backgroundColor;
exports.backgroundImage = backgroundImage;
exports.backgroundImage2 = backgroundImage2;
exports.backgroundImage3 = backgroundImage3;
exports.backgroundImage4 = backgroundImage4;
exports.backgroundPosition = backgroundPosition;
exports.backgroundPosition2 = backgroundPosition2;
exports.backgroundPosition3 = backgroundPosition3;
exports.backgroundPosition4 = backgroundPosition4;
exports.backgroundStyle = backgroundStyle;
exports.backgroundStyle2 = backgroundStyle2;
exports.backgroundStyle3 = backgroundStyle3;
exports.backgroundStyle4 = backgroundStyle4;
exports.border = border;
exports.borderStyle = borderStyle;
exports.borderStyle2 = borderStyle2;
exports.borderStyle3 = borderStyle3;
exports.borderStyle4 = borderStyle4;
exports.borderWidth = borderWidth;
exports.borderWidth2 = borderWidth2;
exports.borderWidth3 = borderWidth3;
exports.borderWidth4 = borderWidth4;
exports.borderColor = borderColor;
exports.borderColor2 = borderColor2;
exports.borderColor3 = borderColor3;
exports.borderColor4 = borderColor4;
exports.color = color;
exports.clear = clear;
exports.cursor = cursor;
exports.cursor1 = cursor1;
exports.cursor2 = cursor2;
exports.cursor3 = cursor3;
exports.cursor4 = cursor4;
exports.fontFamily = fontFamily;
exports.fontFamily2 = fontFamily2;
exports.fontFamily3 = fontFamily3;
exports.fontFamily4 = fontFamily4;
exports.fontWeight = fontWeight;
exports.margin = margin;
exports.margin2 = margin2;
exports.margin3 = margin3;
exports.margin4 = margin4;
exports.padding = padding;
exports.padding2 = padding2;
exports.padding3 = padding3;
exports.padding4 = padding4;
/* No side effect */
