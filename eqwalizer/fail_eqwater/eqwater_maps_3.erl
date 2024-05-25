-module(eqwater_maps_3).
-compile([nowarn_export_all, export_all]).



-spec map_occ_07_neg
    (#{a := integer()} | #{c := integer()})
    -> #{b := integer()}.
map_occ_07_neg(#{a := _}) -> #{b => 0};
map_occ_07_neg(M) -> M.
