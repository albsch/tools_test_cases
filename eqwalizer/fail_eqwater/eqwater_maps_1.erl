-module(eqwater_maps_1).
-compile([nowarn_export_all, export_all]).



-spec map_occ_04_neg(#{a => term(), b => integer()})
    -> #{a := integer(), b := integer()}.
map_occ_04_neg(M = #{a := I}) when is_integer(I) -> M;
map_occ_04_neg(M) -> M#{a => 0}.
