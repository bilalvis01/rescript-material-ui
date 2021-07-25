// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Belt_Array = require("rescript/lib/js/belt_Array.js");

function concat(v, cb) {
  var match = v.VAL;
  return Curry._1(cb, match[0]) + " " + Curry._1(cb, match[1]);
}

function join(v, cb) {
  var match = v.VAL;
  return Curry._1(cb, match[0]) + ", " + Curry._1(cb, match[1]);
}

function stick(v, cb) {
  var match = v.VAL;
  return Curry._1(cb, match[0]) + " / " + Curry._1(cb, match[1]);
}

function concatMany(v, cb) {
  return Belt_Array.reduce(v.VAL, "", (function (acc, item) {
                if (acc.length === 0) {
                  return Curry._1(cb, item);
                } else {
                  return acc + " " + Curry._1(cb, item);
                }
              }));
}

function joinMany(v, cb) {
  return Belt_Array.reduce(v.VAL, "", (function (acc, item) {
                if (acc.length === 0) {
                  return Curry._1(cb, item);
                } else {
                  return acc + ", " + Curry._1(cb, item);
                }
              }));
}

function stickMany(v, cb) {
  return Belt_Array.reduce(v.VAL, "", (function (acc, item) {
                if (acc.length === 0) {
                  return Curry._1(cb, item);
                } else {
                  return acc + " / " + Curry._1(cb, item);
                }
              }));
}

function string(v) {
  return "\"" + v.VAL + "\"";
}

function num(v) {
  return String(v);
}

function number(v) {
  return String(v.VAL);
}

function $$int(v) {
  return String(v);
}

function integer(v) {
  return String(v.VAL);
}

function pct(v) {
  return String(v) + "%";
}

function percentage(v) {
  return String(v.VAL) + "%";
}

function ratio(v) {
  var match = v.VAL;
  return String(match[0]) + "/" + String(match[1]);
}

function fr(v) {
  return String(v) + "fr";
}

function flexUnit(v) {
  return String(v.VAL) + "fr";
}

function ch(l) {
  return String(l) + "ch";
}

function em(l) {
  return String(l) + "em";
}

function ex(l) {
  return String(l) + "ex";
}

function rem(l) {
  return String(l) + "rem";
}

function vh(l) {
  return String(l) + "vh";
}

function vw(l) {
  return String(l) + "vw";
}

function vmin(l) {
  return String(l) + "vmin";
}

function vmax(l) {
  return String(l) + "vmax";
}

function px(l) {
  return String(l) + "px";
}

function cm(l) {
  return String(l) + "cm";
}

function mm(l) {
  return String(l) + "mm";
}

function inch(l) {
  return String(l) + "in";
}

function pc(l) {
  return String(l) + "pc";
}

function pt(l) {
  return String(l) + "pt";
}

function length(v) {
  var variant = v.NAME;
  if (variant === "vmax") {
    return String(v.VAL) + "vmax";
  } else if (variant === "vmin") {
    return String(v.VAL) + "vmin";
  } else if (variant === "ch") {
    return String(v.VAL) + "ch";
  } else if (variant === "cm") {
    return String(v.VAL) + "cm";
  } else if (variant === "em") {
    return String(v.VAL) + "em";
  } else if (variant === "ex") {
    return String(v.VAL) + "ex";
  } else if (variant === "mm") {
    return String(v.VAL) + "mm";
  } else if (variant === "pc") {
    return String(v.VAL) + "pc";
  } else if (variant === "pt") {
    return String(v.VAL) + "pt";
  } else if (variant === "px") {
    return String(v.VAL) + "px";
  } else if (variant === "vh") {
    return String(v.VAL) + "vh";
  } else if (variant === "vw") {
    return String(v.VAL) + "vw";
  } else if (variant === "rem") {
    return String(v.VAL) + "rem";
  } else {
    return String(v.VAL) + "in";
  }
}

function deg(v) {
  return String(v) + "deg";
}

function grad(v) {
  return String(v) + "grad";
}

function rad(v) {
  return String(v) + "rad";
}

function turn(v) {
  return String(v) + "turn";
}

function angle(v) {
  var variant = v.NAME;
  if (variant === "turn") {
    return String(v.VAL) + "turn";
  } else if (variant === "deg") {
    return String(v.VAL) + "deg";
  } else if (variant === "rad") {
    return String(v.VAL) + "rad";
  } else {
    return String(v.VAL) + "grad";
  }
}

function s(v) {
  return String(v) + "s";
}

function ms(v) {
  return String(v) + "ms";
}

function time(v) {
  if (v.NAME === "ms") {
    return String(v.VAL) + "ms";
  } else {
    return String(v.VAL) + "s";
  }
}

function hz(v) {
  return String(v) + "Hz";
}

