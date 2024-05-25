-module(eqwater_aliases_4).
-compile([nowarn_export_all, export_all]).



-type occ02_in() :: a | {b, integer()}.
-type occ02_out() :: integer().
-spec occ02_cl
    (occ02_in()) -> occ02_out().
occ02_cl(a) -> 0;
occ02_cl({_, I}) -> I.
