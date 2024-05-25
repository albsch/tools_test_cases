-module(eqwater_sound_5).
-compile([nowarn_export_all, export_all]).

-spec union_trick(A, A | {B}) -> B.
union_trick(_, {B}) -> B.
