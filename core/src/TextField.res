type props;
type color = [
  | #primary
  | #secondary
];
type margin = [
  | #none
  | #dense
  | #normal
];
type size = [
  | #small
  | #medium
];
type variant = [
  | #standard
  | #outlined
  | #filled
];

module Classes = {
  type t;

  @obj
  external make: (
    ~root: string=?,
    unit
  ) => t = "";
};

external objToProps: {..} => props = "%identity";

@obj
external makeProps: (
  ~key: string=?,
  ~ref: ReactDOM.domRef=?,
  ~autoComplete: string=?,
  ~autoFocus: bool=?,
  ~classes: Classes.t=?,
  ~color: color=?,
  ~defaultValue: 'value=?,
  ~disabled: bool=?,
  ~error: bool=?,
  ~\"FormHelperTextProps": FormHelperText.props=?,
  ~fullWidth: bool=?,
  ~helperText: React.element=?,
  ~id: string=?,
  ~\"InputLabelProps": InputLabel.props=?,
  ~\"InputProps": Input.props=?,
  ~inputProps: ReactDOM.domProps=?,
  ~inputRef: ReactDOM.domRef=?,
  ~label: React.element=?,
  ~margin: margin=?,
  ~multiline: bool=?,
  ~name: string=?,
  ~onChange: ReactEvent.Form.t => unit=?,
  ~placeholder: string=?,
  ~required: bool=?,
  ~rows: int=?,
  ~rowsMax: int=?,
  ~select: bool=?,
  ~\"SelectProps": Select.props=?,
  ~size: size=?,
  ~\"type": HtmlInput.\"type"=?,
  ~value: 'value=?,
  ~variant: variant=?,
  // FormControl props
  ~children: React.element=?,
  ~component: React.component<'componentProps>=?,
  ~error: bool=?,
  ~fullWidth: bool=?,
  ~hiddenLabel: bool=?,
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

@module("@material-ui/core/TextField")
external make: React.component<props> = "default";