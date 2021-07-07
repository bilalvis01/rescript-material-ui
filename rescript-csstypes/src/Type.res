@unboxed
type rec commaItem =
  | CommaItem('a): commaItem;

type comma = [
  | #comma(array<commaItem>)
];

@unboxed
type rec spaceItem =
  | SpaceItem('a): spaceItem;

type space = [
  | #space(array<spaceItem>)
];

type global = [
  | #inherit
  | #initial
  | #unset
];

// Scalar
type number = [
  | #number(float)
];

type integer = [
  | #int(int)
];

type string_ = [
  | #string(string)
];

type scalar = [
  | number
  | integer
  | string_
];

// Length
type percentage = [
  | #pct(float)
];

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

type length_percentage = [
  | length
  | percentage
]

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

// Angle
type angle = [
  | #deg(float)
  | #grad(float)
  | #rad(float)
  | #turn(float)
];

// Line
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

// Color
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

type alpha = [
  | percentage
  | number
];

type hue = [
  | angle
  | number
];

type rgbValue = [
  | percentage
  | number
];

type color = [
  | colorKeyword
  | #hsl(hue, percentage, percentage)
  | #hsla(hue, percentage, percentage, alpha)
  | #rgb(rgbValue, rgbValue, rgbValue)
  | #rgba(rgbValue, rgbValue, rgbValue, alpha)
  | #rgbHex(string)
];

type color_global = [
  | color
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

type position = [
  | #static
  | #relative
  | #absolute
  | #sticky
  | #fixed
];

type position_global = [
  | position
  | global
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

type border = [
  | lineStyle
  | lineWidth
  | color
  | global
  | scalar
  | space
  | comma
];

type borderColor = [
  | color
  | global
  | #revert
];