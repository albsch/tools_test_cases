-module(eqwater_65).
-compile([nowarn_export_all, export_all]).



-spec occ33
(true | false | 'maybe') ->
  boolean() | undefined.
occ33(X) when
  not is_boolean(X) -> undefined;
occ33(B) -> B.
