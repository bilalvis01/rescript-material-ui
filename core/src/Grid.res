type props;
type alignContent = [
  | #stretch
  | #center
  | #"flex-start"
  | #"flex-end"
  | #"space-between"
  | #"space-around"
];
type alignItems = [
  | #"flex-start"
  | #center
  | #"flex-end"
  | #stretch
  | #baseline
];
type direction = [
  | #row
  | #"row-reverse"
  | #column
  | #"column-reverse"
];
type justify = [
  | #"flex-start"
  | #"center"
  | #"flex-end"
  | #"space-between"
  | #"space-around"
  | #"space-evenly"
];
type wrap = [
  | #nowrap
  | #wrap
  | #"wrap-reverse"
];
type spacing = [
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
];

module Classes = {
  type t;

  @obj
  external make: ( 
    ~root: string=?, 
    ~container: string=?,
    ~item: string=?,
    ~zeroMinWidth: string=?,
    ~\"direction-xs-column": string=?,
    ~\"direction-xs-column-reverse": string=?, 
    ~\"direction-xs-row-reverse": string=?, 
    ~\"wrap-xs-nowrap": string=?, 
    ~\"wrap-xs-wrap-reverse": string=?,
    ~\"align-items-xs-center": string=?,
    ~\"align-items-xs-flex-start": string=?,
    ~\"align-items-xs-flex-end": string=?,
    ~\"align-item-xs-baseline": string=?,
    ~\"align-content-xs-center": string=?,
    ~\"align-content-xs-flex-start": string=?,
    ~\"align-content-xs-flex-end": string=?, 
    ~\"align-content-xs-space-between": string=?,
    ~\"align-content-xs-space-around": string=?,
    ~\"justify-xs-renter": string=?,
    ~\"justify-xs-flex-end": string=?,
    ~\"justify-xs-space-between": string=?,
    ~\"justify-xs-space-around": string=?,
    ~\"justify-xs-space-evenly": string=?,
    ~\"spacing-xs-1": string=?,
    ~\"spacing-xs-2": string=?,
    ~\"spacing-xs-3": string=?,
    ~\"spacing-xs-4": string=?,
    ~\"spacing-xs-5": string=?,
    ~\"spacing-xs-6": string=?,
    ~\"spacing-xs-7": string=?,
    ~\"spacing-xs-8": string=?,
    ~\"spacing-xs-9": string=?,
    ~\"spacing-xs-10": string=?,
    ~\"grid-xs-auto": string=?,
    ~\"grid-xs-true": string=?,
    ~\"grid-xs-1": string=?,
    ~\"grid-xs-2": string=?,
    ~\"grid-xs-3": string=?,
    ~\"grid-xs-4": string=?,
    ~\"grid-xs-5": string=?,
    ~\"grid-xs-6": string=?,
    ~\"grid-xs-7": string=?,
    ~\"grid-xs-8": string=?,
    ~\"grid-xs-9": string=?,
    ~\"grid-xs-10": string=?,
    ~\"grid-xs-11": string=?,
    ~\"grid-xs-12": string=?,
    unit
  ) => t = "";
}

module Span = {
  type t = [
    | #auto
    | #1
    | #2
    | #3
    | #4
    | #5
    | #5
    | #6
    | #7
    | #8
    | #9
    | #10
    | #11
    | #12
  ];

  external toggle: bool => t = "%identity";
};

external objToProps: {..} => props = "%identity";