function kHz(v) {
  return String(v) + "kHz";
}

function frequency(v) {
  if (v.NAME === "kHz") {
    return String(v.VAL) + "kHz";
  } else {
    return String(v.VAL) + "Hz";
  }
}

function dpi(v) {
  return String(v) + "dpi";
}

function dpcm(v) {
  return String(v) + "dpcm";
}

function dppx(v) {
  return String(v) + "dppx";
}

function x(v) {
  return String(v) + "x";
}

function resolution(v) {
  var variant = v.NAME;
  if (variant === "dppx") {
    return String(v.VAL) + "dppx";
  } else if (variant === "x") {
    return String(v.VAL) + "x";
  } else if (variant === "dpi") {
    return String(v.VAL) + "dpi";
  } else {
    return String(v.VAL) + "dpcm";
  }
}

function length_percentage(v) {
  if (v.NAME === "pct") {
    return percentage(v);
  } else {
    return length(v);
  }
}

function frequency_percentage(v) {
  if (v.NAME === "pct") {
    return percentage(v);
  } else {
    return frequency(v);
  }
}

function angle_percentage(v) {
  if (v.NAME === "pct") {
    return percentage(v);
  } else {
    return angle(v);
  }
}

function time_percentage(v) {
  if (v.NAME === "pct") {
    return percentage(v);
  } else {
    return time(v);
  }
}

function scalar(v) {
  var variant = v.NAME;
  if (variant === "integer" || variant === "number") {
    return String(v.VAL);
  } else {
    return string(v);
  }
}

function lineWidth(v) {
  if (typeof v === "object") {
    return length(v);
  } else if (v === "medium") {
    return "medium";
  } else if (v === "thick") {
    return "thick";
  } else {
    return "thin";
  }
}

function hue(v) {
  if (typeof v === "object") {
    if (v.NAME === "number") {
      return String(v.VAL);
    } else {
      return angle(v);
    }
  } else {
    return String(v);
  }
}

function alpha(v) {
  if (v.NAME === "number") {
    return String(v.VAL);
  } else {
    return percentage(v);
  }
}

function rgbParam(v) {
  if (typeof v === "object") {
    if (v.NAME === "number") {
      return String(v.VAL);
    } else {
      return percentage(v);
    }
  } else {
    return String(v);
  }
}

function hsl(v1, v2, v3) {
  return "hsl(" + hue(v1) + ", " + percentage(v2) + ", " + percentage(v3) + ")";
}

function hsla(v1, v2, v3, v4) {
  return "hsla(" + hue(v1) + ", " + percentage(v2) + ", " + percentage(v3) + ", " + alpha(v4) + ")";
}

function rgb(v1, v2, v3) {
  return "rgb(" + rgbParam(v1) + ", " + rgbParam(v2) + ", " + rgbParam(v3) + ")";
}

function rgba(v1, v2, v3, v4) {
  return "rgba(" + rgbParam(v1) + ", " + rgbParam(v2) + ", " + rgbParam(v3) + ", " + alpha(v4) + ")";
}

function rgbX(v) {
  return "#" + v;
}

function color(v) {
  if (typeof v !== "object") {
    return v;
  }
  var variant = v.NAME;
  if (variant === "rgbX") {
    return "#" + v.VAL;
  }
  if (variant === "rgba") {
    var match = v.VAL;
    return rgba(match[0], match[1], match[2], match[3]);
  }
  if (variant === "hsl") {
    var match$1 = v.VAL;
    return hsl(match$1[0], match$1[1], match$1[2]);
  }
  if (variant === "rgb") {
    var match$2 = v.VAL;
    return rgb(match$2[0], match$2[1], match$2[2]);
  }
  var match$3 = v.VAL;
  return hsla(match$3[0], match$3[1], match$3[2], match$3[3]);
}

function gradientLineDirection(v) {
  if (typeof v === "object") {
    return angle(v);
  } else {
    return v;
  }
}

function linearColorStop(v) {
  if (typeof v !== "object") {
    return color(v);
  }
  var variant = v.NAME;
  if (variant === "rem" || variant === "pct" || variant === "vw" || variant === "vh" || variant === "px" || variant === "pt" || variant === "pc" || variant === "mm" || variant === "ex" || variant === "em" || variant === "cm" || variant === "ch" || variant === "vmin" || variant === "vmax" || variant === "inch") {
    return length_percentage(v);
  }
  if (variant === "linearColorStop2") {
    var match = v.VAL;
    return color(match[0]) + " " + length_percentage(match[1]);
  }
  if (variant !== "linearColorStop3") {
    return color(v);
  }
  var match$1 = v.VAL;
  return color(match$1[0]) + " " + length_percentage(match$1[1]) + " " + length_percentage(match$1[2]);
}

