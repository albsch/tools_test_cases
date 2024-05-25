-module(eqwater_aliases_3).
-compile([nowarn_export_all, export_all]).



-type occ02_in() :: a | {b, integer()}.
-type occ02_out() :: integer().
-spec occ02
(occ02_in()) -> occ02_out().
occ02(Arg) ->
    case Arg of
        a -> 0;
        {_, I} -> I
    end.
