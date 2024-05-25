-module(eqwater_aliases_1).
-compile([nowarn_export_all, export_all]).



-type occ01_in() :: a | b.
-type occ01_out() :: b.
-spec occ01 (occ01_in()) -> occ01_out().
occ01(Arg) ->
    case Arg of
        a -> b;
        B -> B
    end.
