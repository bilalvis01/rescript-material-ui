// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var CssString$Css = require("./CssString.js");

function border(width, color, style) {
  var border$1 = width !== undefined ? (
      color !== undefined ? CssString$Css.lineWidth(width) + " " + CssString$Css.color(color) : CssString$Css.lineWidth(width)
    ) : (
      color !== undefined ? CssString$Css.color(color) : undefined
    );
  if (style === "inherit" || style === "unset" || style === "revert" || style === "initial" || border$1 === undefined) {
    return style;
  } else {
    return border$1 + " " + style;
  }
}

function borderColor(v) {
  if (typeof v === "object" || !(v === "inherit" || v === "unset" || v === "revert" || v === "initial")) {
    return CssString$Css.color(v);
  } else {
    return v;
  }
}

function borderColor2(tb, lr) {
  return CssString$Css.color(tb) + " " + CssString$Css.color(lr);
}

function borderColor3(top, lr, bottom) {
  return CssString$Css.color(top) + " " + CssString$Css.color(lr) + " " + CssString$Css.color(bottom);
}

function borderColor4(top, right, bottom, left) {
  return CssString$Css.color(top) + " " + CssString$Css.color(right) + " " + CssString$Css.color(bottom) + " " + CssString$Css.color(left);
}

var borderTopColor = CssString$Css.color_global;

var borderRightColor = CssString$Css.color_global;

var borderBottomColor = CssString$Css.color_global;

var borderLeftColor = CssString$Css.color_global;

function borderStyle(v) {
  return v;
}

function borderStyle2(tb, lr) {
  return tb + " " + lr;
}

function borderStyle3(top, lr, bottom) {
  return top + " " + lr + " " + bottom;
}

function borderStyle4(top, right, bottom, left) {
  return top + " " + right + " " + bottom + " " + left;
}

function borderWidth(v) {
  if (typeof v === "object" || v === "thick" || v === "medium" || v === "thin") {
    return CssString$Css.lineWidth(v);
  } else {
    return v;
  }
}

function borderWidth2(tb, lr) {
  return CssString$Css.lineWidth(tb) + " " + CssString$Css.lineWidth(lr);
}

function borderWidth3(top, lr, bottom) {
  return CssString$Css.lineWidth(top) + " " + CssString$Css.lineWidth(lr) + " " + CssString$Css.lineWidth(bottom);
}

function borderWidth4(top, right, bottom, left) {
  return CssString$Css.lineWidth(top) + " " + CssString$Css.lineWidth(right) + " " + CssString$Css.lineWidth(bottom) + " " + CssString$Css.lineWidth(left);
}

function background(color, position, size, repeat, attachment, origin, clip, imageOrColor) {
  var imageOrColor$1;
  if (typeof imageOrColor === "object") {
    imageOrColor$1 = imageOrColor;
  } else {
    if (imageOrColor === "inherit" || imageOrColor === "unset" || imageOrColor === "revert" || imageOrColor === "initial") {
      return imageOrColor;
    }
    imageOrColor$1 = imageOrColor;
  }
  return CssString$Css.background(color, position, size, repeat, attachment, origin, clip, imageOrColor$1);
}

function background2(l1, l2) {
  return CssString$Css.bgLayer(l1) + ", " + CssString$Css.bgLayer(l2);
}

function background3(l1, l2, l3) {
  return CssString$Css.bgLayer(l1) + ", " + CssString$Css.bgLayer(l2) + ", " + CssString$Css.bgLayer(l3);
}

function background4(l1, l2, l3, l4) {
  return CssString$Css.bgLayer(l1) + ", " + CssString$Css.bgLayer(l2) + ", " + CssString$Css.bgLayer(l3) + ", " + CssString$Css.bgLayer(l4);
}

function backgroundAttachment(v) {
  return v;
}

function backgroundAttachment2(v1, v2) {
  return v1 + ", " + v2;
}

function backgroundAttachment3(v1, v2, v3) {
  return v1 + ", " + v2 + ", " + v3;
}

function backgroundAttachment4(v1, v2, v3, v4) {
  return v1 + ", " + v2 + ", " + v3 + ", " + v4;
}

var backgroundColor = CssString$Css.color;

var backgroundImage = CssString$Css.bgImage;

function backgroundImage2(v1, v2) {
  return CssString$Css.bgImage(v1) + ", " + CssString$Css.bgImage(v2);
}

function backgroundImage3(v1, v2, v3) {
  return CssString$Css.bgImage(v1) + ", " + CssString$Css.bgImage(v2) + ", " + CssString$Css.bgImage(v3);
}

function backgroundImage4(v1, v2, v3, v4) {
  return CssString$Css.bgImage(v1) + ", " + CssString$Css.bgImage(v2) + ", " + CssString$Css.bgImage(v3) + ", " + CssString$Css.bgImage(v4);
}

var backgroundPosition = CssString$Css.position;

function backgroundPosition2(v1, v2) {
  return CssString$Css.position(v1) + ", " + CssString$Css.position(v2);
}

function backgroundPosition3(v1, v2, v3) {
  return CssString$Css.position(v1) + ", " + CssString$Css.position(v2) + ", " + CssString$Css.position(v3);
}

function backgroundPosition4(v1, v2, v3, v4) {
  return CssString$Css.position(v1) + ", " + CssString$Css.position(v2) + ", " + CssString$Css.position(v3) + ", " + CssString$Css.position(v4);
}

function backgroundStyle(v) {
  return v;
}

function backgroundStyle2(v1, v2) {
  return v1 + ", " + v2;
}

function backgroundStyle3(v1, v2, v3) {
  return v1 + ", " + v2 + ", " + v3;
}

function backgroundStyle4(v1, v2, v3, v4) {
  return v1 + ", " + v2 + ", " + v3 + ", " + v4;
}

var margin = CssString$Css.margin_global;

function margin2(v1, v2) {
  return CssString$Css.margin(v1) + " " + CssString$Css.margin(v2);
}

function margin3(v1, v2, v3) {
  return CssString$Css.margin(v1) + " " + CssString$Css.margin(v2) + " " + CssString$Css.margin(v3);
}

function margin4(v1, v2, v3, v4) {
  return CssString$Css.margin(v1) + " " + CssString$Css.margin(v2) + " " + CssString$Css.margin(v3) + " " + CssString$Css.margin(v4);
}

var marginTop = CssString$Css.margin_global;

var marginRight = CssString$Css.margin_global;

var marginBottom = CssString$Css.margin_global;

var marginLeft = CssString$Css.margin_global;

exports.border = border;
exports.borderColor = borderColor;
exports.borderColor2 = borderColor2;
exports.borderColor3 = borderColor3;
exports.borderColor4 = borderColor4;
exports.borderTopColor = borderTopColor;
exports.borderRightColor = borderRightColor;
exports.borderBottomColor = borderBottomColor;
exports.borderLeftColor = borderLeftColor;
exports.borderStyle = borderStyle;
exports.borderStyle2 = borderStyle2;
exports.borderStyle3 = borderStyle3;
exports.borderStyle4 = borderStyle4;
exports.borderWidth = borderWidth;
exports.borderWidth2 = borderWidth2;
exports.borderWidth3 = borderWidth3;
exports.borderWidth4 = borderWidth4;
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
exports.margin = margin;
exports.margin2 = margin2;
exports.margin3 = margin3;
exports.margin4 = margin4;
exports.marginTop = marginTop;
exports.marginRight = marginRight;
exports.marginBottom = marginBottom;
exports.marginLeft = marginLeft;
/* No side effect */
