/*
Combinator
*/
type concat<'a> = [
  | #concat('a, 'a)
];

type join<'a> = [
  | #join('a, 'a)
];

type stick<'a> = [
  | #stick('a, 'a)
];

type concatMany<'a> = [
  | #concatMany(array<'a>)
];

type joinMany<'a> = [
  | #joinMany(array<'a>)
];

type stickMany<'a> = [
  | #stickMany(array<'a>)
];

/* 
Textual data types
*/
type global = [
  | #inherit
  | #initial
  | #unset
  | #revert
];

type string_ = [
  | #string(string)
];

/* 
 Numeric data type
*/
type number = [
  | #number(float)
];

type integer = [
  | #integer(int)
];

// percentage
type percentage = [
  | #pct(float)
];

// ratio
type ratio = [
  | #ratio(int, int)
];

// flex
type flexUnit = [
  | #fr(float)
];

/*
Quantities
*/
// length
type length = [
  | #ch(float)
  | #em(float)
  | #ex(float)
  | #rem(float)
  | #vh(float)
  | #vw(float)
  | #vmin(float)
  | #vmax(float)
  | #px(float)
  | #cm(float)
  | #mm(float)
  | #inch(float)
  | #pc(float)
  | #pt(float)
];

// Angle
type angle = [
  | #deg(float)
  | #grad(float)
  | #rad(float)
  | #turn(float)
];

// time
type time = [
  | #s(float)
  | #ms(float)
];

// Frequency
type frequency = [
  | #Hz(float)
  | #kHz(float)
];

// Resolution
type resolution = [
  | #dpi(float)
  | #dpcm(float)
  | #dppx(float)
  | #x(float) // alias for dppx
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
  // | number
  // | degree
];

type rgbParam = [
  | percentage
  | number
  // | rgbDecimalValue
];

type color = [
  | colorKeyword
  | #hsl(hue, percentage, percentage)
  | #hsla(hue, percentage, percentage, alpha)
  | #rgb(rgbParam, rgbParam, rgbParam)
  | #rgba(rgbParam, rgbParam, rgbParam, alpha)
  | #rgbX(string)
];

type color_global = [
  | color
  | global
];

