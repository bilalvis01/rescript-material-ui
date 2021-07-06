type \"in" = bool;
type mountOnEnter = bool;
type unmountOnExit = bool;
type appear = bool;
type enter = bool;
type addEndListener = (React.element, unit => unit) => unit;
type onEnter = (React.element, bool) => unit;
type onEntering = (React.element, bool) => unit;
type onEntered = (React.element, bool) => unit;
type onExit = React.element => unit;
type onExiting = React.element => unit;
type onExited = React.element => unit;
module Timeout: {
  type t

  let number: float => t;

  @obj
  external make: ( 
    ~enter: float=?,
    ~exit: float=?,
    ~appear: float=?,
    unit
  ) => t = "";
} = {
  @unboxed
  type rec t =
    | Any('a): t;

  let number = v => Any(v);

  @obj
  external make: (
    ~enter: float=?,
    ~exit: float=?,
    ~appear: float=?,
    unit
  ) => t = "";
}