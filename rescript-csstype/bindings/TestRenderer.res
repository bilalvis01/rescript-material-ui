type instance;

@module("react-test-renderer")
external create: React.element => instance = "create";

@send
external toJSON: (instance, unit) => string = "toJSON";