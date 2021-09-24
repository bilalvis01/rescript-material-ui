type expect<'a>;
type testCallback = (. unit) => unit;
type describeCallback = (. unit) => unit;

@val
external describe: (string, describeCallback) => unit = "describe";
@val
external test: (string, testCallback) => unit = "test";
@val
external expect: 'a => expect<'a> = "expect";
@send
external toBe: (expect<'a>, 'a) => unit = "toBe";
@send
external toEqual: (expect<'a>, 'a) => unit = "toEqual";
@send
external toMatchSnapshot: (expect<'a>, unit) => unit = "toMatchSnapshot";