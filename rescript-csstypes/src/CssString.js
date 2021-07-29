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

function transformOrigin(v) {
  var xToString = function (x) {
    if (typeof x === "object") {
      return length_percentage(x);
    } else if (x === "right") {
      return "right";
    } else if (x === "center") {
      return "center";
    } else {
      return "left";
    }
  };
  var yToString = function (y) {
    if (typeof y === "object") {
      return length_percentage(y);
    } else if (y === "top") {
      return "top";
    } else if (y === "center") {
      return "center";
    } else {
      return "bottom";
    }
  };
  if (typeof v !== "object") {
    if (v === "bottom") {
      return "bottom";
    } else if (v === "right") {
      return "right";
    } else if (v === "top") {
      return "top";
    } else if (v === "center") {
      return "center";
    } else {
      return "left";
    }
  }
  if (v.NAME !== "transformOrigin2") {
    return length_percentage(v);
  }
  var match = v.VAL;
  var l = match[2];
  var y = match[1];
  var x = match[0];
  if (l !== undefined) {
    return xToString(x) + " " + yToString(y) + " " + length(l);
  } else {
    return xToString(x) + " " + yToString(y);
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

function bgSize(v) {
  var autoOrLength = function (v) {
    if (typeof v === "object") {
      return length_percentage(v);
    } else {
      return "auto";
    }
  };
  if (typeof v !== "object") {
    if (v === "cover") {
      return "cover";
    } else if (v === "contain") {
      return "contain";
    } else {
      return "auto";
    }
  }
  if (v.NAME !== "bgSize2") {
    return length_percentage(v);
  }
  var match = v.VAL;
  return autoOrLength(match[0]) + " " + autoOrLength(match[1]);
}

function position(v) {
  if (typeof v !== "object") {
    if (v === "bottom") {
      return "bottom";
    } else if (v === "right") {
      return "right";
    } else if (v === "top") {
      return "top";
    } else if (v === "center") {
      return "center";
    } else {
      return "left";
    }
  }
  var variant = v.NAME;
  if (variant === "position2") {
    var match = v.VAL;
    var v2 = match[1];
    var v1 = match[0];
    var v1$1 = typeof v1 === "object" ? length_percentage(v1) : (
        v1 === "right" ? "right" : (
            v1 === "center" ? "center" : "left"
          )
      );
    var v2$1 = typeof v2 === "object" ? length_percentage(v2) : (
        v2 === "top" ? "top" : (
            v2 === "center" ? "center" : "bottom"
          )
      );
    return v1$1 + " " + v2$1;
  }
  if (variant === "position3") {
    var match$1 = v.VAL;
    var v3 = match$1[2];
    var v2$2 = match$1[1];
    var v1$2 = match$1[0];
    var v1$3 = v1$2 === "right" ? "right" : (
        v1$2 === "center" ? "center" : "left"
      );
    var v2$3 = typeof v2$2 === "object" ? length_percentage(v2$2) : (
        v2$2 === "top" ? "top" : "bottom"
      );
    var v3$1 = typeof v3 === "object" ? length_percentage(v3) : (
        v3 === "top" ? "top" : (
            v3 === "center" ? "center" : "bottom"
          )
      );
    return v1$3 + " " + v2$3 + " " + v3$1;
  }
  if (variant !== "position4") {
    return length_percentage(v);
  }
  var match$2 = v.VAL;
  var v1$4 = match$2[0] === "right" ? "right" : "left";
  var v3$2 = match$2[2] === "top" ? "top" : "bottom";
  return v1$4 + " " + length_percentage(match$2[1]) + " " + v3$2 + " " + length_percentage(match$2[3]);
}

function gradientLineAngle(v) {
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

function linearGradient_(angle, linearColorStop) {
  if (angle !== undefined) {
    return gradientLineAngle(angle) + ", " + linearColorStop;
  } else {
    return linearColorStop;
  }
}

function linearGradient(v) {
  var variant = v.NAME;
  var arg;
  if (variant === "linearGradient3") {
    var match = v.VAL;
    arg = linearGradient_(match[0], linearColorStop(match[1]) + ", " + linearColorStop(match[2]) + ", " + linearColorStop(match[3]));
  } else if (variant === "linearGradient4") {
    var match$1 = v.VAL;
    arg = linearGradient_(match$1[0], linearColorStop(match$1[1]) + ", " + linearColorStop(match$1[2]) + ", " + linearColorStop(match$1[3]) + ", " + linearColorStop(match$1[4]));
  } else if (variant === "linearGradient") {
    var match$2 = v.VAL;
    arg = linearGradient_(match$2[0], linearColorStop(match$2[1]));
  } else {
    var match$3 = v.VAL;
    arg = linearGradient_(match$3[0], linearColorStop(match$3[1]) + ", " + linearColorStop(match$3[2]));
  }
  return "linear-gradient(" + arg + ")";
}

function repeatingLinearGradient(v) {
  var variant = v.NAME;
  var arg;
  if (variant === "repeatingLinearGradient2") {
    var match = v.VAL;
    arg = linearGradient_(match[0], linearColorStop(match[1]) + ", " + linearColorStop(match[2]));
  } else if (variant === "repeatingLinearGradient3") {
    var match$1 = v.VAL;
    arg = linearGradient_(match$1[0], linearColorStop(match$1[1]) + ", " + linearColorStop(match$1[2]) + ", " + linearColorStop(match$1[3]));
  } else if (variant === "repeatingLinearGradient4") {
    var match$2 = v.VAL;
    arg = linearGradient_(match$2[0], linearColorStop(match$2[1]) + ", " + linearColorStop(match$2[2]) + ", " + linearColorStop(match$2[3]) + ", " + linearColorStop(match$2[4]));
  } else {
    var match$3 = v.VAL;
    arg = linearGradient_(match$3[0], linearColorStop(match$3[1]));
  }
  return "repeating-linear-gradient(" + arg + ")";
}

function radialGradientSize(v) {
  if (typeof v !== "object") {
    if (v === "farthest-side") {
      return "farthest-side";
    } else if (v === "closest-side") {
      return "closest-side";
    } else if (v === "farthest-corner") {
      return "farthes-corner";
    } else {
      return "closest-corner";
    }
  }
  if (v.NAME !== "ellipse") {
    return length(v);
  }
  var match = v.VAL;
  return length_percentage(match[0]) + " " + length_percentage(match[1]);
}

function radialGradientPosition(v) {
  if (typeof v === "object" && v.NAME === "transformOrigin2") {
    return transformOrigin(v);
  } else {
    return position(v);
  }
}

function radialGradientEndingShape(position, endingShape, size) {
  var endingShape$1;
  if (endingShape !== undefined) {
    if (size !== undefined) {
      if (endingShape === "ellipse") {
        if (typeof size === "object") {
          var variant = size.NAME;
          endingShape$1 = variant === "rem" || variant === "vw" || variant === "vh" || variant === "px" || variant === "pt" || variant === "pc" || variant === "mm" || variant === "ex" || variant === "em" || variant === "cm" || variant === "ch" || variant === "vmin" || variant === "vmax" || variant === "inch" ? "ellipse" : "ellipse " + radialGradientSize(size);
        } else {
          endingShape$1 = "ellipse " + radialGradientSize(size);
        }
      } else {
        endingShape$1 = typeof size === "object" ? (
            size.NAME === "ellipse" ? "circle" : "circle " + radialGradientSize(size)
          ) : "circle " + radialGradientSize(size);
      }
    } else {
      endingShape$1 = endingShape;
    }
  } else if (size !== undefined) {
    if (typeof size === "object") {
      var variant$1 = size.NAME;
      endingShape$1 = variant$1 === "rem" || variant$1 === "vw" || variant$1 === "vh" || variant$1 === "px" || variant$1 === "pt" || variant$1 === "pc" || variant$1 === "mm" || variant$1 === "ex" || variant$1 === "em" || variant$1 === "cm" || variant$1 === "ch" || variant$1 === "vmin" || variant$1 === "vmax" || variant$1 === "inch" ? undefined : radialGradientSize(size);
    } else {
      endingShape$1 = radialGradientSize(size);
    }
  } else {
    endingShape$1 = undefined;
  }
  if (endingShape$1 !== undefined) {
    if (position !== undefined) {
      return endingShape$1 + " at " + radialGradientPosition(position);
    } else {
      return endingShape$1;
    }
  } else if (position !== undefined) {
    return "at " + radialGradientPosition(position);
  } else {
    return ;
  }
}

function radialGradient_(endingShape, linearColorStop) {
  if (endingShape !== undefined) {
    return endingShape + ", " + linearColorStop;
  } else {
    return linearColorStop;
  }
}

function radialGradient(v) {
  var variant = v.NAME;
  var arg;
  if (variant === "radialGradient2") {
    var match = v.VAL;
    arg = radialGradient_(radialGradientEndingShape(match[0], match[1], match[2]), linearColorStop(match[3]) + ", " + linearColorStop(match[4]));
  } else if (variant === "radialGradient3") {
    var match$1 = v.VAL;
    arg = radialGradient_(radialGradientEndingShape(match$1[0], match$1[1], match$1[2]), linearColorStop(match$1[3]) + ", " + linearColorStop(match$1[4]) + ", " + linearColorStop(match$1[5]));
  } else if (variant === "radialGradient4") {
    var match$2 = v.VAL;
    arg = radialGradient_(radialGradientEndingShape(match$2[0], match$2[1], match$2[2]), linearColorStop(match$2[3]) + ", " + linearColorStop(match$2[4]) + ", " + linearColorStop(match$2[5]) + ", " + linearColorStop(match$2[6]));
  } else {
    var match$3 = v.VAL;
    arg = radialGradient_(radialGradientEndingShape(match$3[0], match$3[1], match$3[2]), linearColorStop(match$3[3]));
  }
  return "radial-gradient(" + arg + ")";
}

function repeatingRadialGradient(v) {
  var variant = v.NAME;
  var arg;
  if (variant === "repeatingRadialGradient2") {
    var match = v.VAL;
    arg = radialGradient_(radialGradientEndingShape(match[0], match[1], match[2]), linearColorStop(match[3]) + ", " + linearColorStop(match[4]));
  } else if (variant === "repeatingRadialGradient3") {
    var match$1 = v.VAL;
    arg = radialGradient_(radialGradientEndingShape(match$1[0], match$1[1], match$1[2]), linearColorStop(match$1[3]) + ", " + linearColorStop(match$1[4]) + ", " + linearColorStop(match$1[5]));
  } else if (variant === "repeatingRadialGradient4") {
    var match$2 = v.VAL;
    arg = radialGradient_(radialGradientEndingShape(match$2[0], match$2[1], match$2[2]), linearColorStop(match$2[3]) + ", " + linearColorStop(match$2[4]) + ", " + linearColorStop(match$2[5]) + ", " + linearColorStop(match$2[6]));
  } else {
    var match$3 = v.VAL;
    arg = radialGradient_(radialGradientEndingShape(match$3[0], match$3[1], match$3[2]), linearColorStop(match$3[3]));
  }
  return "repeating-radial-gradient(" + arg + ")";
}

function conicGradientAngle(angle, pos) {
  if (angle !== undefined) {
    if (pos !== undefined) {
      return "from " + gradientLineAngle(angle) + " at " + position(pos);
    } else {
      return "from " + gradientLineAngle(angle);
    }
  } else if (pos !== undefined) {
    return "at " + position(pos);
  } else {
    return ;
  }
}

function conicGradient_(angle, linearColorStop) {
  if (angle !== undefined) {
    return angle + ", " + linearColorStop;
  } else {
    return linearColorStop;
  }
}

function conicGradient(v) {
  var variant = v.NAME;
  var arg;
  if (variant === "conicGradient2") {
    var match = v.VAL;
    arg = conicGradient_(conicGradientAngle(match[0], match[1]), linearColorStop(match[2]) + ", " + linearColorStop(match[3]));
  } else if (variant === "conicGradient3") {
    var match$1 = v.VAL;
    arg = conicGradient_(conicGradientAngle(match$1[0], match$1[1]), linearColorStop(match$1[2]) + ", " + linearColorStop(match$1[3]) + ", " + linearColorStop(match$1[4]));
  } else if (variant === "conicGradient4") {
    var match$2 = v.VAL;
    arg = conicGradient_(conicGradientAngle(match$2[0], match$2[1]), linearColorStop(match$2[2]) + ", " + linearColorStop(match$2[3]) + ", " + linearColorStop(match$2[4]) + ", " + linearColorStop(match$2[5]));
  } else {
    var match$3 = v.VAL;
    arg = conicGradient_(conicGradientAngle(match$3[0], match$3[1]), linearColorStop(match$3[2]));
  }
  return "conic-gradient(" + arg + ")";
}

function repeatingConicGradient(v) {
  var variant = v.NAME;
  var arg;
  if (variant === "repeatingConicGradient3") {
    var match = v.VAL;
    arg = conicGradient_(conicGradientAngle(match[0], match[1]), linearColorStop(match[2]) + ", " + linearColorStop(match[3]) + ", " + linearColorStop(match[4]));
  } else if (variant === "repeatingConicGradient4") {
    var match$1 = v.VAL;
    arg = conicGradient_(conicGradientAngle(match$1[0], match$1[1]), linearColorStop(match$1[2]) + ", " + linearColorStop(match$1[3]) + ", " + linearColorStop(match$1[4]) + ", " + linearColorStop(match$1[5]));
  } else if (variant === "repeatingConicGradient") {
    var match$2 = v.VAL;
    arg = conicGradient_(conicGradientAngle(match$2[0], match$2[1]), linearColorStop(match$2[2]));
  } else {
    var match$3 = v.VAL;
    arg = conicGradient_(conicGradientAngle(match$3[0], match$3[1]), linearColorStop(match$3[2]) + ", " + linearColorStop(match$3[3]));
  }
  return "repeating-conic-gradient(" + arg + ")";
}

function gradient(v) {
  var variant = v.NAME;
  if (variant === "conicGradient4" || variant === "conicGradient3" || variant === "conicGradient2" || variant === "conicGradient") {
    return conicGradient(v);
  } else if (variant === "repeatingRadialGradient4" || variant === "repeatingRadialGradient3" || variant === "repeatingRadialGradient2" || variant === "repeatingRadialGradient") {
    return repeatingRadialGradient(v);
  } else if (variant === "repeatingLinearGradient4" || variant === "repeatingLinearGradient3" || variant === "repeatingLinearGradient2" || variant === "repeatingLinearGradient") {
    return repeatingLinearGradient(v);
  } else if (variant === "linearGradient" || variant === "linearGradient4" || variant === "linearGradient3" || variant === "linearGradient2") {
    return linearGradient(v);
  } else if (variant === "radialGradient4" || variant === "radialGradient3" || variant === "radialGradient2" || variant === "radialGradient") {
    return radialGradient(v);
  } else {
    return repeatingConicGradient(v);
  }
}

function url(v) {
  return "url(\"" + v.VAL + "\")";
}

function imageSrc(v) {
  if (v.NAME === "url") {
    return url(v);
  } else {
    return "\"" + v.VAL + "\"";
  }
}

function image(v) {
  var variant = v.NAME;
  if (variant === "url" || variant === "src") {
    return imageSrc(v);
  }
  if (variant !== "image") {
    return gradient(v);
  }
  var match = v.VAL;
  var t = match[0];
  if (t !== undefined) {
    var c = match[1];
    var c$1 = match[2];
    var exit = 0;
    if (typeof c$1 === "object") {
      var variant$1 = c$1.NAME;
      if (variant$1 === "rgb" || variant$1 === "hsl" || variant$1 === "rgba" || variant$1 === "rgbX" || variant$1 === "hsla") {
        exit = 2;
      }
      
    } else if (c$1 === "olivedrab" || c$1 === "paleturquoise" || c$1 === "sandybrown" || c$1 === "maroon" || c$1 === "brown" || c$1 === "moccasin" || c$1 === "lightcoral" || c$1 === "silver" || c$1 === "honeydew" || c$1 === "ghostwhite" || c$1 === "black" || c$1 === "sienna" || c$1 === "powderblue" || c$1 === "cornflowerblue" || c$1 === "olive" || c$1 === "beige" || c$1 === "thistle" || c$1 === "darkorchid" || c$1 === "azure" || c$1 === "darkorange" || c$1 === "mediumslateblue" || c$1 === "saddlebrown" || c$1 === "limegreen" || c$1 === "goldenrod" || c$1 === "transparent" || c$1 === "mediumseagreen" || c$1 === "firebrick" || c$1 === "floralwhite" || c$1 === "lightslategrey" || c$1 === "lightslategray" || c$1 === "fuchsia" || c$1 === "chocolate" || c$1 === "royalblue" || c$1 === "salmon" || c$1 === "yellowgreen" || c$1 === "aliceblue" || c$1 === "green" || c$1 === "darkmagenta" || c$1 === "aquamarine" || c$1 === "darkolivegreen" || c$1 === "mediumorchid" || c$1 === "rebeccapurple" || c$1 === "mediumvioletred" || c$1 === "lightsteelblue" || c$1 === "indigo" || c$1 === "turquoise" || c$1 === "lawngreen" || c$1 === "blueviolet" || c$1 === "tomato" || c$1 === "oldlace" || c$1 === "burlywood" || c$1 === "currentColor" || c$1 === "springgreen" || c$1 === "magenta" || c$1 === "darkgray" || c$1 === "darkgoldenrod" || c$1 === "gainsboro" || c$1 === "darkcyan" || c$1 === "darkblue" || c$1 === "lightgreen" || c$1 === "chartreuse" || c$1 === "navajowhite" || c$1 === "palevioletred" || c$1 === "rosybrown" || c$1 === "lavender" || c$1 === "darksalmon" || c$1 === "tan" || c$1 === "red" || c$1 === "lightyellow" || c$1 === "darkturquoise" || c$1 === "palegreen" || c$1 === "seagreen" || c$1 === "darkgreen" || c$1 === "lightskyblue" || c$1 === "indianred" || c$1 === "linen" || c$1 === "greenyellow" || c$1 === "slategrey" || c$1 === "slategray" || c$1 === "darkred" || c$1 === "purple" || c$1 === "bisque" || c$1 === "slateblue" || c$1 === "lightseagreen" || c$1 === "dodgerblue" || c$1 === "violet" || c$1 === "midnightblue" || c$1 === "cadetblue" || c$1 === "deeppink" || c$1 === "steelblue" || c$1 === "crimson" || c$1 === "oranngered" || c$1 === "skyblue" || c$1 === "forestgreen" || c$1 === "lemonchiffon" || c$1 === "khaki" || c$1 === "papayawhip" || c$1 === "seashell" || c$1 === "darkslategrey" || c$1 === "darkslategray" || c$1 === "peachpuff" || c$1 === "cornsilk" || c$1 === "antiquewhite" || c$1 === "hotpink" || c$1 === "blanchedalmond" || c$1 === "darkslateblue" || c$1 === "lightgoldenrodyellow" || c$1 === "lightpink" || c$1 === "deepskyblue" || c$1 === "mediumspringgreen" || c$1 === "lightgrey" || c$1 === "lightgray" || c$1 === "mintcream" || c$1 === "darkviolet" || c$1 === "yellow" || c$1 === "lightcyan" || c$1 === "lightblue" || c$1 === "mediumturquoise" || c$1 === "mistyrose" || c$1 === "teal" || c$1 === "lightsalmon" || c$1 === "snow" || c$1 === "palegoldenrod" || c$1 === "darkseagreen" || c$1 === "mediumblue" || c$1 === "coral" || c$1 === "plum" || c$1 === "pink" || c$1 === "peru" || c$1 === "white" || c$1 === "wheat" || c$1 === "navy" || c$1 === "lavenderblush" || c$1 === "lime" || c$1 === "orchid" || c$1 === "orange" || c$1 === "grey" || c$1 === "gray" || c$1 === "gold" || c$1 === "whitesmoke" || c$1 === "ivory" || c$1 === "mediumpurple" || c$1 === "mediumaquamarine" || c$1 === "cyan" || c$1 === "blue" || c$1 === "dimgrey" || c$1 === "dimgray" || c$1 === "aqua" || c$1 === "darkkhaki") {
      exit = 2;
    }
    if (exit === 2) {
      return "image(" + t + " " + color(c$1) + ")";
    }
    if (c !== undefined) {
      return "image(" + t + " " + imageSrc(match[2]) + ", " + color(c) + ")";
    } else {
      return "image(" + t + " " + imageSrc(match[2]) + ")";
    }
  }
  var c$2 = match[1];
  var c$3 = match[2];
  if (typeof c$3 === "object") {
    var variant$2 = c$3.NAME;
    if (variant$2 === "rgb" || variant$2 === "hsl" || variant$2 === "rgba" || variant$2 === "rgbX" || variant$2 === "hsla") {
      return "image(" + color(c$3) + ")";
    }
    
  } else if (c$3 === "olivedrab" || c$3 === "paleturquoise" || c$3 === "sandybrown" || c$3 === "maroon" || c$3 === "brown" || c$3 === "moccasin" || c$3 === "lightcoral" || c$3 === "silver" || c$3 === "honeydew" || c$3 === "ghostwhite" || c$3 === "black" || c$3 === "sienna" || c$3 === "powderblue" || c$3 === "cornflowerblue" || c$3 === "olive" || c$3 === "beige" || c$3 === "thistle" || c$3 === "darkorchid" || c$3 === "azure" || c$3 === "darkorange" || c$3 === "mediumslateblue" || c$3 === "saddlebrown" || c$3 === "limegreen" || c$3 === "goldenrod" || c$3 === "transparent" || c$3 === "mediumseagreen" || c$3 === "firebrick" || c$3 === "floralwhite" || c$3 === "lightslategrey" || c$3 === "lightslategray" || c$3 === "fuchsia" || c$3 === "chocolate" || c$3 === "royalblue" || c$3 === "salmon" || c$3 === "yellowgreen" || c$3 === "aliceblue" || c$3 === "green" || c$3 === "darkmagenta" || c$3 === "aquamarine" || c$3 === "darkolivegreen" || c$3 === "mediumorchid" || c$3 === "rebeccapurple" || c$3 === "mediumvioletred" || c$3 === "lightsteelblue" || c$3 === "indigo" || c$3 === "turquoise" || c$3 === "lawngreen" || c$3 === "blueviolet" || c$3 === "tomato" || c$3 === "oldlace" || c$3 === "burlywood" || c$3 === "currentColor" || c$3 === "springgreen" || c$3 === "magenta" || c$3 === "darkgray" || c$3 === "darkgoldenrod" || c$3 === "gainsboro" || c$3 === "darkcyan" || c$3 === "darkblue" || c$3 === "lightgreen" || c$3 === "chartreuse" || c$3 === "navajowhite" || c$3 === "palevioletred" || c$3 === "rosybrown" || c$3 === "lavender" || c$3 === "darksalmon" || c$3 === "tan" || c$3 === "red" || c$3 === "lightyellow" || c$3 === "darkturquoise" || c$3 === "palegreen" || c$3 === "seagreen" || c$3 === "darkgreen" || c$3 === "lightskyblue" || c$3 === "indianred" || c$3 === "linen" || c$3 === "greenyellow" || c$3 === "slategrey" || c$3 === "slategray" || c$3 === "darkred" || c$3 === "purple" || c$3 === "bisque" || c$3 === "slateblue" || c$3 === "lightseagreen" || c$3 === "dodgerblue" || c$3 === "violet" || c$3 === "midnightblue" || c$3 === "cadetblue" || c$3 === "deeppink" || c$3 === "steelblue" || c$3 === "crimson" || c$3 === "oranngered" || c$3 === "skyblue" || c$3 === "forestgreen" || c$3 === "lemonchiffon" || c$3 === "khaki" || c$3 === "papayawhip" || c$3 === "seashell" || c$3 === "darkslategrey" || c$3 === "darkslategray" || c$3 === "peachpuff" || c$3 === "cornsilk" || c$3 === "antiquewhite" || c$3 === "hotpink" || c$3 === "blanchedalmond" || c$3 === "darkslateblue" || c$3 === "lightgoldenrodyellow" || c$3 === "lightpink" || c$3 === "deepskyblue" || c$3 === "mediumspringgreen" || c$3 === "lightgrey" || c$3 === "lightgray" || c$3 === "mintcream" || c$3 === "darkviolet" || c$3 === "yellow" || c$3 === "lightcyan" || c$3 === "lightblue" || c$3 === "mediumturquoise" || c$3 === "mistyrose" || c$3 === "teal" || c$3 === "lightsalmon" || c$3 === "snow" || c$3 === "palegoldenrod" || c$3 === "darkseagreen" || c$3 === "mediumblue" || c$3 === "coral" || c$3 === "plum" || c$3 === "pink" || c$3 === "peru" || c$3 === "white" || c$3 === "wheat" || c$3 === "navy" || c$3 === "lavenderblush" || c$3 === "lime" || c$3 === "orchid" || c$3 === "orange" || c$3 === "grey" || c$3 === "gray" || c$3 === "gold" || c$3 === "whitesmoke" || c$3 === "ivory" || c$3 === "mediumpurple" || c$3 === "mediumaquamarine" || c$3 === "cyan" || c$3 === "blue" || c$3 === "dimgrey" || c$3 === "dimgray" || c$3 === "aqua" || c$3 === "darkkhaki") {
    return "image(" + color(c$3) + ")";
  }
  if (c$2 !== undefined) {
    return "image(" + imageSrc(match[2]) + ", " + color(c$2) + ")";
  } else {
    return "image(" + imageSrc(match[2]) + ")";
  }
}

function bgImage(v) {
  if (typeof v === "object") {
    return image(v);
  } else {
    return "none";
  }
}

function background(col, pos, size, repeat, att, origin, clip, imageOrColor) {
  var pos$1 = pos !== undefined ? (
      size !== undefined ? position(pos) + " / " + bgSize(size) : position(pos)
    ) : undefined;
  var bg = pos$1 !== undefined ? (
      repeat !== undefined ? pos$1 + " " + repeat : pos$1
    ) : (
      repeat !== undefined ? repeat : undefined
    );
  var bg$1 = bg !== undefined ? (
      att !== undefined ? bg + " " + att : bg
    ) : (
      att !== undefined ? att : undefined
    );
  var box = origin !== undefined ? (
      clip !== undefined ? origin + " " + clip : origin
    ) : undefined;
  var bg$2 = bg$1 !== undefined ? (
      box !== undefined ? bg$1 + " " + box : bg$1
    ) : (
      box !== undefined ? box : undefined
    );
  var exit = 0;
  if (typeof imageOrColor === "object") {
    var variant = imageOrColor.NAME;
    exit = variant === "rgb" || variant === "hsl" || variant === "rgba" || variant === "rgbX" || variant === "hsla" ? 2 : 1;
  } else {
    exit = imageOrColor === "none" ? 1 : 2;
  }
  switch (exit) {
    case 1 :
        if (col !== undefined) {
          if (bg$2 !== undefined) {
            return color(col) + " " + bgImage(imageOrColor) + " " + bg$2;
          } else {
            return color(col) + " " + bgImage(imageOrColor);
          }
        } else if (bg$2 !== undefined) {
          return bgImage(imageOrColor) + " " + bg$2;
        } else {
          return bgImage(imageOrColor);
        }
    case 2 :
        if (bg$2 !== undefined) {
          return color(imageOrColor) + " " + bg$2;
        } else {
          return color(imageOrColor);
        }
    
  }
}

function bgLayer(v) {
  if (typeof v !== "object") {
    if (v === "none") {
      return bgImage(v);
    } else {
      return color(v);
    }
  }
  var variant = v.NAME;
  if (variant === "rgb" || variant === "hsl" || variant === "rgba" || variant === "rgbX" || variant === "hsla") {
    return color(v);
  }
  if (variant !== "bgLayer") {
    return bgImage(v);
  }
  var match = v.VAL;
  return background(match[0], match[1], match[2], match[3], match[4], match[5], match[6], match[7]);
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
exports.transformOrigin = transformOrigin;
exports.hue = hue;
exports.alpha = alpha;
exports.rgbParam = rgbParam;
exports.hsl = hsl;
exports.hsla = hsla;
exports.rgb = rgb;
exports.rgba = rgba;
exports.rgbX = rgbX;
exports.color = color;
exports.gradientLineAngle = gradientLineAngle;
exports.linearColorStop = linearColorStop;
exports.linearGradient = linearGradient;
exports.repeatingLinearGradient = repeatingLinearGradient;
exports.radialGradient = radialGradient;
exports.repeatingRadialGradient = repeatingRadialGradient;
exports.conicGradient = conicGradient;
exports.repeatingConicGradient = repeatingConicGradient;
exports.gradient = gradient;
exports.url = url;
exports.imageSrc = imageSrc;
exports.image = image;
exports.bgImage = bgImage;
exports.bgSize = bgSize;
exports.position = position;
exports.background = background;
exports.bgLayer = bgLayer;
/* No side effect */
