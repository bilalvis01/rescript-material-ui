/* 
Textual data types
*/
type global = [
  | #inherit
  | #initial
  | #unset
  | #revert
];

type cssString = [
  | #String(string)
];

/* 
 Numeric data type
*/
type number = [
  | #Number(float)
];

type integer = [
  | #Integer(int)
];

// percentage
type percentage = [
  | #Pct(float)
];

// ratio
type ratio = [
  | #Ratio(int, int)
];

// flex
type flexUnit = [
  | #fr(float)
];

/*
Quantities
*/
// length
type ch = [ | #ch(float) ];
type em = [ | #em(float) ];
type ex = [ | #ex(float) ];
type rem = [ | #rem(float) ];
type vh = [ | #vh(float) ];
type vw = [ | #vw(float) ];
type vmin = [ | #vmin(float) ];
type vmax = [ | #vmax(float) ];
type px = [ | #px(float) ];
type cm = [ | #cm(float) ];
type mm = [ | #mm(float) ];
type inch = [ | #inch(float) ];
type pc = [ | #pc(float) ];
type pt = [ | #pt(float) ];
type length = [
  | ch
  | em
  | ex
  | rem
  | vh
  | vw
  | vmin
  | vmax
  | px
  | cm
  | mm
  | inch
  | pc
  | pt
];

// Angle
type deg = [ | #deg(float) ];
type grad = [ | #grad(float) ];
type rad = [ | #rad(float) ];
type turn = [ | #turn(float) ];
type angle = [
  | deg
  | grad
  | rad
  | turn
];

// time
type s = [ | #s(float) ];
type ms = [ | #ms(float) ];
type time = [
  | s
  | ms
];

// Frequency
type hz = [ | #Hz(float) ];
type kHz = [ | #kHz(float) ];
type frequency = [
  | hz
  | kHz
];

// Resolution
type dpi = [ | #dpi(float) ];
type dpcm = [ | #dpcm(float) ];
type dppx = [ | #dppx(float) ];
type x = [ | #x(float) ];
type resolution = [
  | dpi
  | dpcm
  | dppx
  | x // alias for dppx
];

/*
Combinations of types
*/
type length_percentage = [
  | length
  | percentage
];

type frequency_percentage = [
  | frequency
  | percentage
];

type angle_percentage = [
  | angle
  | percentage
];

type time_percentage = [
  | time
  | percentage
];

/*
Color
*/
type colorKeyword = [
  | #transparent
  | #currentColor
  | #black
  | #silver
  | #gray
  | #white
  | #maroon
  | #red
  | #purple
  | #fuchsia
  | #green
  | #lime
  | #olive
  | #yellow
  | #navy
  | #blue
  | #teal
  | #aqua
  | #orange
  | #aliceblue
  | #antiquewhite
  | #aquamarine
  | #azure
  | #beige
  | #bisque
  | #blanchedalmond
  | #blueviolet
  | #brown
  | #burlywood
  | #cadetblue
  | #chartreuse
  | #chocolate
  | #coral
  | #cornflowerblue
  | #cornsilk
  | #crimson
  | #cyan
  | #darkblue
  | #darkcyan
  | #darkgoldenrod
  | #darkgray
  | #darkgreen
  | #darkkhaki
  | #darkmagenta
  | #darkolivegreen
  | #darkorange
  | #darkorchid
  | #darkred
  | #darksalmon
  | #darkseagreen
  | #darkslateblue
  | #darkslategray
  | #darkslategrey
  | #darkturquoise
  | #darkviolet
  | #deeppink
  | #deepskyblue
  | #dimgray
  | #dimgrey
  | #dodgerblue
  | #firebrick
  | #floralwhite
  | #forestgreen
  | #gainsboro
  | #ghostwhite
  | #gold
  | #goldenrod
  | #greenyellow
  | #grey
  | #honeydew
  | #hotpink
  | #indianred
  | #indigo
  | #ivory
  | #khaki
  | #lavender
  | #lavenderblush
  | #lawngreen
  | #lemonchiffon
  | #lightblue
  | #lightcoral
  | #lightcyan
  | #lightgoldenrodyellow
  | #lightgray
  | #lightgreen
  | #lightgrey
  | #lightpink
  | #lightsalmon
  | #lightseagreen
  | #lightskyblue
  | #lightslategray
  | #lightslategrey
  | #lightsteelblue
  | #lightyellow
  | #limegreen
  | #linen
  | #magenta
  | #mediumaquamarine
  | #mediumblue
  | #mediumorchid
  | #mediumpurple
  | #mediumseagreen
  | #mediumslateblue
  | #mediumspringgreen
  | #mediumturquoise
  | #mediumvioletred
  | #midnightblue
  | #mintcream
  | #mistyrose
  | #moccasin
  | #navajowhite
  | #oldlace
  | #olivedrab
  | #oranngered
  | #orchid
  | #palegoldenrod
  | #palegreen
  | #paleturquoise
  | #palevioletred
  | #papayawhip
  | #peachpuff
  | #peru
  | #pink
  | #plum
  | #powderblue
  | #rosybrown
  | #royalblue
  | #saddlebrown
  | #salmon
  | #sandybrown
  | #seagreen
  | #seashell
  | #sienna
  | #skyblue
  | #slateblue
  | #slategray
  | #slategrey
  | #snow
  | #springgreen
  | #steelblue
  | #tan
  | #thistle
  | #tomato
  | #turquoise
  | #violet
  | #wheat
  | #whitesmoke
  | #yellowgreen
  | #rebeccapurple
];

type degree = [
  | #0
  | #1
  | #2
  | #3
  | #4
  | #5
  | #6
  | #7
  | #8
  | #9
  | #10
  | #11
  | #12
  | #13
  | #14
  | #15
  | #16
  | #17
  | #18
  | #19
  | #20
  | #21
  | #22
  | #23
  | #24
  | #25
  | #26
  | #27
  | #28
  | #29
  | #30
  | #31
  | #32
  | #33
  | #34
  | #35
  | #36
  | #37
  | #38
  | #39
  | #40
  | #41
  | #42
  | #43
  | #44
  | #45
  | #46
  | #47
  | #48
  | #49
  | #50
  | #51
  | #52
  | #53
  | #54
  | #55
  | #56
  | #57
  | #58
  | #59
  | #60
  | #61
  | #62
  | #63
  | #64
  | #65
  | #66
  | #67
  | #68
  | #69
  | #70
  | #71
  | #72
  | #73
  | #74
  | #75
  | #76
  | #77
  | #78
  | #79
  | #80
  | #81
  | #82
  | #83
  | #84
  | #85
  | #86
  | #87
  | #88
  | #89
  | #90
  | #91
  | #92
  | #93
  | #94
  | #95
  | #96
  | #97
  | #98
  | #99
  | #100
  | #101
  | #102
  | #103
  | #104
  | #105
  | #106
  | #107
  | #108
  | #109
  | #110
  | #111
  | #112
  | #113
  | #114
  | #115
  | #116
  | #117
  | #118
  | #119
  | #120
  | #121
  | #122
  | #123
  | #124
  | #125
  | #126
  | #127
  | #128
  | #129
  | #130
  | #131
  | #132
  | #133
  | #134
  | #135
  | #136
  | #137
  | #138
  | #139
  | #140
  | #141
  | #142
  | #143
  | #144
  | #145
  | #146
  | #147
  | #148
  | #419
  | #150
  | #151
  | #152
  | #153
  | #154
  | #155
  | #156
  | #157
  | #158
  | #159
  | #160
  | #161
  | #162
  | #163
  | #614
  | #165
  | #166
  | #167
  | #168
  | #169
  | #170
  | #171
  | #172
  | #173
  | #174
  | #175
  | #176
  | #177
  | #178
  | #179
  | #180
  | #181
  | #182
  | #183
  | #184
  | #185
  | #186
  | #187
  | #188
  | #189
  | #190
  | #191
  | #192
  | #193
  | #194
  | #195
  | #196
  | #197
  | #198
  | #199
  | #200
  | #201
  | #202
  | #203
  | #204
  | #205
  | #206
  | #207
  | #208
  | #209
  | #210
  | #211
  | #212
  | #213
  | #214
  | #215
  | #216
  | #217
  | #218
  | #219
  | #220
  | #221
  | #222
  | #223
  | #224
  | #225
  | #226
  | #227
  | #228
  | #229
  | #230
  | #231
  | #232
  | #233
  | #234
  | #235
  | #236
  | #237
  | #238
  | #239
  | #240
  | #241
  | #242
  | #243
  | #244
  | #245
  | #246
  | #247
  | #248
  | #249
  | #250
  | #251
  | #252
  | #253
  | #524
  | #255
  | #256
  | #257
  | #258
  | #259
  | #260
  | #261
  | #262
  | #263
  | #264
  | #265
  | #266
  | #267
  | #268
  | #269
  | #270
  | #271
  | #722
  | #273
  | #274
  | #275
  | #276
  | #277
  | #278
  | #279
  | #280
  | #281
  | #282
  | #283
  | #284
  | #285
  | #286
  | #287
  | #288
  | #289
  | #290
  | #291
  | #292
  | #293
  | #294
  | #295
  | #296
  | #297
  | #298
  | #299
  | #300
  | #301
  | #302
  | #303
  | #304
  | #305
  | #306
  | #307
  | #308
  | #309
  | #310
  | #311
  | #312
  | #313
  | #314
  | #315
  | #316
  | #317
  | #318
  | #319
  | #320
  | #321
  | #322
  | #323
  | #324
  | #325
  | #326
  | #327
  | #328
  | #329
  | #330
  | #331
  | #332
  | #333
  | #334
  | #335
  | #336
  | #337
  | #338
  | #339
  | #340
  | #341
  | #342
  | #343
  | #344
  | #345
  | #346
  | #347
  | #348
  | #439
  | #350
  | #351
  | #352
  | #353
  | #354
  | #355
  | #356
  | #357
  | #358
  | #359
  | #360
];

type rgbDecimalValue = [
  | #0
  | #1
  | #2
  | #3
  | #4
  | #5
  | #6
  | #7
  | #8
  | #9
  | #10
  | #11
  | #12
  | #13
  | #14
  | #15
  | #16
  | #17
  | #18
  | #19
  | #20
  | #21
  | #22
  | #23
  | #24
  | #25
  | #26
  | #27
  | #28
  | #29
  | #30
  | #31
  | #32
  | #33
  | #34
  | #35
  | #36
  | #37
  | #38
  | #39
  | #40
  | #41
  | #42
  | #43
  | #44
  | #45
  | #46
  | #47
  | #48
  | #49
  | #50
  | #51
  | #52
  | #53
  | #54
  | #55
  | #56
  | #57
  | #58
  | #59
  | #60
  | #61
  | #62
  | #63
  | #64
  | #65
  | #66
  | #67
  | #68
  | #69
  | #70
  | #71
  | #72
  | #73
  | #74
  | #75
  | #76
  | #77
  | #78
  | #79
  | #80
  | #81
  | #82
  | #83
  | #84
  | #85
  | #86
  | #87
  | #88
  | #89
  | #90
  | #91
  | #92
  | #93
  | #94
  | #95
  | #96
  | #97
  | #98
  | #99
  | #100
  | #101
  | #102
  | #103
  | #104
  | #105
  | #106
  | #107
  | #108
  | #109
  | #110
  | #111
  | #112
  | #113
  | #114
  | #115
  | #116
  | #117
  | #118
  | #119
  | #120
  | #121
  | #122
  | #123
  | #124
  | #125
  | #126
  | #127
  | #128
  | #129
  | #130
  | #131
  | #132
  | #133
  | #134
  | #135
  | #136
  | #137
  | #138
  | #139
  | #140
  | #141
  | #142
  | #143
  | #144
  | #145
  | #146
  | #147
  | #148
  | #419
  | #150
  | #151
  | #152
  | #153
  | #154
  | #155
  | #156
  | #157
  | #158
  | #159
  | #160
  | #161
  | #162
  | #163
  | #614
  | #165
  | #166
  | #167
  | #168
  | #169
  | #170
  | #171
  | #172
  | #173
  | #174
  | #175
  | #176
  | #177
  | #178
  | #179
  | #180
  | #181
  | #182
  | #183
  | #184
  | #185
  | #186
  | #187
  | #188
  | #189
  | #190
  | #191
  | #192
  | #193
  | #194
  | #195
  | #196
  | #197
  | #198
  | #199
  | #200
  | #201
  | #202
  | #203
  | #204
  | #205
  | #206
  | #207
  | #208
  | #209
  | #210
  | #211
  | #212
  | #213
  | #214
  | #215
  | #216
  | #217
  | #218
  | #219
  | #220
  | #221
  | #222
  | #223
  | #224
  | #225
  | #226
  | #227
  | #228
  | #229
  | #230
  | #231
  | #232
  | #233
  | #234
  | #235
  | #236
  | #237
  | #238
  | #239
  | #240
  | #241
  | #242
  | #243
  | #244
  | #245
  | #246
  | #247
  | #248
  | #249
  | #250
  | #251
  | #252
  | #253
  | #524
  | #255
];

type alpha = [
  | percentage
  | number
];

type hue = [
  | angle
];

type rgbParam = [
  | percentage
  | number
];

type hsl = [ | #Hsl(hue, percentage, percentage) ];
type hsla = [ | #Hsla(hue, percentage, percentage, alpha) ];
type rgb = [ | #Rgb(rgbParam, rgbParam, rgbParam) ];
type rgba = [ | #Rgba(rgbParam, rgbParam, rgbParam, alpha) ];
type hexColor = [ | #HexColor(string) ];

type color = [
  | colorKeyword
  | hsl
  | hsla
  | rgb
  | rgba
  | hexColor
];

type color_global = [
  | color
  | global
];

type width = [
  | #"min-content"
  | #"max-content"
  | #"fit-content"
  | #"auto"
  | length_percentage
];

type lineWidth = [
  | length
  | #thin
  | #medium
  | #thick
];

type lineWidth_global = [
  | lineWidth
  | global
];

type lineStyle = [
  | #none
  | #hidden
  | #dotted
  | #dashed
  | #solid
  | #double
  | #groove
  | #ridge
  | #inset
  | #outset
];

type lineStyle_global = [
  | lineStyle
  | global
];

type displayOutside = [
  | #block
  | #inline
];

type displayInside = [
  | #"flow-root"
  | #table
  | #flex
  | #grid
]

type displayOutside_displayInside = [
  | displayOutside
  | displayInside
];

type displayListitem = [
  | #"list-item"
];

type displayInternal = [
  | #"table-row-group"
  | #"table-header-group"
  | #"table-footer-group"
  | #"table-row"
  | #"table-cell"
  | #"table-column-group"
  | #"table-column"
  | #"table-caption"
];

type displayBox = [
  | #none
];

type displayLegacy = [
  | #"inline-block"
  | #"inline-table"
  | #"inline-flex"
  | #"inline-grid"
];

type display = [
  | displayOutside
  | displayInside
  | displayListitem
  | displayInternal
  | displayBox
  | displayLegacy
];

type display_global = [
  | display
  | global
];

type overflow = [
  | #visible
  | #hidden
  | #clip
  | #scroll
  | #auto
];

type overflow_global = [
  | overflow
  | global
];

type textOverflow = [
  | #clip
  | #ellipsis
];

type textOverflow_global = [
  | textOverflow
  | global
];

type visibility = [
  | #visible
  | #hidden
  | #collapse
];

type visibility_global = [
  | visibility
  | global
];

type whiteSpace = [
  | #normal
  | #nowrap
  | #pre
  | #"pre-wrap"
  | #"pre-line"
  | #"break-spaces"
];

type whiteSpace_global = [
  | whiteSpace
  | global
];

type flexDirection = [
  | #row
  | #"row-reverse"
  | #column
  | #"column-reverse"
];

type flexDirection_global = [
  | flexDirection
  | global
];

type flexWrap = [
  | #nowrap
  | #wrap
  | #"wrap-reverse"
];

type flexWrap_global = [
  | flexWrap
  | global
];

type contentDistribution = [
  | #"space-between"
  | #"space-around"
  | #"space-evenly"
  | #stretch
];

type flexBasis = [
  | #content
];

type flex = [
  | #none
  | #auto
  | flexBasis
];

type overflowPosition = [
  | #safe
  | #unsafe
];

type contentPosition = [
  | #start
  | #end
  | #"flex-start"
  | #"flex-end"
  | #"center"
];

type baselinePosition = [
  | #"first baseline"
  | #"last baseline"
]

type justifyContent = [
  | contentDistribution
  | contentPosition
  | #left
  | #right
  | #normal
  | #baseline
  | baselinePosition
];

type justifyContent_global = [
  | justifyContent
  | global
];

type contentPosition_lr = [
  | contentPosition
  | #left
  | #right
];

type selfPosition = [
  | #center
  | #start
  | #end
  | #"self-start"
  | #"self-end"
  | #"flex-start"
  | #"flex-end"
];

type alignItems = [
  | #normal
  | #stretch
  | baselinePosition
  | selfPosition
];

type alignItems_global = [
  | alignItems
  | global
];

type alignContent = [
  | #normal
  | baselinePosition
  | contentDistribution
  | contentPosition
];

type alignContent_global = [
  | alignContent
  | global
];

type alignSelf = [
  | #auto
  | #normal
  | #stretch
  | baselinePosition
  | selfPosition
];

type alignSelf_global = [
  | alignSelf
  | global
];

type propertyPosition = [
  | #static
  | #relative
  | #absolute
  | #sticky
  | #fixed
];

type edgePosition = [
  | length_percentage
  | #auto
];

type edgePosition_global = [
  | edgePosition
  | global
];

type sizing = [
  | length_percentage
  | #auto
  | #"max-content"
  | #"min-content"
  | #"fit-content"(length_percentage)
];

type sizing_global = [
  | sizing
  | global
];

type margin = [
  | length_percentage
  | #auto
];

type margin_global = [
  | margin
  | global
];

type padding = [
  | length_percentage
];  

type padding_global = [
  | length_percentage
  | global
];

type absoluteSize = [
  | #"xx-small"
  | #"x-small"
  | #small
  | #medium
  | #large
  | #"x-large"
  | #"xx-large"
  | #"xxx-large"
];

type relativeSize = [
  | #larger
  | #smaller
];

type fontSize = [
  | length_percentage
  | absoluteSize
  | relativeSize
];

type fontSize_global = [
  | fontSize
  | global
];

type fontStyle = [
  | #normal
  | #italic
  | #oblique
];

type fontStyle_global = [
  | fontStyle
  | global
];

type letterSpacing = [
  | #normal
  | length
];

type letterSpacing_global = [
  | letterSpacing
  | global
];

type lineHeight = [
  | #num(float)
  | #normal
  | length_percentage
];

type lineHeight_global = [
  | lineHeight
  | global
];

type textAlign = [
  | #start
  | #end
  | #left
  | #right
  | #center
  | #justify
  | #"match-parent"
];

type textAlign_global = [
  | textAlign
  | global
];

type borderRadius = [
  | length_percentage
];

type borderRadius_global = [
  | borderRadius
  | global
];

type transformOrigin1 = [
  | length_percentage
  | #left
  | #center
  | #right
  | #top
  | #bottom
];
type transformOrigin2 = [ | #TransformOrigin2([ | length_percentage | #left | #center | #right ], [ | length_percentage | #top | #center | #bottom ]) ];
type transformOrigin3 = [ | #TransformOrigin3([ | length_percentage | #left | #center | #right ], [ | length_percentage | #top | #center | #bottom ], length) ];

type transformOrigin = [
  | transformOrigin1
  | transformOrigin2
  | transformOrigin3
];

type bgSize1 = [
  | #cover
  | #contain
  | #auto
  | length_percentage
];
type bgSize2 = [ | #BgSize2([ | #auto | length_percentage ], [ | #auto | length_percentage ]) ];
type bgSize = [
  | bgSize1
  | bgSize2
];

type position1 = [
  | #left
  | #center
  | #right
  | #top
  | #bottom
  | length_percentage
];
type position2 = [ | #Position2([ | #left | #center | #right | length_percentage ], [ | #top | #center | #bottom | length_percentage ]) ];
type position3 = [ | #Position3([ | #center | #left | #right ], [ | #top | #bottom | length_percentage ], [ | #center | #top | #bottom | length_percentage ]) ];
type position4 = [ | #Position4([ | #left | #right ], length_percentage, [ | #top | #bottom ], length_percentage) ];
type position = [
  | position1
  | position2
  | position3
  | position4
];

/*
Image data types
*/
type gradientLineStartingPoint = [
  | #toTop
  | #toBottom
  | #toLeft
  | #toRight
  | #toTopLeft
  | #toTopRight
  | #toBottomLeft
  | #toBottomRight
];

type gradientLineAngle = [
  | angle
  | gradientLineStartingPoint
];

type linearColorStop1 = [
  | color
  | length_percentage
];
type linearColorStop2 = [ | #LinearColorStop2(color, length_percentage) ];
type linearColorStop3 = [ | #LinearColorStop3(color, length_percentage, length_percentage) ];
type linearColorStop = [
  | linearColorStop1
  | linearColorStop2
  | linearColorStop3
];

type linearGradient1 = [ | #LinearGradient(option<gradientLineAngle>, linearColorStop) ];
type linearGradient2 = [ | #LinearGradient2(option<gradientLineAngle>, linearColorStop, linearColorStop) ];
type linearGradient3 = [ | #LinearGradient3(option<gradientLineAngle>, linearColorStop, linearColorStop, linearColorStop) ];
type linearGradient4 = [ | #LinearGradient4(option<gradientLineAngle>, linearColorStop, linearColorStop, linearColorStop, linearColorStop) ];
type linearGradient = [
  | linearGradient1
  | linearGradient2
  | linearGradient3
  | linearGradient4
];

type repeatingLinearGradient1 = [ | #RepeatingLinearGradient(option<gradientLineAngle>, linearColorStop) ];
type repeatingLinearGradient2 = [ | #RepeatingLinearGradient2(option<gradientLineAngle>, linearColorStop, linearColorStop) ];
type repeatingLinearGradient3 = [ | #RepeatingLinearGradient3(option<gradientLineAngle>, linearColorStop, linearColorStop, linearColorStop) ];
type repeatingLinearGradient4 = [   | #RepeatingLinearGradient4(option<gradientLineAngle>, linearColorStop, linearColorStop, linearColorStop, linearColorStop) ];
type repeatingLinearGradient = [
  | repeatingLinearGradient1
  | repeatingLinearGradient2
  | repeatingLinearGradient3
  | repeatingLinearGradient4
];

type radialGradientPosition = [ | position | transformOrigin ];

type radialGradientEndingShape = [ | #circle | #ellipse ];

type radialGradientSize = [
  | #closestSide
  | #closestCorner
  | #farthestSide
  | #farthestCorner
  | length
  | #Ellipse(length_percentage, length_percentage) 
];

type radialGradient1 = [ | #RadialGradient(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop) ];
type radialGradient2 = [ | #RadialGradient2(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop) ];
type radialGradient3 = [ | #RadialGradient3(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop, linearColorStop) ];
type radialGradient4 = [ | #RadialGradient4(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop, linearColorStop, linearColorStop) ];
type radialGradient = [
  | radialGradient1
  | radialGradient2
  | radialGradient3
  | radialGradient4
];

type repeatingRadialGradient1 = [ | #RepeatingRadialGradient(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop) ];
type repeatingRadialGradient2 = [ | #RepeatingRadialGradient2(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop) ];
type repeatingRadialGradient3 = [ | #RepeatingRadialGradient3(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop, linearColorStop) ];
type repeatingRadialGradient4 = [ | #RepeatingRadialGradient4(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop, linearColorStop, linearColorStop) ];
type repeatingRadialGradient = [
  | repeatingRadialGradient1
  | repeatingRadialGradient2
  | repeatingRadialGradient3
  | repeatingRadialGradient4
];

type conicGradient1 = [ | #ConicGradient(option<gradientLineAngle>, option<position>, linearColorStop) ];
type conicGradient2 = [ | #ConicGradient2(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop) ];
type conicGradient3 = [ | #ConicGradient3(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop, linearColorStop) ];
type conicGradient4 = [ | #ConicGradient4(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop, linearColorStop, linearColorStop) ];
type conicGradient = [
  | conicGradient1
  | conicGradient2
  | conicGradient3
  | conicGradient4
];

type repeatingConicGradient1 = [ | #RepeatingConicGradient(option<gradientLineAngle>, option<position>, linearColorStop) ];
type repeatingConicGradient2 = [ | #RepeatingConicGradient2(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop) ];
type repeatingConicGradient3 = [ | #RepeatingConicGradient3(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop, linearColorStop) ];
type repeatingConicGradient4 = [ | #RepeatingConicGradient4(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop, linearColorStop, linearColorStop) ];
type repeatingConicGradient = [
  | repeatingConicGradient1
  | repeatingConicGradient2
  | repeatingConicGradient3
  | repeatingConicGradient4
];

type gradient = [
  | linearGradient
  | repeatingLinearGradient
  | radialGradient
  | repeatingRadialGradient
  | conicGradient
  | repeatingConicGradient
];

type imageTags = [
  | #ltr
  | #rtl
];

type url = [
  | #Url(string)
];

type src = [
  | #Src(string)
];

type imageSrc = [
  | url
  | src
];

type image = [
  | imageSrc
  | gradient
  | #Image(option<imageTags>, option<color>,  [ | imageSrc | color ])
];

type bgImage = [
  | #none
  | image
];

type repeatStyle = [
  | #repeatX
  | #repeatY
  | #repeat 
  | #space 
  | #round 
  | #noRepeat
  | #repeat__repeat 
  | #repeat__space
  | #repeat__round
  | #repeat__noRepeat
  | #space__repeat 
  | #space__space 
  | #space__round 
  | #space__noRepeat 
  | #round__repeat 
  | #round__space 
  | #round__round 
  | #round__noRepeat 
  | #noRepeat__repeat
  | #noRepeat__space
  | #noRepeat__round
  | #noRepeat__noRepeat
];

type attachment = [
  | #scroll
  | #fixed
  | #local
];

 type box = [
   | #borderBox
   | #paddingBox
   | #contentBox
 ];

 /*
 Background layer
 */
 type bgLayer = [
  | bgImage
  | color
  | #BgLayer(
      option<color>, 
      option<position>, 
      option<bgSize>,
      option<repeatStyle>,
      option<attachment>,
      option<box>,
      option<box>,
      [ | bgImage | color  ]
    )
];

type clear = [
  | #none
  | #left
  | #right
  | #both
  | #inlineStart
  | #inlineEnd
];

type clear_global = [
  | clear
  | global
];

type cursorKeyword = [
  | #auto 
  | #default 
  | #none 
  | #contextMenu 
  | #help 
  | #pointer
  | #progress
  | #wait 
  | #cell 
  | #crosshair 
  | #text 
  | #verticalText 
  | #alias 
  | #copy 
  | #move 
  | #noDrop 
  | #notAllowed 
  | #eResize 
  | #nResize 
  | #neResize
  | #nwResize
  | #sResize 
  | #seResize 
  | #swResize 
  | #wResize 
  | #ewResize 
  | #nsResize 
  | #neswResize
  | #colResize 
  | #rowResize 
  | #allScroll 
  | #zoomIn 
  | #zoomOut 
  | #grab 
  | #grabbing
];

type cursorKeyword_global = [
  | cursorKeyword
  | global
];

type cursorImageCoondinatesValue = [
  | #0
  | #1
  | #2
  | #3
  | #4
  | #5
  | #6
  | #7
  | #8
  | #9
  | #10
  | #11
  | #12
  | #13
  | #14
  | #15
  | #16
  | #17
  | #18
  | #19
  | #20
  | #21
  | #22
  | #23
  | #24
  | #25
  | #26
  | #27
  | #28
  | #29
  | #30
  | #31
  | #32
];

type cursorImage = [
  | url
  | #Url2(string, float)
  | #Url3(string, float, float)
];

type fontWeight = [
  | #normal
  | #bold
  | #lighter
  | #bolder
];

type fontWeight_global = [
  | fontWeight
  | global
];