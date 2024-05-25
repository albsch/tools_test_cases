-module(eqwater_maps_3).
-compile([nowarn_export_all, export_all]).



-spec map_occ_03(#{a => term(), b => integer()})
    -> #{a := integer(), b => integer()}.
map_occ_03(M = #{a := I}) when is_integer(I) -> M;
map_occ_03(M) -> M#{a => 0}.
