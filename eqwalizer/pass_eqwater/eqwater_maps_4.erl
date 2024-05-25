-module(eqwater_maps_4).
-compile([nowarn_export_all, export_all]).



-spec map_occ_05(#{a => integer(), b => integer()})
    -> #{a := integer(), b := integer()}.
map_occ_05(M = #{a := _, b := _}) -> M;
map_occ_05(M) -> M#{a => 0, b => 0}.