@obj
external makeProps: (
  ~key: string=?,
  ~ref: ReactDOM.domRef=?,
  ~alignContent: alignContent=?,
  ~alignItems: alignItems=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: React.component<'componentProps>=?,
  ~container: bool=?,
  ~direction: direction=?,
  ~item: bool=?,
  ~justify: justify=?,
  ~lg: Span.t=?,
  ~md: Span.t=?,
  ~sm: Span.t=?,
  ~spacing: spacing=?,
  ~wrap: wrap=?,
  ~xl: Span.t=?,
  ~xs: Span.t=?,
  ~zeroMinWidth: bool=?,
  // HTML aria attributes
  ~\"aria-details": string=?,
  ~\"aria-disabled": bool=?,
  ~\"aria-hidden": bool=?,
  ~\"aria-keyshortcuts": string=?,
  ~\"aria-label": string=?,
  ~\"aria-roledescription": string=?,
  ~\"aria-expanded": bool=?,
  ~\"aria-level": bool=?,
  ~\"aria-modal": bool=?,
  ~\"aria-multiline": bool=?,
  ~\"aria-multiselectable": bool=?,
  ~\"aria-placeholder": string=?,
  ~\"area-readonly": bool=?,
  ~\"aria-required": bool=?,
  ~\"aria-selected": bool=?,
  ~\"aria-sort": string=?,
  ~\"aria-valuemax": float=?,
  ~\"aria-valuemin": float=?,
  ~\"aria-valuetext": float=?,
  ~\"aria-atomic": bool=?,
  ~\"aria-busy": bool=?,
  ~\"aria-relevant": string=?,
  ~\"aria-grabbed": bool=?,
  ~\"aria-activedescendant": string=?,
  ~\"aria-colcount": int=?,
  ~\"aria-colindex": int=?,
  ~\"aria-colspan": int=?,
  ~\"aria-controls": string=?,
  ~\"aria-describedby": string=?,
  ~\"aria-errormessage": string=?,
  ~\"aria-flowto": string=?,
  ~\"aria-labelledby": string=?,
  ~\"aria-owns": string=?,
  ~\"aria-posinset": int=?,
  ~\"aria-rowcount": int=?,
  ~\"aria-rowindex": int=?,
  ~\"aria-rowspan": int=?,
  ~\"aria-setsize": int=?,
  // HTML global attributes
  ~accessKey: string=?,
  ~className: string=?,
  ~contentEditable: bool=?,
  ~contextMenu: string=?,
  ~dir: HtmlGlobalAttribute.dir=?,
  ~draggable: bool=?,
  ~hidden: bool=?,
  ~id: string=?,
  ~lang: string=?,
  ~role: string=?,
  ~style: ReactDOM.style=?,
  ~spellCheck: bool=?,
  ~tabIndex: int=?,
  ~title: string=?,
  // HTML5 microdata
  ~itemID: string=?,
  ~itemProps: string=?,
  ~itemRef: string=?,
  ~itemScope: bool=?,
  ~itemType: string=?,
  // HTML event attributes
  ~onCopy: ReactEvent.Clipboard.t => unit=?,
  ~onCut: ReactEvent.Clipboard.t => unit=?,
  ~onPaste: ReactEvent.Clipboard.t => unit=?,
  ~onCompositionEnd: ReactEvent.Composition.t => unit=?,
  ~onCompositionStart: ReactEvent.Composition.t => unit=?,
  ~onCompositionUpdate: ReactEvent.Composition.t => unit=?,
  ~onKeyDown: ReactEvent.Keyboard.t => unit=?,
  ~onKeyPress: ReactEvent.Keyboard.t => unit=?,
  ~onKeyUp: ReactEvent.Keyboard.t => unit=?,
  ~onFocus: ReactEvent.Focus.t => unit=?,
  ~onBlur: ReactEvent.Focus.t => unit=?,
  ~onChange: ReactEvent.Form.t => unit=?,
  ~onInput: ReactEvent.Form.t => unit=?,
  ~onSubmit: ReactEvent.Form.t => unit=?,
  ~onInvalid: ReactEvent.Form.t => unit=?,
  ~onClick: ReactEvent.Mouse.t => unit=?,
  ~onContextMenu: ReactEvent.Mouse.t => unit=?,
  ~onDoubleClick: ReactEvent.Mouse.t => unit=?,
  ~onDrag: ReactEvent.Mouse.t => unit=?,
  ~onDragEnd: ReactEvent.Mouse.t => unit=?,
  ~onDragEnter: ReactEvent.Mouse.t => unit=?,
  ~onDragExit: ReactEvent.Mouse.t => unit=?,
  ~onDragLeave: ReactEvent.Mouse.t => unit=?,
  ~onDragOver: ReactEvent.Mouse.t => unit=?,
  ~onDragStart: ReactEvent.Mouse.t => unit=?,
  ~onDrop: ReactEvent.Mouse.t => unit=?,
  ~onMouseDown: ReactEvent.Mouse.t => unit=?,
  ~onMouseEnter: ReactEvent.Mouse.t => unit=?,
  ~onMouseLeave: ReactEvent.Mouse.t => unit=?,
  ~onMouseMove: ReactEvent.Mouse.t => unit=?,
  ~onMouseOut: ReactEvent.Mouse.t => unit=?,
  ~onMouseOver: ReactEvent.Mouse.t => unit=?,
  ~onMouseUp: ReactEvent.Mouse.t => unit=?,
  ~onSelect: ReactEvent.Selection.t => unit=?,
  ~onTouchCancel: ReactEvent.Touch.t => unit=?,
  ~onTouchEnd: ReactEvent.Touch.t => unit=?,
  ~onTouchMove: ReactEvent.Touch.t => unit=?,
  ~onTouchStart: ReactEvent.Touch.t => unit=?,
  ~onPointerOver: ReactEvent.Pointer.t => unit=?,
  ~onPointerEnter: ReactEvent.Pointer.t => unit=?,
  ~onPointerDown: ReactEvent.Pointer.t => unit=?,
  ~onPointerMove: ReactEvent.Pointer.t => unit=?,
  ~onPointerUp: ReactEvent.Pointer.t => unit=?,
  ~onPointerCancel: ReactEvent.Pointer.t => unit=?,
  ~onPointerOut: ReactEvent.Pointer.t => unit=?,
  ~onPointerLeave: ReactEvent.Pointer.t => unit=?,
  ~onGotPointerCapture: ReactEvent.Pointer.t => unit=?,
  ~onLostPointerCapture: ReactEvent.Pointer.t => unit=?,
  ~onScroll: ReactEvent.UI.t => unit=?,
  ~onWheel: ReactEvent.Wheel.t => unit=?,
  ~onAbort: ReactEvent.Media.t => unit=?,
  ~onCanPlay: ReactEvent.Media.t => unit=?,
  ~onCanPlayThrough: ReactEvent.Media.t => unit=?,
  ~onDurationChange: ReactEvent.Media.t => unit=?,
  ~onEmptied: ReactEvent.Media.t => unit=?,
  ~onEncrypted: ReactEvent.Media.t => unit=?,
  ~onEnded: ReactEvent.Media.t => unit=?,
  ~onError: ReactEvent.Media.t => unit=?,
  ~onLoadedData: ReactEvent.Media.t => unit=?,
  ~onLoadedMetadata: ReactEvent.Media.t => unit=?,
  ~onLoadStart: ReactEvent.Media.t => unit=?,
  ~onPause: ReactEvent.Media.t => unit=?,
  ~onPlay: ReactEvent.Media.t => unit=?,
  ~onPlaying: ReactEvent.Media.t => unit=?,
  ~onProgress: ReactEvent.Media.t => unit=?,
  ~onRateChange: ReactEvent.Media.t => unit=?,
  ~onSeeked: ReactEvent.Media.t => unit=?,
  ~onSeeking: ReactEvent.Media.t => unit=?,
  ~onStalled: ReactEvent.Media.t => unit=?,
  ~onSuspend: ReactEvent.Media.t => unit=?,
  ~onTimeUpdate: ReactEvent.Media.t => unit=?,
  ~onVolumeChange: ReactEvent.Media.t => unit=?,
  ~onWaiting: ReactEvent.Media.t => unit=?,
  ~onLoad: ReactEvent.Image.t => unit=?,
  ~onAnimationStart: ReactEvent.Animation.t => unit=?,
  ~onAnimationEnd: ReactEvent.Animation.t => unit=?,
  ~onAnimationIteration: ReactEvent.Animation.t => unit=?,
  ~onTransitionEnd: ReactEvent.Transition.t => unit=?,
  unit
) => props = "";

@module("@material-ui/core/Grid")
external make: React.component<props> = "default";