type expect<'a>;
type testCallback = (. unit) => unit;

@val
external test: (string, testCallback) => unit = "test";
@val
external expect: 'a => expect<'a> = "expect";
@send
external toBe: (expect<'a>, 'a) => unit = "toBe";
@send
external toEqual: (expect<'a>, 'a) => unit = "toEqual";