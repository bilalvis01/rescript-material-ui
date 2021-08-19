type hover<'declarationBlocks> = [ | #Hover('declarationBlocks) ];

type t<'declarationBlocks> = [
  | hover<'declarationBlocks>
];