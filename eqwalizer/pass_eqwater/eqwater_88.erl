-module(eqwater_88).
-compile([nowarn_export_all, export_all]).



-type t10() :: {
  atom(),
  a | b,
  undefined | binary()
}.
-spec occ38(t10()) -> binary() | no_binary.
occ38({_, a, undefined}) -> <<>>;
occ38({_, a, B}) -> B.