function linearGradient(v) {
  var variant = v.NAME;
  var arg;
  if (variant === "linearGradient3") {
    var match = v.VAL;
    var d = match[0];
    arg = d !== undefined ? gradientLineDirection(d) + ", " + linearColorStop(match[1]) + ", " + linearColorStop(match[2]) + ", " + linearColorStop(match[3]) : linearColorStop(match[1]) + ", " + linearColorStop(match[2]) + ", " + linearColorStop(match[3]);
  } else if (variant === "linearGradient4") {
    var match$1 = v.VAL;
    var d$1 = match$1[0];
    arg = d$1 !== undefined ? gradientLineDirection(d$1) + ", " + linearColorStop(match$1[1]) + ", " + linearColorStop(match$1[2]) + ", " + linearColorStop(match$1[3]) + ", " + linearColorStop(match$1[4]) : linearColorStop(match$1[1]) + ", " + linearColorStop(match$1[2]) + ", " + linearColorStop(match$1[3]) + ", " + linearColorStop(match$1[4]);
  } else if (variant === "linearGradient") {
    var match$2 = v.VAL;
    var d$2 = match$2[0];
    arg = d$2 !== undefined ? gradientLineDirection(d$2) + ", " + linearColorStop(match$2[1]) : linearColorStop(match$2[1]);
  } else {
    var match$3 = v.VAL;
    var d$3 = match$3[0];
    arg = d$3 !== undefined ? gradientLineDirection(d$3) + ", " + linearColorStop(match$3[1]) + ", " + linearColorStop(match$3[2]) : linearColorStop(match$3[1]) + ", " + linearColorStop(match$3[2]);
  }
  return "linear-gradient(" + arg + ")";
}

var gradient = linearGradient;

function url(v) {
  return "url(" + v.VAL + ")";
}

var imageSrc = url;

function image(v) {
  var imageSrcOrColor = function (v) {
    if (typeof v === "object") {
      if (v.NAME === "url") {
        return "image(" + imageSrc(v) + ")";
      } else {
        return "image(" + color(v) + ")";
      }
    } else {
      return "image(" + color(v) + ")";
    }
  };
  var variant = v.NAME;
  if (variant === "image3") {
    var match = v.VAL;
    return "image(" + match[0] + " " + imageSrc(match[1]) + ", " + color(match[2]) + ")";
  }
  if (variant === "url") {
    return imageSrc(v);
  }
  if (variant === "linearGradient" || variant === "linearGradient4" || variant === "linearGradient3" || variant === "linearGradient2") {
    return linearGradient(v);
  }
  if (variant === "image") {
    return "image(" + imageSrcOrColor(v.VAL) + ")";
  }
  var match$1 = v.VAL;
  return "image(" + match$1[0] + " " + imageSrcOrColor(match$1[1]) + ")";
}

exports.concat = concat;
exports.join = join;
exports.stick = stick;
exports.concatMany = concatMany;
exports.joinMany = joinMany;
exports.stickMany = stickMany;
exports.string = string;
exports.num = num;
exports.number = number;
exports.$$int = $$int;
exports.integer = integer;
exports.pct = pct;
exports.percentage = percentage;
exports.ratio = ratio;
exports.fr = fr;
exports.flexUnit = flexUnit;
exports.ch = ch;
exports.em = em;
exports.ex = ex;
exports.rem = rem;
exports.vh = vh;
exports.vw = vw;
exports.vmin = vmin;
exports.vmax = vmax;
exports.px = px;
exports.cm = cm;
exports.mm = mm;
exports.inch = inch;
exports.pc = pc;
exports.pt = pt;
exports.length = length;
exports.s = s;
exports.ms = ms;
exports.time = time;
exports.deg = deg;
exports.grad = grad;
exports.rad = rad;
exports.turn = turn;
exports.angle = angle;
exports.hz = hz;
exports.kHz = kHz;
exports.frequency = frequency;
exports.dpi = dpi;
exports.dpcm = dpcm;
exports.dppx = dppx;
exports.x = x;
exports.resolution = resolution;
exports.length_percentage = length_percentage;
exports.frequency_percentage = frequency_percentage;
exports.angle_percentage = angle_percentage;
exports.time_percentage = time_percentage;
exports.scalar = scalar;
exports.lineWidth = lineWidth;
exports.hue = hue;
exports.alpha = alpha;
exports.rgbParam = rgbParam;
exports.hsl = hsl;
exports.hsla = hsla;
exports.rgb = rgb;
exports.rgba = rgba;
exports.rgbX = rgbX;
exports.color = color;
exports.gradientLineDirection = gradientLineDirection;
exports.linearColorStop = linearColorStop;
exports.linearGradient = linearGradient;
exports.gradient = gradient;
exports.url = url;
exports.imageSrc = imageSrc;
exports.image = image;
/* No side effect */