// scalar
type scalar = [
  | number
  | integer
  | string_
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

type fontWeight = [
  | #normal
  | #bold
  | #lighter
  | #bolder
  | #num(float)
];

type fontWeight_global = [
  | fontWeight
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

type transformOrigin = [
  | length_percentage
  | #left
  | #center
  | #right
  | #top
  | #bottom
  | #transformOrigin2([ | length_percentage | #left | #center | #right ], [ | length_percentage | #top | #center | #bottom ])
  | #transformOrigin3([ | length_percentage | #left | #center | #right ], [ | length_percentage | #top | #center | #bottom ], length)
];

type bgSize = [
  | #cover
  | #contain
  | #auto
  | length_percentage
  | #bgSize2([ | #auto | length_percentage ], [ | #auto | length_percentage ])
];

type position = [
  | #left
  | #center
  | #right
  | #top
  | #bottom
  | length_percentage
  | #position2([ | #left | #center | #right | length_percentage ], [ | #top | #center | #bottom | length_percentage ])
  | #position3([ | #center | #left | #right ], [ | #top | #bottom | length_percentage ], [ | #center | #top | #bottom | length_percentage ])
  | #position4([ | #left | #right ], length_percentage, [ | #top | #bottom ], length_percentage)
];

/*
Image data types
*/
type gradientLineStartingPoint = [
  | #"to top"
  | #"to bottom"
  | #"to left"
  | #"to right"
  | #"to top left"
  | #"to top right"
  | #"to bottom left"
  | #"to bottom right"
];

type gradientLineAngle = [
  | angle
  | gradientLineStartingPoint
];

type linearColorStop = [
  | color
  | length_percentage
  | #linearColorStop2(color, length_percentage)
  | #linearColorStop3(color, length_percentage, length_percentage)
];

type linearGradient = [
  | #linearGradient(option<gradientLineAngle>, linearColorStop)
  | #linearGradient2(option<gradientLineAngle>, linearColorStop, linearColorStop)
  | #linearGradient3(option<gradientLineAngle>, linearColorStop, linearColorStop, linearColorStop)
  | #linearGradient4(option<gradientLineAngle>, linearColorStop, linearColorStop, linearColorStop, linearColorStop)
];

type repeatingLinearGradient = [
  | #repeatingLinearGradient(option<gradientLineAngle>, linearColorStop)
  | #repeatingLinearGradient2(option<gradientLineAngle>, linearColorStop, linearColorStop)
  | #repeatingLinearGradient3(option<gradientLineAngle>, linearColorStop, linearColorStop, linearColorStop)
  | #repeatingLinearGradient4(option<gradientLineAngle>, linearColorStop, linearColorStop, linearColorStop, linearColorStop)
];

type radialGradientPosition = [ | position | transformOrigin ];

type radialGradientEndingShape = [ | #circle | #ellipse ];

type radialGradientSize = [
  | #"closest-side"
  | #"closest-corner"
  | #"farthest-side"
  | #"farthest-corner"
  | length
  | #ellipse(length_percentage, length_percentage)
];

type radialGradient = [
  | #radialGradient(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop)
  | #radialGradient2(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop)
  | #radialGradient3(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop, linearColorStop)
  | #radialGradient4(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop, linearColorStop, linearColorStop)
];

type repeatingRadialGradient = [
  | #repeatingRadialGradient(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop)
  | #repeatingRadialGradient2(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop)
  | #repeatingRadialGradient3(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop, linearColorStop)
  | #repeatingRadialGradient4(option<radialGradientPosition>, option<radialGradientEndingShape>, option<radialGradientSize>, linearColorStop, linearColorStop, linearColorStop, linearColorStop)
];

type conicGradient = [
  | #conicGradient(option<gradientLineAngle>, option<position>, linearColorStop)
  | #conicGradient2(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop)
  | #conicGradient3(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop, linearColorStop)
  | #conicGradient4(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop, linearColorStop, linearColorStop)
];

type repeatingConicGradient = [
  | #repeatingConicGradient(option<gradientLineAngle>, option<position>, linearColorStop)
  | #repeatingConicGradient2(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop)
  | #repeatingConicGradient3(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop, linearColorStop)
  | #repeatingConicGradient4(option<gradientLineAngle>, option<position>, linearColorStop, linearColorStop, linearColorStop, linearColorStop)
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
  | #url(string)
];

type imageSrc = [
  | url
  | #src(string)
];

type image = [
  | imageSrc
  | gradient
  | #image(option<imageTags>, option<color>,  [ | imageSrc | color ])
];

type bgImage = [
  | #none
  | image
];

type repeatStyle = [
  | #"repeat-x"
  | #"repeat-y"
  | #repeat
  | #space
  | #round
  | #"no-repeat"
  | #"repeat repeat"
  | #"repeat space"
  | #"repeat round"
  | #"repeat no-repeat"
  | #"space repeat"
  | #"space space"
  | #"space round"
  | #"space no-repeat"
  | #"round repeat"
  | #"round space"
  | #"round round"
  | #"round no-repeat"
  | #"no-repeat repeat"
  | #"no-repeat space"
  | #"no-repeat round"
  | #"no-repeat no-repeat"
];

type attachment = [
  | #scroll
  | #fixed
  | #local
];

 type box = [
   | #"border-box"
   | #"padding-box"
   | #"content-box"
 ];

 /*
 Background layer
 */
 type bgLayer = [
  | bgImage
  | color
  | #bgLayer(
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
  | #"inline-start"
  | #"inline-end"
];

type clear_global = [
  | clear
  | global
];

type cursorKeyword = [
  | #auto
  | #default
  | #none
  | #"context-menu"
  | #help
  | #pointer
  | #progress
  | #wait
  | #cell
  | #crosshair
  | #text
  | #"vertical-text"
  | #alias
  | #copy
  | #move
  | #"no-drop"
  | #"not-allowed"
  | #"e-resize"
  | #"n-resize"
  | #"ne-resize"
  | #"nw-resize"
  | #"s-resize"
  | #"se-resize"
  | #"sw-resize"
  | #"w-resize"
  | #"ew-resize"
  | #"ns-resize"
  | #"nesw-resize"
  | #"col-resize"
  | #"row-resize"
  | #"all-scroll"
  | #"zoom-in"
  | #"zoom-out"
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
  | #url2(string, float)
  | #url3(string, float, float)
];